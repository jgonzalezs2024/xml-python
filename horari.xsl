<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- Definición de las clases CSS -->
  <xsl:template match="/">
    <html>
      <head>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 3px solid rgb(198, 197, 197);
            text-align: center;
            background-color: rgb(198, 197, 197);
            height: 3rem;
            font-family: arial;
          }
          ul, h2 {
            font-family: arial;
            text-align: center;
          }
          th {
            font-family: arial;
            font-weigth: bolt;
          }
          .M01 { background-color: #ff9999; }
          .M02 { background-color: #99ff99; }
          .M03 { background-color: #9999ff; }
          .M04 { background-color: #ffff99; }
          .M08 { background-color: #cc99ff; }
          .M09 { background-color: #ff99ff; }
          .M10 { background-color: #ffcc99; }
          .M11 { background-color: #99ffff; }
          img.header-image {
            width: 100%;
            height: 20%;
          }
          h1 {
            display: none;
            font-family: arial;
          }
          div {
            font-family: arial;
          }
        </style>
        
      </head>
      <body>
        <xsl:apply-templates select="horari"/>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="horari">
    <img src="{@header}" alt="Imatge de l'escola" class="header-image"/>
    <table>
      <tr>
        <xsl:for-each select="setmana/dia">
          <th><xsl:value-of select="@nom"/></th>
        </xsl:for-each>
      </tr>
      <xsl:for-each select="setmana/dia">
        <td>
          <table>
            <xsl:apply-templates select="modul"/>
          </table>
        </td>
      </xsl:for-each>
    </table>
    <h2 style="text-align: center;">Enllaços Directes</h2>
    <xsl:for-each select="links/link">
        <div style="text-align: center;">
            <a href="{url}"> 
                <xsl:value-of select="nom"/>
            </a>
        </div>
    </xsl:for-each>
</xsl:template>
<xsl:template match="modul">
    <tr>
      <td class="{codi}" style="background-color: {../colors/color[@codi=current()/codi]}; width: 100%;">
        <xsl:value-of select="concat(codi, ': ', nom)"/>
      </td>
    </tr>
  </xsl:template>
  
  

</xsl:stylesheet>
