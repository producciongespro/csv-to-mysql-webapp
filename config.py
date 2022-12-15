import mysql.connector

nombreCSV = "info-subcateg-pruebas.csv"
idCategoria = 1
separador=','
db = "calendar_calendario2022"
tabla = "informacion_subcategorias"


con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database= db
    )

#tABLA SIN CATEGORIAS (EVENTOS)
#qry = "INSERT INTO " +  tabla + " (fecha, rango, descripcion, link ) VALUES (%s, %s, %s, %s)"

#tABLA CON CATEGORIA (OTRAS_FECHAS)
#qry = "INSERT INTO " +  tabla + " (fecha, rango, descripcion, idCategoria, link ) VALUES (%s, %s, %s, %s, %s)"

#tABLA CON SUBCATEGORIA (INFORMACION_SUBCATEGORIAS)
qry = "INSERT INTO " +  tabla + " (idSubcategoria, fecha, rango, descripcion, link ) VALUES (%s, %s, %s, %s, %s)"