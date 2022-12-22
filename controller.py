import os
import csv
from werkzeug.utils import secure_filename
from config import usuario


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
    separador=';'
    registros = []
    with open('static/uploads/'+name, newline='', mode='r' ) as csvfile:
        csvFile = csv.reader(csvfile, delimiter=separador, quotechar=' ') 
        i=0       
        for row in csvFile:
            i+=1
            #print(i, "->",  row)
            #print(row[0])
            registros.append(row)
        return registros

def insertarRegistrosSinCat (con, qry, registros ):
    cur = con.cursor()
    i=0   
    for item in registros:       
        i+=1
        print ( i, "---", item ) 
        fecha = item[0]
        array = fecha.split("/")
        #Formato CSV MES/DIA/AÑO
        fechaSql = array[2] + "-" + array[0] + "-" + array[1]
        #print("fechaSql", fechaSql)
        #FECHA   RANGO(1)    DESCRIPCION(2)  LINK(3)
        val = (fechaSql, item[1], item[2], item[3] )        
        cur.execute(qry, val)
    con.commit()
    print("🚀🚀🚀 Registros insertados EN TABLA SIN CATEGORÍA 🚀🚀🚀")


def insertar_registros_IDP (con, qry, registros ):
    cur = con.cursor()
    i=0   
    for item in registros:       
        i+=1
        print ( i, "---", item )         
        val = ( item[0], item[1], item[2], item[3], item[4], item[5], item[6], item[7], usuario )        
        cur.execute(qry, val)
    con.commit()
    print("🚀🚀🚀 Registros insertados EN TABLA SIN CATEGORÍA 🚀🚀🚀")




    


