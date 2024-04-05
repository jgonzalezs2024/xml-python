from xml.dom import minidom

doc  = minidom.parse("minidom/UF2A3.xml")
listaPersonas = doc.getElementsByTagName("persona")
diccionari = dict()
for person in listaPersonas:
    nom = person.getElementsByTagName("nom")[0].firstChild.data
    cognoms = person.getElementsByTagName("cognoms")[0].firstChild.data
    nomCognoms = nom + " " + cognoms
    edat = person.getElementsByTagName("edat")[0].firstChild.data
    assignatures = person.getElementsByTagName("assignatura")
    assignaturesPropies = list()
    for x in assignatures:
        assignatura = x.firstChild.data
        assignaturesPropies.append(assignatura)
        diccionari[nomCognoms] = assignaturesPropies

nomCorrecte = False
continuar = True
while not nomCorrecte or continuar:
    print("Busca assginatures de usuaris")
    nomConsulta = input("Digues el nom: ")
    cognomConsulta = input("Digues el cognom: ")
    nomCognomsConsulta = nomConsulta + " " + cognomConsulta
    if nomCognomsConsulta in diccionari:
        print(nomCognomsConsulta)
        for x in diccionari[nomCognomsConsulta]:
            print(f"-{x}")
        nomCorrecte = True  
    else:
        print("ERROR, ALUMNE NO ESTA A LA LLISTA")
    opcio = int(input("Busca mes alumnes, tecli 0 per sortir: "))
    if opcio == 0:
        continuar = False

    


