<!-- <?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/> -->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
  <h2>Коллекция исторических фильмов</h2>
  <table border="1">
<tr bgcolor="#9acd32">
  <td align="center"><strong>Название фильма</strong></td>
  <td align="center"><strong>Релиз</strong></td>
  <td align="center"><strong>Описание</strong></td>
</tr>
    <xsl:for-each select="Historical_Portal/Movie_Collection/movie">
    <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="release"/></td>
        <td><xsl:value-of select="description"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
 
</xsl:stylesheet>