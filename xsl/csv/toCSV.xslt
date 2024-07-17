<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/">
		<xsl:text>type;numfacture;date;nbLigne;total</xsl:text>
		<xsl:for-each select="//facture">
Facture</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>