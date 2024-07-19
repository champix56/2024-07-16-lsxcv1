<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes"/>
	<xsl:include href="papersFormats.xsl"/>
	<xsl:include href="sommaire.xsl"/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			
			<fo:layout-master-set>
				<xsl:call-template name="papersFormats"/>
				<fo:simple-page-master master-name="10x15" page-width="10cm" page-height="15cm" >
					<fo:region-body></fo:region-body>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!--partie de def des corps des pages-->
			<fo:page-sequence master-reference="A4PortraitAfter_LR">
				<fo:static-content flow-name="xsl-region-after">
					<fo:block>
						<xsl:call-template name="footer"/>
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:apply-templates select="//page"/>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
			<fo:page-sequence master-reference="A4Portrait">
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:call-template name="sommaire"/>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
			<fo:page-sequence master-reference="10x15">
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						Remerciements à tous les participants de la formation
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
		<fo:block id="p{position()}">
			<xsl:if test="position() != last()">
				<xsl:attribute name="break-after">page</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="//titre"/>
			<fo:table>
				<fo:table-body>
					<fo:table-row>
						<!--ligne 1-->
						<xsl:apply-templates select=".//image[position() &lt;= 2 ]"/>
					</fo:table-row>
					<xsl:if test="count(image) > 2">
						<fo:table-row>
							<!--ligne 2-->
							<xsl:apply-templates select=".//image[position() >2 ]"/>
						</fo:table-row>
					</xsl:if>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	<xsl:template name="footer">
		<fo:block text-align="center">
			<xsl:apply-templates select="//signature"/> - <fo:page-number/> / <fo:page-number-citation ref-id="p{last()}"/>
		</fo:block>
	</xsl:template>
	<xsl:template match="image">
		<fo:table-cell id="i{generate-id()}">
			<fo:block text-align="center">
				<fo:external-graphic src="{concat(@path,@href)}" scaling="uniform" content-height="100mm" content-width="90mm"/>
				<fo:block>
					<xsl:apply-templates select="*|text()"/>
				</fo:block>
				<xsl:if test="/photos/@OnlyComment='false'">
					<fo:block font-size="6.5pt" font-style="italic">
						<xsl:value-of select="@href"/>
					</fo:block>
				</xsl:if>
			</fo:block>
		</fo:table-cell>
	</xsl:template>
	<xsl:template match="image/fo:*">
		<xsl:copy-of select="."/>
	</xsl:template>
	<xsl:template match="signature">
		<fo:basic-link external-destination="mailto:{//signature}">
			<fo:inline xsl:use-attribute-sets="link">
				<xsl:value-of select="//signature"/>
			</fo:inline>
		</fo:basic-link>
	</xsl:template>
</xsl:stylesheet>