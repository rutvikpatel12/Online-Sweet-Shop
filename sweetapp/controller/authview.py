from django.contrib.auth import authenticate , login , logout
from django.shortcuts import render , redirect
from django.contrib import messages

from sweetapp.forms import CustomUserForm

# create your views here.

def register(request):
    form = CustomUserForm()
    if request.method == 'POST':
        form = CustomUserForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request,"Registered Successfully !!")
            return redirect('/login')
    context = {'form' : form}
    return render(request,"sweetapp/auth/register.html", context)

def loginpage(request):
    if request.user.is_authenticated:
        messages.warning(request,"You are already logged in")
        return redirect('/')
    else:
        if request.method == 'POST':
            name = request.POST.get('username')
            pswd = request.POST.get('password')
            
            user = authenticate(request, username=name, password=pswd)
            
            if user is not None:
                login(request,user)
                messages.success(request,"Login Successfully")
                return redirect("/")
            else:
                messages.error(request,"Invalid UserName and Password")
                return redirect('/login')
        return render(request,"sweetapp/auth/login.html")
    
def logoutpage(request):
    if request.user.is_authenticated:
        logout(request)
        messages.success(request, "Logged out Successfully")
    return redirect("/")