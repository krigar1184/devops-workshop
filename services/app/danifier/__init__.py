from flask import Flask, request, render_template, redirect, url_for


app = Flask(__name__)


@app.route('/', methods=['GET', 'POST'])
def main():
    text = ''

    if request.method == 'POST':
        text = request.form['text']

    return render_template('main.html', result=text)
