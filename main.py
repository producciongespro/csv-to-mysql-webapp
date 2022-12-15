
import os
from dotenv import load_dotenv
from src.controller import *
from flask import Flask, render_template, request

load_dotenv()
app = Flask(__name__)
app.config['UPLOAD_FOLDER']= os.getenv('UPLOAD_FOLDER')
app.config['DATA_STUDENTS']= os.getenv('DATA_STUDENTS')
app.config['FILE_NAME']= os.getenv('FILE_NAME')


@app.route("/")
def home ():    
    return render_template(  "home.html")


@app.route('/conversor', methods = ['POST'])
def receive_file():
    file = request.files.get(app.config['FILE_NAME'])
    #print("request.files >>>>>>--------", file.filename )
    if file.filename == "":
        return render_template(  "not-valid.html" )
    else:                   
        res = upload_file ( file, app.config['UPLOAD_FOLDER'] ) 
        print (res)          
        return render_template(  "finish.html" )





if __name__ == "__main__":
    app.run( debug=True )