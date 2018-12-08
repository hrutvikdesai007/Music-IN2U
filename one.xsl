<xsl:stylesheet version="1.0“ xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="myperson">
<html>
	<body>
		<b><xsl:value-of select="personName"/></b>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
