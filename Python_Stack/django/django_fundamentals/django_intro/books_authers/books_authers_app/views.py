from django.shortcuts import render, redirect
from .models import Books, Authors
# Create your views here.
def index(request):
    context = {
        'books': Books.objects.all(),
        'authors': Authors.objects.all()

    }
    return render(request,'index.html', context)
def book(request):
    Books.objects.create(title=request.POST['title'], desc=request.POST['Descreption'])
    return redirect('/')
def bookview(request, number):
    if 'auth' in request.POST:
        x = Books.objects.get(id=request.POST['hid'])
        x.Auther.add(Authors.objects.get(name=request.POST['auth']))
    context = {
        'books': Books.objects.get(id=number),
        'authors': Authors.objects.filter(book=number),
        'allauthors': Authors.objects.all()

    }
    return render(request, 'view_book.html', context)

def authors(request):
    context = {
        'books': Books.objects.all(),
        'authors': Authors.objects.all()

    }
    return render(request, 'authors.html', context)
def author(request):
    Authors.objects.create(name=request.POST['name'], notes=request.POST['notes'])
    return redirect('/authors')
def authorview(request, number):
    if 'book' in request.POST:
        x = Authors.objects.get(id=request.POST['hid'])
        x.book.add(Books.objects.get(title=request.POST['book']))
    context = {
        'books': Books.objects.filter(Auther=number),
        'authors': Authors.objects.get(id=number),
        'allbooks': Books.objects.all()

    }
    return render(request, 'view_author.html', context)
