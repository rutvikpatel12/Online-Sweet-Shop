from django.shortcuts import render , redirect ,HttpResponse
from django.contrib import messages
from .models import *
from django.http import JsonResponse
from django.contrib.auth import update_session_auth_hash
from django.contrib.auth.forms import PasswordChangeForm
from django.core.mail import EmailMessage
from django.core.mail import send_mail
from django.conf import settings
from sweetapp.forms import CustomUserForm
from .forms import UserCreationForm,UserUpdate
from django.contrib.auth.models import User

# Generate PDF

from django.http import FileResponse
import io
from reportlab.pdfgen import canvas
from reportlab.lib.units import inch
from reportlab.lib.pagesizes import letter



# Create your views here.

# Generate a PDF File Venue List

def download_pdf(request):
    # Create Bytestream buffer 
    buf = io.BytesIO()
    # Create a Canvas
    c = canvas.Canvas(buf,pagesize=letter)
    textob=c.beginText()
    textob.setTextOrigin(inch,inch)
    textob.setFont("Helvetica",14)
    
    # Add some Lines of text
    # lines = [
    #     "This is line 1",
    #     "This is line 2",
    #     "This is line 3",
    # ]

    bills=Order.objects.all()
    # Create Blank list
    
    lines=[]
    for bill in bills:
        lines.append(bill.fname)
        lines.append(bill.lname)
        lines.append(bill.email)
        lines.append(bill.address)
        # lines.append(bill.total_price)
        lines.append(" ----------------- ")
        
        
    # Loop
    for line in lines:
        textob.textLine(line)
        
    # Finish Up
    c.drawText(textob)
    c.showPage()
    c.save()
    buf.seek(0)
    
    # Return Something
    return FileResponse(buf, as_attachment=True,filename='bill.pdf')

def home(request):
    trending_products = Product.objects.filter(trending=1)
    context = {'trending_products':trending_products}
    return render(request,"sweetapp/index.html",context)

def collections(request):
    category = Category.objects.filter(status=0)
    context = {'category':category}
    return render(request,"sweetapp/collections.html",context)

def collectionsview(request,slug):
    if (Category.objects.filter(slug=slug,status=0)):
        products = Product.objects.filter(category__slug=slug)
        category = Category.objects.filter(slug=slug).first()
        context = {'products' : products , 'category' : category}
        return render(request,"sweetapp/products/index.html",context)
    else:
        messages.warning(request,"No category found")
        return redirect('collections')
    
def productview(request,cate_slug,prod_slug):
    if(Category.objects.filter(slug=cate_slug,status=0)):
        if(Product.objects.filter(slug=prod_slug,status=0)):
            products = Product.objects.filter(slug=prod_slug,status=0).first
            context = {'products' : products}
        else:
            messages.error(request, "No such Product Found")
            return redirect('collections')
    else:
        messages.error(request, "No such Category Found")
        return redirect('collections')
    return render(request,"sweetapp/products/view.html" , context)

def about(request):
    return render(request, "sweetapp/about.html")

def contact(request):
    return render(request,'sweetapp/contact.html')

def inquiry(request):
    if request.method=="POST":
        fname=request.POST.get('fname')
        lname=request.POST.get('lname')
        email=request.POST.get('email')
        contact=request.POST.get('contact')
        message=request.POST.get('message')
        data=Inquiry(firstname=fname,lastname=lname,email=email,contact=contact,message=message)
        data.save()
        
        send_mail(
            'Inquiry',
            "Your Inquiry Message Send Successfully",
            settings.EMAIL_HOST_USER,
            [email],
            fail_silently=False,
        )
    return render(request,'sweetapp/contact.html')

def productlistAjax(request):
    products = Product.objects.filter(status=0).values_list('name',flat=True)
    productList = list(products)
    
    return JsonResponse(productList,safe=False)

def searchproduct(request):
    if request.method == 'POST':
        searchedterm = request.POST.get('productsearch')
        if searchedterm == "":
            return redirect(request.META.get('HTTP_REFERER'))
        else:
            product = Product.objects.filter(name__contains=searchedterm).first()
            
            if product:
                return redirect('collections/'+product.category.slug+'/'+product.slug)
            else:
                messages.info(request,"No product matched your search")
                return redirect(request.META.get('HTTP_REFERER'))
    return redirect(request.META.get('HTTP_REFERER'))

def dashboard(request):
    orders=Order.objects.filter(user=request.user).count()
    wishlist=Wishlist.objects.filter(user=request.user).count()
    cart=Cart.objects.filter(user=request.user).count()
    
    return render(request,"sweetapp/auth/dashboard.html",
            {
                'orders' : orders,
                'wishlist' : wishlist,
                'cart' : cart,
            }
        )

def addresslist(request):
    orderadd = Profile.objects.filter(user=request.user).first()
    return render(request,"sweetapp/auth/addressList.html",{'orderadd':orderadd})

def addaddresslist(request):
    if request.method=="POST":
        if not Profile.objects.filter(user=request.user):
            useraddress = Profile()
            useraddress.address=request.POST.get('address')
            useraddress.save()
            messages.success(request, "Your Address Added successfully")
        return redirect('addresslist')
    return render(request,"sweetapp/auth/addaddress.html")

def changepassword(request):
    if request.method=="POST":
        current = request.POST["cpwd"]
        new_pas = request.POST["npwd"]
        
        user = User.objects.get(id=request.user.id)
        
        check=user.check_password(current)
        #check password
        # print(check)
        
        if check==True:
            user.set_password(new_pas)
            user.save()
            # authenticate(username=un,password=pwd)
            messages.success(request,"Password Change Successfully")
        else:
            messages.success(request,"Incurrect Current Password")
    return render(request,"sweetapp/auth/changepassword.html")

def profile(request):
    if request.method=="POST":
        # print(request.POST)
        fn=request.POST["fname"]
        ln=request.POST["lname"]
        un=request.POST["uname"]
        email=request.POST["email"]
        
        user=User.objects.get(id=request.user.id)
        user.first_name=fn
        user.last_name=ln
        user.username=un
        user.email=email
        user.save()
        messages.success(request,"Profile Updated Successfully")
    
    return render(request,"sweetapp/auth/profile.html")

