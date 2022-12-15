from config import *

def setup ():
    res = input("Está seguro que desar truncar la tabla `"+tabla+"`???  1/0 " )
    if int(res) == 1:
        cursor = con.cursor()
        qryTruncate = "TRUNCATE TABLE " + tabla
        cursor.execute(qryTruncate)
        print ("Registros eliminados de la tabla de forma correcta")
    else:
        print ("Acción cancelada")

setup()