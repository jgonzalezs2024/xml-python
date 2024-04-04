# XML

XML, o Llenguatge de Marcatge Extensible (**eXtensible Markup Language**), és un estàndard del W3C per a la creació de documents estructurats. Aquest format defineix una sintaxi genèrica per marcar dades textuals de manera llegible pels humans. És flexible i pot ser personalitzat per a diverses utilitats i àrees d'interès. XML no és simplement un llenguatge, sinó un conjunt de tecnologies que permeten la representació i el processament dels documents XML.

Els documents XML es representen com arbres, amb una etiqueta pare que no és fill de cap altra, i les fulles de l'arbre contenen les dades del document. L'anàlisi d'aquests documents implica verificar-ne la correctesa i la validesa, assegurant que segueixin les regles establertes i complint amb les especificacions del vocabulari utilitzat.

Per editar documents XML es poden utilitzar editors de text convencionals, i les regles bàsiques inclouen que totes les etiquetes s'han de tancar, les majúscules i minúscules són diferents, i els valors dels atributs han d'estar entre cometes. És important que els noms de les etiquetes siguin correctes i compleixin amb determinades regles, començant per una *lletra de l'alfabet* o altres caràcters específics.

Els documents XML han de començar amb una declaració que indiqui la versió i codificació utilitzades. El text pot tenir la longitud que es vulgui i es preserven els espais en blanc. També es poden incloure comentaris que seran ignorats pels programes que processin el fitxer XML.

Per evitar conflictes amb etiquetes repetides, es poden utilitzar espais de noms, que s'han de definir abans de l'inici de les dades del document per permetre la seva correcta interpretació.

