from flask import Flask, request
from werkzeug.debug import DebuggedApplication
import os

app = Flask(__name__)
app.wsgi_app = DebuggedApplication(app.wsgi_app, True)
app.config['SECRET_KEY'] = os.urandom(32)
calculate = {"+" : lambda x, y: x + y, 
             "-" : lambda x, y: x - y,
             "*" : lambda x, y: x * y,
             "/" : lambda x, y: x / y}

def safe_cast(val, to_type):
    try:
        return to_type(val)
    except (ValueError, TypeError):
        return None

@app.route('/calculator')
def flag():
    number_1 = safe_cast(request.args.get("number_1"), int)
    number_2 = safe_cast(request.args.get("number_2"), int)
    operation = safe_cast(request.args.get("operation"), str)
    if None in (number_1, number_2, operation) or not operation in calculate:
        return "Invalid calculator parameters"
    return "Calculation complete: %s" % calculate[operation](number_1, number_2)

@app.route('/')
def source():
    return "

%s

" % open(__file__).read()

if __name__ == "__main__":
    app.run(debug=True)
