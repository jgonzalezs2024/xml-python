
from xml.dom import minidom

doc  = minidom.parse("minidom/test-dom.xml")

""" arrel = doc.documentElement
print(arrel.tagName) """

listaPersonas = doc.getElementsByTagName("person")
f = open("prueba2.html", "w")
f.write("<html>")
f.write(" <body>")
for person in listaPersonas:
    atribut = person.getAttribute("id")
    nom = person.getElementsByTagName("name")[0]
    nom_text = nom.firstChild.data
    gender = nom.getAttribute("gender")
    edat = person.getElementsByTagName("age")[0].firstChild.data
    naixement = person.getElementsByTagName("naixement")[0].firstChild.data
    f.write(f"    <h2>{atribut} - {nom_text}</h2>")
    f.write(f"    <ul>")
    f.write(f"        <li>age - {edat}</li> ")
    f.write(f"        <li>sex - {gender}</li> ")
    f.write(f"        <li>naixement - {naixement}</li> ")
    f.write(f"    </ul>")
f.write(" </body>")
f.write("</html>")





"""     print(atribut, nom_text, gender, edat, naixement)

total = doc.toxml()
print(total)
 """












