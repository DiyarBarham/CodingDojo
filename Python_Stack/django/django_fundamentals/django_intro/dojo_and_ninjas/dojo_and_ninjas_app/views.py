from django.shortcuts import render, redirect
from .models import dojo, ninja
# Create your views here.
def index(request):
    context = {
        'dojos': dojo.objects.all(),
        'ninjas': ninja.objects.all(),
    }
    return render(request, 'index.html', context)

def ninjas(request):
    ninja.objects.create(dojo_id=dojo.objects.get(name= request.POST['Dojo']), first_name=request.POST['fname'], last_name=request.POST['lname'])
    return redirect('/')
def dojos(request):
    dojo.objects.create(name=request.POST['name'], city=request.POST['city'], state=request.POST['state'], desc=request.POST['desc'])
    return redirect('/')