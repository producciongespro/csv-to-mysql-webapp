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
    print (file)
    filename = secure_filename(file.filename)     
    print ("filename", filename)
    if file and  allowed_file(filename):        
        file.save(os.path.join( folder, filename ))
        return os.path.join( folder, filename )
    return False

def read_file (request, file ):
    records = []
    for line in file:
        string = str(line)
        record = string.split("'")        
        record = record[1]
        campo1 = record.split(";")[1]
        records.append(campo1)
    return records








    