Mes informacio a [XML Tutorial (w3schools.com)](https://www.w3schools.com/xml/)

## VALIDACIÓ XML

_L’XML_ permet la creació flexible de documents seguint les normes de validesa. Això inclou la creació d'etiquetes i la definició de jerarquia de dades.


Per garantir la conformitat dels documents amb les regles establertes, es realitza una validació. Això assegura que un document sigui _ben format_, seguint les regles XML, i _vàlid_, conforme a les normes del vocabulari associat.

La validació és crucial ja que els documents XML poden provenir de diverses fonts i ser generats automàticament. Utilitzar un validador ajuda a simplificar el procés de processament dels documents XML i a garantir la consistència dels mateixos.

Els validadors poden definir-se a través de tres formes habituals:

- Document Type Definitions (_DTD_)
- XML Schema Definition Language (_XSD_)
- _RELAX NG_

### Validació amb DTD

Un DTD defineix l'estructura, els elements legals i els atributs que un document XML pot utilitzar. Pot ser declarat dins d'un document XML o de forma externa.

[DTD Tutorial (w3schools.com)](https://www.w3schools.com/xml/xml_dtd_intro.asp)

**Exemple XML amb un DTD intern:**

- `<!DOCTYPE note>` defineix que l'element arrel d'aquest document és "note".
- `<!ELEMENT note>` especifica que l'element "note" ha de contenir quatre sub-elements: "to, from, heading, body".
- `<!ELEMENT to>` i `<!ELEMENT from>` defineixen els sub-elements "to" i "from" com elements de tipus "#PCDATA", és a dir, que només poden contenir dades de caràcter analitzables.
- `<!ELEMENT body>` defineix l'element "body" com un element de tipus "#PCDATA".

**Exemple XML amb un DTD extern referenciat:**

- Document XML
- Document note.dtd

**Blocs bàsics dels documents XML:**

- **Elements**: Els components bàsics dels documents XML i HTML.
- **Atributs**: Característiques que defineixen els elements.
- **Entitats**: Referències a caràcters especials o conjunts de caràcters.
- **PCDATA**: Dades de caràcter analitzables sintàcticament.
- **CDATA**: Dades de caràcter analitzables sintàcticament com a part del contingut d'un element.

**Atributs en una DTD:**

Els atributs es declaren amb una declaració ATTLIST i tenen una sintaxi específica. Poden ser obligatoris, opcionals, tenir valors fixats o valors de llista.

- **Tipus atribut**: Ha de ser únic i no pot començar per un número.
- **Valor atribut**: Valor associat a l'atribut.
- **Valor per defecte**: Valor assumit per l'atribut si no es proporciona cap valor.
- **Atribut obligatori**: Atribut que ha de ser present en l'element.
- **Atribut opcional**: Atribut que pot ser present o no.
- **Valor de l’atribut fixat**: Atribut amb un valor fix que no pot ser canviat.
- **Llista valor d’atributs permesos**: Conjunt fix de valors permesos per a l'atribut.

Utilitzar DTDs proporciona un mitjà eficaç de definir la estructura i les restriccions dels documents XML.

### Validació amb XSD

**XML Schema Definition (XSD)** és una alternativa als Document Type Definitions (DTD) que ofereix més potència i flexibilitat en la validació de documents XML.

[XML Schema Tutorial (w3schools.com)](https://www.w3schools.com/xml/schema_intro.asp)

Els documents **XSD** tenen l'extensió .xsd i segueixen l'estructura XML convencional, amb l'element arrel anomenat **schema**.

Les característiques principals de **XSD** inclouen:

- Escrit en XML, el que facilita la comprensió de les seves regles.
- Inclou el sistema de tipus de dades.
- Proporciona més control sobre el contingut dels documents XML.
- Suporta l'ús d'espais de noms.

Un document XML es valida amb un esquema **XSD** mitjançant els atributs **xmlns** i **schemaLocation** a l'etiqueta arrel de l'XML.

Les parts d'un esquema inclouen elements simples, atributs, tipus simples i complexos, a més de documentació per a aplicacions.

Els elements **simples** contenen només text i poden tenir valors predeterminats o fixos.

Els atributs es declaren com a tipus simples i poden ser opcionals, obligatoris, amb valors predeterminats o fixos.

Les restriccions s'utilitzen per definir valors acceptables per a elements o atributs XML, incloent restriccions de valors i restriccions de longitud.

Els elements **complexos** poden contenir altres elements, atributs o text, i es poden definir amb seqüències, eleccions o grups.

Es poden fer referències a elements definits globalment per fer els esquemes més llegibles i modulars.

Per validar documents XML amb un esquema **XSD**, es poden utilitzar eines com xmllint o validadors en línia.

## DOM

El DOM (*Document Object Model*) és una representació jeràrquica d'un document XML o HTML que proporciona una interfície estructurada per accedir i manipular el contingut, l'estructura i l'estil del document. Bàsicament, és una forma estàndard de representar i manipular documents XML i HTML com una estructura d'arbre d'objectes, on cada node a l'arbre representa una part del document, com un element, un atribut o un text.

Mes info++ https://docs.python.org/es/3.9/library/xml.dom.html

### Funcionament

**DOM** és manipulat utilitzant biblioteques com ara **lxml** o **xml.dom**.

**Parseig del document XML**: Primer, importem la llibreria i despres, has de parsejar el teu document XML utilitzant la funció `parse()` de **xml.dom**.

![Captura de pantalla 2024-04-03 222707](https://github.com/jgonzalezs2024/xml-python/assets/165821294/b776c683-cfc2-4121-8b72-7a8bd0462105)

**Accés als nodes de l'arbre DOM**: Un cop s'ha parsejat el document, pots accedir als nodes de l'**arbre DOM** utilitzant mètodes com `getElementsByTagName()`, `getAttribute()`, `firstChild`, etc.

![Captura de pantalla 2024-04-03 222911](https://github.com/jgonzalezs2024/xml-python/assets/165821294/2c99b749-6709-470c-ac41-e8de1327a675)

<sub>Exemple de getEmelementByTagName</sub>


![Captura de pantalla 2024-04-03 223348](https://github.com/jgonzalezs2024/xml-python/assets/165821294/3dac0453-a518-472c-aaa7-f63fe6484c14)

<sub>Exemple de getAttribute</sub>


![Captura de pantalla 2024-04-03 223620](https://github.com/jgonzalezs2024/xml-python/assets/165821294/7ed6e6cb-7c8d-4b55-be49-b14182a0d870)

<sub>Exemple de firstChild</sub>


Per extreure el text d'una etiqueta, cal utilitzar **`firstChild`**. Això és necessari perquè les etiquetes poden contenir diversos tipus de nodes, com ara text o altres elements. Utilitzant **`firstChild`**, s'accedeix al primer node fill de l'etiqueta, que és on es troba el text, permetent així obtenir el contingut textual de l'etiqueta.

Podem recorrer o iterar una llista de etiquetes per extreure el contigut amb un `for`

![Captura de pantalla 2024-04-03 225500](https://github.com/jgonzalezs2024/xml-python/assets/165821294/57068f1a-ed00-4b7e-8cd6-6e30e405ccd7)

## XPATH I XSLT 

**XPath (XML Path Language)** és un llenguatge utilitzat per navegar i consultar documents XML. Proporciona una manera d'expressar ubicacions en documents XML per seleccionar nodes o conjunts de nodes específics.

Mes info++ https://www.w3schools.com/xml/xpath_intro.asp

Defineix 7 tipus de nodes possibles:

- Node arrel
- Elements
- Atributs
- Text
- Espai de noms
- Comentaris
- Instruccions de processament

Es basa en les següents regles:

- Cada element i atribut té un **element pare**.
- Cada element pot tenir **0, 1 o més fills**.
- Els nodes amb el mateix pare són **germans**.

Per seleccionar nodes específics:

S'utilitzen **camins** per indicar la ubicació d'un element dins l'arbre XML.
Els **predicats** s'utilitzen per buscar un node específic.

Exemples de selecció de nodes inclouen:

- **/ruta/element**: selecciona un element específic.
- **//element[@atribut]**: selecciona elements amb un atribut específic.
- **//element[@atribut='valor']**: selecciona elements amb un atribut amb un valor específic.
- **//element[predicat]**: selecciona elements que compleixin certa condició.



**XSLT (Extensible Stylesheet Language Transformations)** és un llenguatge utilitzat per transformar documents XML en altres formats, com HTML o XHTML. Utilitza plantilles i regles per especificar com el contingut XML ha de ser processat i presentat.

### Funcionament

**Capçelera del Document XSL**:

S'inicia amb la seguent etiqueta:

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/adf35ceb-8bfb-484b-a4bf-5fcafbf14848)

Es defineix la fulla d'estil amb:

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/e93970db-eea0-4efd-bf94-d913b48d6117)


**Referenciar el Document XML**:

Per vincular el document XML amb l'XSL s'utilitza la següent línia:

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/e492d294-f042-4ef1-8363-a06c5d2edd16)



**Element xsl:template**:

S'utilitza per crear plantilles. L'atribut **match** s'emplea per associar una plantilla a un element XML. La '/' ens diu que es per tot el document.

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/83669f75-a51f-4b09-a580-cbb3d67f96b4)

**Element xsl:value-of**:

Serveix per extreure el valor d'un node seleccionat i afegir-lo al resultat de la transformació. Aqui utilitzem rutes **XPath** per accedir al text de les etiquetes.

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/87f7641e-8c1b-4fad-a4a4-2157ae57d08b)


**Element xsl:for-each**:

Permet fer bucles en XSLT per seleccionar tots els elements XML d'un conjunt de nodes especificat. 

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/989cf29d-5731-4627-8d6d-6120b3e95290)

**Operadors de comparació**:

(=, !=, <, >) s'utilitzen per establir condicions de selecció de dades.

*Igual*:

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/82804f8e-b85c-4434-9e19-272530dbd2b7)

*Diferent*:

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/a0a90453-a05f-4d1c-b52d-4f3cdce9b6f3)

