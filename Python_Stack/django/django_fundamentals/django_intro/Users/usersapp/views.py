from django.shortcuts import render, redirect
from .models import user
# Create your views here.
def index(request):
    context = {
        "all_the_users": user.objects.all()
    }
    return render(request, 'index.html', context)

def form(request):
    user.objects.create(first_name=request.POST['fname'], last_name=request.POST['lname'], email_address=request.POST['email'], age=request.POST['age'])
    return redirect('/')

def id(request, iduser):
    context = {
        'user': user.objects.get(id=iduser)
    }
    return render(request, 'get.html', context)