<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-system="facturationtransfert.dtd"/>
	<xsl:template match="/">
		<factures>
			<xsl:apply-templates select="//facture"/>
		</factures>
	</xsl:template>
	<xsl:template match="facture">
		<facture>
			<prixAvgArticle><xsl:value-of select="sum(.//phtByUnit) div count(.//phtByUnit)"/></prixAvgArticle>
			<ligneAvg><xsl:value-of select="sum(.//stotligne) div count(.//stotligne)"/></ligneAvg>
			<nbLignes><xsl:value-of select="count(.//ligne)"/></nbLignes>
		</facture>
	</xsl:template>
</xsl:stylesheet>