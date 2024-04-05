from xml.dom import minidom

doc = minidom.parse("UF2A4.xml")

horari = doc.getElementsByTagName("horari")
alumne = doc.getElementsByTagName("alumne")[0]
dia = doc.getElementsByTagName("dia")

file = open("UF2A4.html", "w", encoding="utf-8")
file.write("<!DOCTYPE html>")
file.write("\n<html style='background-color: #86b560;'>\n<head>\n    <meta charset='UTF-8' />\n    <title>HORARIO</title>\n</head>\n<body>")

franges = doc.getElementsByTagName("franja")
nom = alumne.getElementsByTagName("nom")[0].firstChild.data
curs = alumne.getElementsByTagName("curs")[0].firstChild.data
foto = alumne.getElementsByTagName("foto")[0].firstChild.data
colors = doc.getElementsByTagName("assignatura")

file.write(f'''
    <h1 style="font-size: xx-large; font-family: fantasy; text-align: center; letter-spacing: 3px;">Dades de l'alumne</h1>
    <p style="font-size: xx-large; font-family: fantasy; text-align: center;">{nom}</p>
    <p style="font-size: xx-large; font-family: fantasy; text-align: center;">{curs}</p>
    <img src="{foto}" style="border: 3px solid black; width: 180px; font-size: xx-large; font-family: fantasy; margin-left: 44%;">''')
file.write('''
    <table style=" width: 100%;  ">
        <caption style="font-size: xx-large; font-family: fantasy; text-align: center; padding: 2%;  letter-spacing: 3px;">-- HORARI --</caption>
        <thead>''')
file.write("\n            <th style='background-color: rgb(176, 173, 173);'></th>")
indexFranja = 0
for d in dia:
    
    dia1 = d.getElementsByTagName("nom")[0].firstChild.data
    print(dia1)
    file.write(f"<th style='background-color: rgb(176, 173, 173);'>{dia1}</th>")
file.write("\n        </thead>")
file.write("\n        <tbody style='height: 110%;'>")
file.write("\n             <tr>")
for f in franges:
    franja = f.firstChild.data
    file.write(f"<th style='background-color: rgb(176, 173, 173);'>{franja}</th>")
    for d in dia:
        assignatura = d.getElementsByTagName("assignatura")[indexFranja].firstChild.data
        colorTrobat = False
        colorIndex = 0
        while not colorTrobat and colorIndex < len(colors):
            if colors[colorIndex].firstChild.data == assignatura:
                color = colors[colorIndex].getAttribute("color")
                colorTrobat = True
            colorIndex +=1
        print(assignatura)
        file.write(f"<td style='background-color: {color}'>{assignatura}</td>")
    file.write("</tr>")
    indexFranja += 1
file.write("\n        </tbody>")
file.write(("\n    </table>"))  
file.write('''
    <style>
        td, th {
            border: 2px solid black;
            padding: 10px;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
    </style>
''')  
file.write("\n</body>")   
file.write("\n</html>")
