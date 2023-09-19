from django.urls import path
from . import views

urlpatterns = [
    path('', views.home,name='home'),
    path('register/', views.register,name='register'),
    path('otp/', views.otp,name='otp'),
    path('login/', views.login, name='login'),
    path('logout/', views.logout, name='logout'),
    path('profile/', views.profile, name='profile'),
    path('shop/',views.shop,name='shop'),
    path('singleproduct/<int:pk>',views.singleproduct,name='singleproduct'),
    path('addcart/<int:pk>',views.addcart,name='addcart'),
    path('showcart/',views.showcart,name='showcart'),
    path('update_cart',views.update_cart,name='update_cart'),
    path('remove_cart/<int:pk>',views.remove_cart,name='remove_cart'),
    path('paymenthandler/', views.paymenthandler, name='paymenthandler'),
    path('search/',views.search,name='search'),
    path('forget/',views.forget,name='forget'),
    path('singlenews/',views.singlenews,name='singlenews'),
    path('contact/',views.contact,name="contact"),
    path('error/',views.error,name="error"),
 

]


