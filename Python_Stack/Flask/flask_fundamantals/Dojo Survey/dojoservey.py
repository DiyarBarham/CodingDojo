from flask import Flask, render_template, request, redirect, session
app=Flask(__name__)

@app.route('/')
def mm():
    return render_template('index.html')

@app.route('/result', methods=['POST'])
def create_user():
    print("Got Post Info")
    print(request.form)
    session['name'] = request.form['name']
    session['loc'] = request.form['loc']
    session['lang'] = request.form['lang']
    session['comm'] = request.form['comm']
    return redirect('/sh')
@app.route('/sh')
def index():
    return render_template("show.html", name=session['name'], loc=session['loc'], lang=session['lang'], comm=session['comm'])

if __name__=="__main__":   # Ensure this file is being run directly and not from a different module
    app.run(debug=True)    # Run the app in debug mode.