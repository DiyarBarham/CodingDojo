from django.shortcuts import render, HttpResponse, redirect
from time import gmtime, strftime
# Create your views here.


def moh(request):

    context = {
        "time": strftime("%Y-%m-%d %H:%M %p", gmtime())
    }
    return render(request, 'index.html', context)
def meth(request):

    if request.method == "GET":

        print("a GET request is being made to this route")
        return render(request, "index.html")
    if request.method == "POST":
        print("a POST request is being made to this route")
        return redirect("/")