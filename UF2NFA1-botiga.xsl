<?xml version="1.0" encoding="UTF-8"?>

<?xml-stylesheet type="test/xsl" href="fitxer.xsl"?>


<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <link rel="stylesheet" href="UF2NFA1-botiga.css"></link>
      <script src="https://kit.fontawesome.com/3e4c1a6931.js" crossorigin="anonymous"></script>
      
    </head>
  <body>
    <h2>Botiga</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>titol</th>
        <th>director</th>
        <th>preu</th>
        <th>any</th>
        <th>idioma</th>
      </tr>
      <xsl:for-each select="botiga/bluray">
      <tr class="clase{any}">
        <td><a href="https://www.imdb.com/find?q={titol}"><xsl:value-of select="titol" /></a></td>
        <td><xsl:value-of select="director" /></td>
        <td><xsl:value-of select="preu" /><xsl:apply-templates select="preu" /></td>
        <td><xsl:value-of select="any" /></td>
        <td><img src="{titol/@idioma}.jpg" width="30px" height="30px"/></td>

        <xsl:sort select="titol" />

      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
<xsl:template match="preu">
  <xsl:choose>
    <xsl:when test=". &gt; 15">
      <i class="fa fa-check-circle"></i>
    </xsl:when>
    <xsl:otherwise>
      <i class="fa fa-times-circle"></i>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>
</xsl:stylesheet>
