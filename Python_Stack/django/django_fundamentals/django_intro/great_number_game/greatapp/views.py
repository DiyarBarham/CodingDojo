from django.shortcuts import render, redirect
import random
# Create your views here.
names=[]
def index(request):

    if 'num' not in request.session:
        request.session['num'] = random.randint(1, 100)

    if 'attempt' not in request.session:
        request.session['attempt'] = 1
    else:
        request.session['attempt'] += 1

    if 'numb' in request.POST.keys() and request.POST['numb']:
        if request.session['attempt'] == 6 and int(request.POST['numb']) != request.session['num']:
            return redirect('/enter')
        if int(request.POST['numb']) == request.session['num']:
            return render(request, 'enter.html')

        if int(request.POST['numb']) < request.session['num']:
            request.session['text']= "Too Low"
        elif int(request.POST['numb'])>request.session['num']:
            request.session['text']= "Too High"
        else:
            request.session['text']=''
    return render(request, 'index.html')
def rando(request):
    for key in list(request.session.keys()):
        # if key != 'names':
        del request.session[key]
    return redirect('/')

def enter(request):
    return render(request, 'loose.html')
def lead(request):
    global names
    names.append(request.POST['name'])
    request.session['names']=names
    return render(request, 'leadboard.html')