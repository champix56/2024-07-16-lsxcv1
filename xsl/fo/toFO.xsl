<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes"/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!--def. des formats de papiers-->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="A4Portrait" page-height="297mm" page-width="210mm">
					<fo:region-body/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!--partie de def des corps des pages-->
			<fo:page-sequence master-reference="A4Portrait">
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:apply-templates select="//page"/>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template match="titre"/>
	<xsl:template match="titre[following-sibling::pages/@titre='true']">
		<fo:block text-align="center" font-weight="900" font-size="23pt" color="tomato">
			<xsl:value-of select="."/>
		</fo:block>
	</xsl:template>
	<xsl:template match="page">
		<fo:block>
			<xsl:if test="position() != last()">
				<xsl:attribute name="break-after">page</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="//titre"/>
			<xsl:apply-templates select="//signature"/>
		</fo:block>
	</xsl:template>
	<xsl:template match="image"/>
	<xsl:template match="signature">
		<fo:basic-link external-destination="mailto:{//signature}">
			<fo:inline color="blue" text-decoration="underline">
				<xsl:value-of select="//signature"/>
			</fo:inline>
		</fo:basic-link>
	</xsl:template>
</xsl:stylesheet>