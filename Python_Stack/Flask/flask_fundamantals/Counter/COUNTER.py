from flask import Flask, render_template, request, redirect, session
app=Flask(__name__)
app.secret_key = "asd"
@app.route('/')
def mm():
    if 'counter' in session:
        session['counter'] +=1
    else:
        session['counter'] =1

    return render_template('index.html', counter=session['counter'])

@app.route('/destroy_session')
def create_user():
    session.pop('counter')
    return redirect('/')

@app.route('/sh')
def index():
    return render_template("show.html", name=session['name'], loc=session['loc'], lang=session['lang'], comm=session['comm'])

if __name__=="__main__":
    app.run(debug=True)