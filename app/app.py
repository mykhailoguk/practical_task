#!flask/bin/python
from flask import Flask, url_for
app = Flask(__name__)

@app.route('/')
def api_root():
    return 'Welcome'

@app.route('/parse/<filename>')
def api_article(filename):
    return 'File to parse: ' + filename

if __name__ == '__main__':
    app.run(host='0.0.0.0')