*Menor*:

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/25603c85-4bc5-46b9-a96c-1c1c4a3cef3a)

*Major*:

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/463d01c9-caeb-4377-b783-75cc2de5940e)

**Element xsl:sort**:

S'usa per ordenar la sortida de dades segons un criteri especificat. La opcio default es ascendent. Es pot ordenar per mes d'una etiqueta pero amb un ordre.

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/0a44b076-e842-4e66-82ac-5496e99a2a63)

**Element xsl:if**:

S'emplea per establir una condició sobre el contingut del fitxer XML.

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/63efd6cc-a7b5-4786-ac1c-1c00ad865fa2)


**Element xsl:choose**:

S'utilitza juntament amb xsl:when i xsl:otherwise per aplicar condicions múltiples.

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/f918dbb3-19ca-4bb3-b5ae-0df1d017329e)

**Element xsl:apply-templates**:

El element xsl:apply-templates s'utilitza per aplicar les plantilles definides en l'XSLT al contingut seleccionat del document XML.

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/c0f1a9a7-1475-477f-b45c-f76be601fe7e)

**Enllaços i Imatges**:

Es poden afegir enllaços i imatges utilitzant <a> i <img>, juntament amb xsl:attribute per establir els atributs com href i src.

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/45e8a69a-3f07-4b89-a9f7-dfa6cdf6a6a8)

![image](https://github.com/jgonzalezs2024/xml-python/assets/165821294/e9c0629a-6884-43d1-9e69-5b8fa8d7a458)
