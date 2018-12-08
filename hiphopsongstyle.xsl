<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
  <title>Rock Songs</title>
  <style>
  @font-face {
    font-family: "myfont";
    src:url("fonts/Montserrat.ttf");
}

body
{
	font-family: "myfont";
	
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #5a5a5a;
    color: white;
}

</style>
  </head>
  <body>
  <h2>Hip Hop Songs</h2>
  <table border="1">
    <tr>
      <th>Title</th>
      <th>Artist</th>
    </tr>
    <xsl:for-each select="information/song">
	<xsl:if test="genre='Hip Hop'">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="artist"/></td>
    </tr>
	</xsl:if>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>