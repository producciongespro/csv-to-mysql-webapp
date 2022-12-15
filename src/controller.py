import os
import csv
from werkzeug.utils import secure_filename


ALLOWED_EXTENSIONS = set (['csv', 'xlsx', 'pdf' ])
DELIMITER=','


def allowed_file(file):
    file = file.split(".")
    if file[1] in ALLOWED_EXTENSIONS:
        return True
    return False


def upload_file (file, folder ):      
    filename = secure_filename(file.filename)         
    if file and  allowed_file(filename):        
        file.save(os.path.join( folder, filename ))
        return os.path.join( folder, filename )
    return False

def read_csv (name):
    print("name", name)
    with open('static/uploads/'+name, newline='') as csvfile:
        spamreader = csv.reader(csvfile, delimiter=';', quotechar='|')
        for row in spamreader:
            #print('->'.join(row))
            print(row[3]  )








    


