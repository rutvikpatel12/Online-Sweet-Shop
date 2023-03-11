import random

from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.shortcuts import redirect, render , HttpResponse
from django.http import JsonResponse

from sweetapp.models import Cart, Order , OrderItem , Product , Profile
from django.contrib.auth.models import User

from django.core.mail import EmailMessage
from django.core.mail import send_mail
from django.contrib import messages
from django.conf import settings


@login_required(login_url='loginpage')
def index(request):
    rawcart = Cart.objects.filter(user=request.user)
    for item in rawcart:
        if item.product_qty > item.product.quantity:
            Cart.objects.delete(id=item.id)
    
    cartitems = Cart.objects.filter(user=request.user)
    total_price = 0;
    for item in cartitems:
        total_price = total_price + item.product.selling_price * item.product_qty
     
    userprofile = Profile.objects.filter(user=request.user.id).first()
       
    context = {'cartitems':cartitems, 'total_price':total_price, 'userprofile':userprofile}
    return render(request,"sweetapp/checkout.html",context)


@login_required(login_url='loginpage')
def placeorder(request):
    if request.method == 'POST':
        
        currentuser = User.objects.filter(id=request.user.id).first()
        email=request.POST.get('email')
        
        if not currentuser.first_name:
            currentuser.first_name = request.POST.get('fname')
            currentuser.last_name = request.POST.get('lname')
            currentuser.save()
            
        if not Profile.objects.filter(user=request.user):
            userprofile = Profile()
            userprofile.user = request.user
            userprofile.phone = request.POST.get('phone')
            userprofile.address = request.POST.get('address')
            userprofile.city = request.POST.get('city')
            userprofile.state = request.POST.get('state')
            userprofile.country = request.POST.get('country')
            userprofile.pincode = request.POST.get('pincode')
            userprofile.save()
            
        pf=Profile()
        pf.user=request.user
        pf.fname = request.POST.get('fname')
        pf.lname = request.POST.get('lname')
        
        neworder = Order()
        neworder.user = request.user
        neworder.fname = request.POST.get('fname')
        neworder.lname = request.POST.get('lname')
        neworder.email = request.POST.get('email')
        neworder.phone = request.POST.get('phone')
        neworder.address = request.POST.get('address')
        neworder.city = request.POST.get('city')
        neworder.state = request.POST.get('state')
        neworder.country = request.POST.get('country')
        neworder.pincode = request.POST.get('pincode')
        
        neworder.payment_mode = request.POST.get('payment_mode')
        
        cart = Cart.objects.filter(user=request.user)
        cart_total_price = 0
        for item in cart:
            cart_total_price = cart_total_price + item.product.selling_price * item.product_qty
        
        neworder.total_price = cart_total_price        
        trackno = 'sh'+str(random.randint(1111111,9999999))
        while Order.objects.filter(tracking_no=trackno) is None:
            trackno = 'sh'+str(random.randint(1111111,9999999))

        neworder.tracking_no = trackno
        neworder.save()
        
        neworderitems = Cart.objects.filter(user=request.user)
        for item in neworderitems:
            OrderItem.objects.create(
                order = neworder,
                product = item.product,
                price = item.product.selling_price,
                quantity = item.product_qty
            )
        
            # To decrease the product quantity from available stock
            orderproduct = Product.objects.filter(id=item.product_id).first()
            orderproduct.quantity = orderproduct.quantity - item.product_qty
            orderproduct.save()
            
        # To clear user's Cart
        Cart.objects.filter(user=request.user).delete()
        
        payMode = request.POST.get('payment_mode')
        if (payMode == "Paid by Paypal"):
            return JsonResponse({'status':"Your order has been placed Successfully"})
        else:
            messages.success(request, "Your Order has been placed successfully")
            
    send_mail(
        'Placed Order',
        "Your Order Placed Successfully...",
        settings.EMAIL_HOST_USER,
        [email],
        fail_silently=False,
    )
    return redirect('/')