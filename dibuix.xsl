<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <style>
        svg {
          border: 1px solid black;
        }
      </style>
    </head>
    <body>
      <svg width="{dibuix/canvas/amplada}" height="{dibuix/canvas/alçada}" xmlns="http://www.w3.org/2000/svg">
        <xsl:for-each select="dibuix/figures/figura">
          <xsl:choose>
            <xsl:when test="@tipus = 'rectangle'">
              <rect x="{posicio/x}" y="{posicio/y}" width="{dimensions/amplada}" height="{dimensions/alçada}" fill="{@color}" stroke="{posicio/stroke}" />
            </xsl:when>
            <xsl:when test="@tipus = 'cercle'">
              <circle r="{posicio/r}" cx="{posicio/cx}" cy="{posicio/cy}" width="{dimensions/amplada}" height="{dimensions/alçada}" fill="{@color}"  stroke="{posicio/stroke}"/>
            </xsl:when>
            <xsl:when test="@tipus = 'ellipse'">
              <ellipse rx="{posicio/rx}" ry="{posicio/ry}" cx="{posicio/cx}" cy="{posicio/cy}" fill="{@color}" stroke="{posicio/stroke}" />
            </xsl:when>
            <xsl:when test="@tipus = 'text'">
              <text x="{posicio/x}" y="{posicio/y}" fill="{posicio/fill}" stroke="{posicio/stroke}" font-size="{posicio/size}">MARQUES</text>
              <xsl:value-of select="."/>
            </xsl:when>
          </xsl:choose>
        </xsl:for-each>
      </svg>
      <input type="button" value="Change Colors" onclick="changeColors()" />
      <script>

      function changeColors() {
        var elements = document.querySelectorAll('svg *');
        elements.forEach(function(element) {
          var currentColor = window.getComputedStyle(element).fill;
          if (currentColor === 'rgb(0, 0, 0)') {
            element.setAttribute('fill', 'gray');
          } else if (currentColor === 'rgb(128, 128, 128)') {
            element.setAttribute('fill', 'black');
          }
        });
      }
      </script>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>