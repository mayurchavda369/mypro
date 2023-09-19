from django.urls import path
from . import views

urlpatterns = [
    path('', views.sell_home,name='sell_home'),
    path('seller_register/', views.seller_register,name='seller_register'),
    path('seller_otp/', views.seller_otp,name='seller_otp'),
    path('seller_login/', views.seller_login,name='seller_login'),
    path('seller_logout/', views.seller_logout,name='seller_logout'),
    path('seller_profile/', views.seller_profile,name='seller_profile'),
    path('add_product/', views.add_product,name='add_product'),
    path('seller_search/',views.seller_search,name='seller_search'),
    path('sell_contact/',views.sell_contact,name='sell_contact'),
    path('sell_error/',views.sell_error,name='sell_error'),



]