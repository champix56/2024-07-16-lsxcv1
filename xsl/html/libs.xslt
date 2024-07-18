<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="recursRoundLignes">
		<xsl:param name="total" select="0"/>
		<xsl:param name="positionItter" select="1"/>
		<xsl:param name="lignesNodes"/>
		<xsl:choose>
			<xsl:when test="$lignesNodes[$positionItter+1]">
				<xsl:call-template name="recursRoundLignes">
					<xsl:with-param name="total" select="format-number($total + round($lignesNodes[$positionItter]/stotligne *100) div 100,'0.00')"/>
					<xsl:with-param name="lignesNodes" select="$lignesNodes"/>
					<xsl:with-param name="positionItter" select="$positionItter+1"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="format-number($total+ round($lignesNodes[$positionItter]/stotligne *100) div 100,'0.00')"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
