import random
import razorpay
from django.shortcuts import render,redirect
from .models import *
from django.conf import settings
from django.core.mail import send_mail
from django.contrib.auth.hashers import make_password,check_password
from seller.models import *
from django.db.models import *
from django.shortcuts import render
from django.conf import settings
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponseBadRequest




# Create your views here.
def home(request):
    return render(request,'index.html')

def register(request):
    if request.method =="POST":
        try:
            user_data = User.objects.get( email=request.POST['email'])
            return render(request,'register.html',{'msg':'User already Exist'})
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
                return render(request,'otp.html')
            
            else:
                return render(request,'register.html',{'msg':'password and confirm password not match'})
    else: 
        return render(request,'register.html')
    
def otp(request):
    if request.method=="POST":
        if fotp == int(request.POST['otp']):
            User.objects.create(
                name=temp["name"],
                email=temp["email"],
                password=make_password(temp["password"])
            )
            return render(request,'register.html')
        else:
            return render(request,'otp.html',{'msg':'OTP not match'})
    else :

        return render(request,'register.html')


def login(request):
    if request.method == "POST":
        try:
            user_data = User.objects.get(email=request.POST["email"])
            if check_password(request.POST["pwd"], user_data.password):
                request.session["email"] = request.POST["email"]
                session_data = User.objects.get(email=request.session["email"])
                return render(request, 'index.html', {"session_data": session_data})
            else:
                return render(request, 'login.html', {'msg': 'Password not match'})
        except User.DoesNotExist:
            return render(request, 'login.html', {'msg': 'User not found. Please register.'})
    else:
        return render(request, 'login.html')

    
def forget(request):
    if request.method == "POST":
        try:
            user_data = User.objects.get( email = request.POST["email"])
         #if user_data.password == request.POST["pwd"]:
            user_data.password=make_password(request.POST["npwd"])
            user_data.save()
           
            return render(request,'login.html',{'msg':'password changed succesfully'})

        except:
            return render(request,'forget.html',{'msg':'user not exist'})
    else:
        return render(request,'forget.html',{'msg':'welcome'})
        

def logout(request):
    try:
        request.session["email"]
        del request.session["email"]
        return render(request,'login.html',{'msg':'logout successfully'})
    except:
        return render(request,'login.html',{'msg':'Please Click on Login'})
        


def profile(request):
    if request.method == "POST":
        session_data = User.objects.get( email = request.session["email"])
        try:
            image_data=request.FILES["img"]
        except:
            image_data=session_data.propic

        if request.POST['opwd'] and request.POST['npwd'] and request.POST['cnpwd']:

            if check_password(request.POST['opwd'],session_data.password):

                if request.POST['npwd'] and request.POST['cnpwd']:
                    session_data.name=request.POST["name"]
                    session_data.password=make_password(request.POST["npwd"])
                    session_data.propic=image_data
                    session_data.save()
                    return render(request,'profile.html',{"session_data":session_data, "msg":'Updated successfully'})

                 
                else:
                    return render(request,'profile.html',{"session_data":session_data, "msg":'New password and confirm new password not match'})

            else:
                return render(request,'profile.html',{"session_data":session_data, "msg":'old password not match'})

            
        else:
            session_data.name=request.POST["name"]
            session_data.propic=image_data
            session_data.save()
        return render(request,'profile.html',{"session_data":session_data, "msg":'Updated successfully'})
    else:
        session_data = User.objects.get( email = request.session["email"])
        
        return render(request,'profile.html',{"session_data":session_data})
    
def shop(request):
    session_data = User.objects.get( email = request.session["email"])
    all_product=Product.objects.all()
    return render(request,'shop.html',{'all_product':all_product,"session_data":session_data})

def singleproduct(request,pk):
    session_data = User.objects.get( email = request.session["email"])
    one_data=Product.objects.get(id=pk)
    return render(request,'singleproduct.html',{"session_data":session_data,'one_data':one_data})

def addcart(request,pk):
 
    session_data = User.objects.get( email = request.session["email"])
    myproduct=Product.objects.get(id=pk)
    try:
        mycart=Cart.objects.get(Q(product=myproduct) & Q(buyer=session_data))
        mycart.qty+=1
        mycart.total=mycart.qty*mycart.product.price
        mycart.save()
    except:

        Cart.objects.create(
            product=myproduct,
            buyer=session_data,
            qty=1,
            total=myproduct.price*1
        )
    return redirect('shop')

def showcart(request):
        try:
            session_data = User.objects.get( email = request.session["email"])
            all_cart=Cart.objects.filter(buyer=session_data)
            final_total=0
            for i in all_cart:
                final_total+=i.total

            return render(request,'cart.html',{'all_cart':all_cart,"session_data":session_data,"final_total":final_total})
        except:
            return redirect('shop')

def update_cart(request):
    if request.method=="POST":
        session_data = User.objects.get( email = request.session["email"])
        
        all_cart=Cart.objects.filter(buyer=session_data)
        all_qty=request.POST.getlist("quantity")
        for i,j in zip(all_cart,all_qty):
            i.qty=int(j)
            i.total=i.qty * i.product.price
            i.save()
        return redirect('showcart')

def remove_cart(request,pk):
    one_data=Cart.objects.get(id=pk)
    one_data.delete()
    return redirect('showcart')

def singlenews(request):
    return render(request,'singlenews.html')

razorpay_client = razorpay.Client(
    auth=(settings.RAZOR_KEY_ID, settings.RAZOR_KEY_SECRET))

@csrf_exempt
def paymenthandler(request):
 
    # only accept POST request.
    if request.method == "POST":
        try:
           
            # get the required parameters from post request.
            payment_id = request.POST.get('razorpay_payment_id', '')
            razorpay_order_id = request.POST.get('razorpay_order_id', '')
            signature = request.POST.get('razorpay_signature', '')
            params_dict = {
                'razorpay_order_id': razorpay_order_id,
                'razorpay_payment_id': payment_id,
                'razorpay_signature': signature
            }
 
            # verify the payment signature.
            result = razorpay_client.utility.verify_payment_signature(
                params_dict)
            if result is not None:
                amount = 20000  # Rs. 200
                try:
 
                    # capture the payemt
                    razorpay_client.payment.capture(payment_id, amount)
 
                    # render success page on successful caputre of payment
                    return render(request, 'paymentsuccess.html')
                except:
 
                    # if there is an error while capturing payment.
                    return render(request, 'paymentfail.html')
            else:
 
                # if signature verification fails.
                return render(request, 'paymentfail.html')
        except:
 
            # if we don't find the required parameters in POST data
            return HttpResponseBadRequest()
    else:
       # if other than POST request is made.
        return HttpResponseBadRequest()
    
def search(request):
  if request.method=="POST":
      data=request.POST["search"]
      all_product=Product.objects.filter(Q(pname__icontains=data)|Q(desc__icontains=data))
      session_data = User.objects.get( email = request.session["email"])

      return render(request,'shop.html',{'all_product':all_product,"session_data":session_data})

      
  else:
      return redirect('shop')

    
def contact(request):
    session_data = User.objects.get( email = request.session["email"])
    return render(request,'contact.html',{"session_data":session_data})

def error(request):
    session_data = User.objects.get( email = request.session["email"])
    return render(request,'error.html',{"session_data":session_data})




    



        



