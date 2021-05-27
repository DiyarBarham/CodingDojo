from django.shortcuts import render, redirect, HttpResponse
from .models import User, Messages, Comments
from django.contrib import messages
import bcrypt

# Create your views here.
def index(request):
    if 'user' in request.session:
        return redirect('/welcome')
    return render(request, 'index.html')
def login(request):
    user = User.objects.filter(email=request.POST['email'])
    if user:
        logged_user = user[0]
        if bcrypt.checkpw(request.POST['passwd'].encode(), logged_user.password.encode()):
            request.session['user'] = logged_user.email
            return redirect('/welcome')
    return redirect('/')

def register(request):
    errors = User.objects.basic_validator(request.POST)
    # check if the errors dictionary has anything in it
    if len(errors) > 0:
        # if the errors dictionary contains anything, loop through each key-value pair and make a flash messagecopy
        for key, value in errors.items():
            messages.error(request, value)
        # redirect the user back to the form to fix the errors
        return redirect('/')
    password = request.POST['passwd']
    pw_hash = bcrypt.hashpw(password.encode(), bcrypt.gensalt()).decode()
    User.objects.create(firstname=request.POST['firstname'],lastname= request.POST['lastname'],  password=pw_hash, address = request.POST['address'], email = request.POST['email'])
    request.session['user'] = request.POST['email']
    messages.success(request, "User successfully created")
    return redirect('/welcome')
def welcome(request):
    if 'user' not in request.session:
        return redirect('/')
    user = User.objects.filter(email=request.session['user'])
    context ={
        'loggeduser': user[0],
        'comments': Comments.objects.all(),
        'posts': Messages.objects.all()

    }
    return render(request, 'welcome.html', context)
def logout(request):
    if 'user' in request.session:
        request.session.clear()
    return redirect('/')
def post(request):
    Messages.objects.create(message=request.POST['postmsgbox'], user=User.objects.get(id=request.POST['userid']))
    return redirect('/welcome')
def comment(request):
    Comments.objects.create(comment=request.POST['ncomment'], usercomment=User.objects.get(id=request.POST['userid']), message=Messages.objects.get(id=request.POST['postid']))
    return redirect('/welcome')