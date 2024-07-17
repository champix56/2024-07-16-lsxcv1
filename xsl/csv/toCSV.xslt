<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/">
		<xsl:text>type;numfacture;date;nbLigne;total</xsl:text>
		<!--ici application de la methode depresentation pour tous les noeuds facture-->
		<xsl:apply-templates select="//facture"/>
	</xsl:template>
	<xsl:template match="facture">
		<xsl:text>
</xsl:text>
		<xsl:value-of select="@type"/>;<xsl:value-of select="@numfacture"/>;<xsl:value-of select="@datefacture"/>;<xsl:value-of select="count(.//ligne)"/>;<xsl:value-of select="sum(.//stotligne)"/>
	</xsl:template>
	<xsl:template match="facture[contains(@type,'evis')]">
		<xsl:text>
DEVIS</xsl:text>
	</xsl:template>
</xsl:stylesheet>