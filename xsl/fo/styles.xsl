<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:attribute-set name="link">
		<xsl:attribute name="text-decoration">underline</xsl:attribute>
		<xsl:attribute name="color">blue</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="greylink">
		<xsl:attribute name="text-decoration">underline</xsl:attribute>
		<xsl:attribute name="color">grey</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="verrybig">
		<xsl:attribute name="font-size">28pt</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="big">
		<xsl:attribute name="font-size">20pt</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="border1px">
		<xsl:attribute name="border">0.5mm solid black</xsl:attribute>
	</xsl:attribute-set>
</xsl:stylesheet>
