import random
from django.shortcuts import render,redirect
from .models import *
from django.conf import settings
from django.core.mail import send_mail
from django.contrib.auth.hashers import make_password,check_password
from django.db.models import Q




# Create your views here.
def sell_home(request):
    return render(request,'seller_index.html')

def seller_register(request):
    if request.method =="POST":
        try:
            user_data = Seller_User.objects.get( email=request.POST['email'])
            return render(request,'seller_register.html',{'msg':'User already Exist'})
        except:
        
            if request.POST['pwd'] == request.POST['cpwd']:
                global fotp
                fotp = random.randint(1000,9999)
                subject = 'Your OTP Verfication'
                message = f"Hi your OTP is {fotp}, thank you for choosing us"
                email_from = settings.EMAIL_HOST_USER
                recipient_list = [ request.POST['email'], ]
                send_mail( subject, message, email_from, recipient_list )
                global temp
                # User.objects.create(
                temp= {
                "name":request.POST["name"],
                "email":request.POST["email"],
                "password":request.POST["pwd"]
                }
                return render(request,'seller_otp.html')
            
            else:
                return render(request,'seller_register.html',{'msg':'password and confirm password not match'})
    else:    
        return render (request,'seller_register.html')
    
def seller_otp(request):
    if request.method=="POST":
        if fotp == int(request.POST['otp']):
            Seller_User.objects.create(
                name=temp["name"],
                email=temp["email"],
                password=make_password(temp["password"])
            )
            return render(request,'seller_register.html',{'msg':'Regestration Successfully'})
        else:
            return render(request,'seller_otp.html',{'msg':'OTP not match'})
    else :

        return redirect ('seller_login.html')

def seller_login(request):
    if request.method == "POST":
     try:
        user_data = Seller_User.objects.get( email = request.POST["email"])
        #if user_data.password == request.POST["pwd"]:
        if check_password(request.POST['pwd'],user_data.password):
            request.session["email"]=request.POST["email"]
            session_data = Seller_User.objects.get( email = request.session["email"])
            return render(request,'seller_index.html',{"session_data":session_data})
        else:
            
            return render(request,'seller_login.html',{'msg':'password not match'})
     except:
            return render(request,'seller_login.html',{'msg':'user not exist'})
    else:
            return render(request,'seller_login.html')

def seller_logout(request):
    del request.session["email"]
    return render(request,'seller_login.html',{'msg':'logout successfully'})

def seller_profile(request):
    if request.method == "POST":
        session_data = Seller_User.objects.get( email = request.session["email"])
        try:
            image_data=request.FILES["img"]
        except:
            image_data=session_data.propic

        if request.POST['pwd'] and request.POST['cpwd']:

            if check_password(request.POST['pwd'],session_data.password):

                if request.POST['pwd'] and request.POST['cpwd']:
                    session_data.name=request.POST["name"]
                    session_data.password=make_password(request.POST["cpwd"])
                    session_data.propic=image_data
                    session_data.save()
                    return render(request,'seller_profile.html',{"session_data":session_data, "msg":'Updated successfully'})

                 
                else:
                    return render(request,'seller_profile.html',{"session_data":session_data, "msg":'New password and confirm new password not match'})

            else:
                return render(request,'seller_profile.html',{"session_data":session_data, "msg":'old password not match'})

            
        else:
            session_data.name=request.POST["name"]
            session_data.propic=image_data
            session_data.save()
        return render(request,'seller_profile.html',{"session_data":session_data, "msg":'Updated successfully'})
    else:
        session_data = Seller_User.objects.get( email = request.session["email"])
        
        return render(request,'seller_profile.html',{"session_data":session_data})

def add_product(request):
    if request.method=="POST":
        session_data = Seller_User.objects.get( email = request.session["email"])

        Product.objects.create(

            ppic=request.FILES["ppic"], 
            pname=request.POST["pname"],
            price=request.POST["price"],
            qty=request.POST["qty"],
            desc=request.POST["desc"],
            seller=session_data
        )
        return render(request,'add_product.html',{'msg':'Product added successfully',"session_data":session_data})
    else:
        session_data = Seller_User.objects.get( email = request.session["email"])
        return render(request,'add_product.html',{"session_data":session_data})
    
def seller_search(request):
  if request.method=="POST":
      data=request.POST["search"]
      all_product=Product.objects.filter(Q(pname__icontains=data)|Q(desc__icontains=data))
      session_data = Seller_User.objects.get( email = request.session["email"])

      return render(request,'shop.html',{'all_product':all_product,"session_data":session_data})

      
  else:
      return redirect('shop')
def sell_contact(request):
    session_data = Seller_User.objects.get( email = request.session["email"])
    return render(request,'sell_contact.html',{"session_data":session_data})

def sell_error(request):
    session_data = Seller_User.objects.get( email = request.session["email"])
    return render(request,'sell_error.html',{"session_data":session_data})


        





# Create your views here.
