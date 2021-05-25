from django.shortcuts import render, redirect
from .models import Show
# Create your views here.
def index(request):
    return redirect('/shows')
def show(request):
    context = {
        'shows': Show.objects.all()
    }
    return render(request, "index.html", context)
def new(request):
    return render(request, 'new.html')
def newrender(request):
    title=  request.POST['title']
    Network=  request.POST['network']
    release_date = request.POST['release_date']
    desc= request.POST['desc']
    data = Show.objects.create(title=title,Network=Network,release_date=release_date,desc=desc)
    return redirect(f'/shows/{data.id}')
def view(request, data):
    context = {
        'show': Show.objects.get(id=data)
    }
    return render(request, 'show.html', context)
def edit(request, data):
    context = {
        'show': Show.objects.get(id=data)
    }
    return render(request, 'update.html', context)
def editrender(request):
    title = request.POST['title']
    Network = request.POST['Network']
    release_date = request.POST['release_date']
    desc = request.POST['desc']
    Show.objects.update(title=title, Network=Network, release_date=release_date, desc=desc)
    return redirect("/shows")
def delete(request, data):
    c = Show.objects.get(id=data)
    c.delete()
    return redirect('/shows')