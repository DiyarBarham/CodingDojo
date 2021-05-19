from django.urls import path
from . import views
urlpatterns = [
    path('', views.index),
    path('random', views.rando),
    path('leadboard', views.lead),
    path('enter', views.enter)
]
