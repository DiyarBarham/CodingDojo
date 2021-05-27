from django.urls import path

from . import views
urlpatterns = [
    path('', views.index),
    path('login', views.login),
    path('welcome', views.welcome),
    path('register', views.register),
    path('logout', views.logout),
    path('postmessage', views.post),
    path('newcomment', views.comment)
]