from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

from sweetapp.controller import authview,cart,wishlist,checkout,order

urlpatterns=[
    path('',views.home,name='home'),
    path('collections/',views.collections,name="collections"),
    path('collections/<str:slug>',views.collectionsview,name="collectionsview"),
    path('collections/<str:cate_slug>/<str:prod_slug>',views.productview, name="productview"),
    
    path('product-list',views.productlistAjax),
    path('searchproduct',views.searchproduct,name="searchproduct"),
    
    path('register/', authview.register, name="register"),
    path('login/', authview.loginpage, name="loginpage"),
    path('logout/', authview.logoutpage, name="logout"),
    path('about/',views.about,name="about"),
    path('contact/',views.contact,name="contact"),
    path('inquiry/',views.inquiry,name="inquiry"),
    path('dashboard/',views.dashboard,name="dashboard"),
    path('profile/',views.profile,name="profile"),
    path('addresslist/',views.addresslist,name="addresslist"),
    path('addaddresslist/',views.addaddresslist,name="addaddresslist"),
    path('changepassword/',views.changepassword,name="changepassword"),
    
    #PASSWORD CHANGE
    path('password_change/done/',auth_views.PasswordChangeDoneView.as_view(template_name='sweetapp/auth/password_change_done.html'),name='password_change_done'),
    
    path('password_change/',auth_views.PasswordChangeView.as_view(template_name='sweetapp/auth/password_change.html'),name='password_change'),
    
    path('password_reset/done/',auth_views.PasswordResetCompleteView.as_view(template_name='sweetapp/auth/password_reset_done.html'),name='password_reset_done'),
    
    path('reset/<uidb64>/<token>/',auth_views.PasswordResetConfirmView.as_view(),name='password_reset_confirm'),
    
    path('password_reset/',auth_views.PasswordResetView.as_view(),name='password_reset'),
    
    path('reset/done/',auth_views.PasswordResetCompleteView.as_view(template_name="sweetapp/auth/password_reset_complete.html"),name='password_reset_complete'),
    
    path('add-to-cart',cart.addtocart,name="addtocart"),
    path('cart/', cart.viewcart,name="cart"),
    path('update-cart',cart.updatecart,name="updatecart"),
    path('delete-cart-item', cart.deletecartitem,name="deletecartitem"),
    
    path('wishlist', wishlist.index, name="wishlist"),
    path('add-to-wishlist', wishlist.addtowishlist, name="addtowishlist"),
    path('delete-wishlist-item', wishlist.deletewishlistitem,name="deletewishlistitem"),
    
    path('checkout/',checkout.index,name="checkout"),
    path('place-order',checkout.placeorder,name="placeorder"),
    
    path('my-orders',order.index,name="myorders"),
    path('view-order/<str:t_no>',order.vieworder,name="orderview"),
    
    path('bill/',views.download_pdf,name="bills"),
    
]