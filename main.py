import os
from dotenv import load_dotenv
from flask import Flask, render_template, request
from flask_socketio import SocketIO, send
import time

app = Flask(__name__)
app.config['SECRET_KEY'] = "secreta"
socketio = SocketIO(app)


@app.route("/")
def home ():    
    return render_template(  "index.html")


@socketio.on('message')
def handleMEssage(msg):
    print ("Message", msg)
    resend()

def resend ():
    send("hola desde el server")
    time.sleep(2)
    send ("Hola de nuevo")
    time.sleep(2)
    send ("Nos vemos...")





if __name__ == "__main__":
    socketio.run(app)     