from django.shortcuts import render, redirect

# Create your views here.
def index(request):
    if "count" in request.session:
        request.session['count'] +=1
    else:
        request.session['count']=1
    return render(request, 'index.html')

def destroy(request):
    del request.session['count']
    return redirect('/')

def vw(request):
    request.session['count'] +=1
    return redirect('/')