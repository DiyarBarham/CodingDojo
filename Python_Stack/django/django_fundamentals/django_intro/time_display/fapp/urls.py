from django.urls import path
from . import views
urlpatterns = [
    path('', views.meth),
    path('time_display/', views.meth)
]