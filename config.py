import mysql.connector

idCategoria = 1
separador=';'
db = "calendario_2023"
tabla = "eventos"
usuario = "luis.chacon.campos@mep.go.cr"


con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database= db
    )

#Tabla idp
qry = "INSERT INTO " +  tabla + " (fecha, rango, descripcion, link ) VALUES (%s, %s, %s, %s)"

#tABLA SIN CATEGORIAS (EVENTOS)
#qry = "INSERT INTO " +  tabla + " (fecha, rango, descripcion, link ) VALUES (%s, %s, %s, %s)"

#tABLA CON CATEGORIA (OTRAS_FECHAS)
#qry = "INSERT INTO " +  tabla + " (fecha, rango, descripcion, idCategoria, link ) VALUES (%s, %s, %s, %s, %s)"

#tABLA CON SUBCATEGORIA (INFORMACION_SUBCATEGORIAS)
#qry = "INSERT INTO " +  tabla + " (idSubcategoria, fecha, rango, descripcion, link ) VALUES (%s, %s, %s, %s, %s)"