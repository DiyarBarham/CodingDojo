from flask import Flask, render_template
app = Flask(__name__)
@app.route('/')
def checkboard():
    return render_template('index.html', width=8, height=8)
@app.route('/<x>')
def chh(x):
    return render_template('index.html', width=8, height=int(x))
@app.route('/<x>/<y>')
def chhd(x, y):
    return render_template('index.html', width=int(x), height=int(y))
if __name__ == "__main__":
    app.run(debug=True)
