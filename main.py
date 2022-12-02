import os
from dotenv import load_dotenv
from flask import Flask, render_template, request
from flask_socketio import SocketIO, send

app = Flask(__name__)


@app.route("/")
def home ():    
    return render_template(  "index.html")





if __name__ == "__main__":
    app.run( debug=True )