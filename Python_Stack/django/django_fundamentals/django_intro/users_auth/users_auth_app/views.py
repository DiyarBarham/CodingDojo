from django.shortcuts import render, redirect, HttpResponse
from .models import User
# Create your views here.
def index(request):
    if 'user' in request.session:
        return redirect('/welcome')
    return render(request, 'index.html')
def login(request):
    username = request.POST['username']
    password = request.POST['passwd']
    for i in User.objects.all():
        if i.username == username and i.password == password:
            request.session['user']={
                'username': username,
                'password': password
            }
            return redirect('/welcome')
    return redirect('/')

def register(request):
    username = request.POST['username']
    password = request.POST['passwd']
    address = request.POST['address']
    email = request.POST['email']
    request.session['user'] = {
        'username': request.POST['username'],
        'password': request.POST['passwd'],
    }
    User.objects.create(username=username, password=password, address=address, email=email)
    return redirect('/welcome')
def welcome(request):
    if 'user' not in request.session:
        return redirect('/')
    username = request.session['user']['username']
    return HttpResponse('Welcome')
def logout(request):
    if request.session['user']:
        request.session.clear()
    return redirect('/')