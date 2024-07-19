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
						<xsl:call-template name="sommaire"/>
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
			<xsl:call-template name="footer"/>
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
				<fo:external-graphic src="{concat(@path,@href)}" scaling="uniform" content-height="100mm" content-width="98mm"/>
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
			<fo:inline color="blue" text-decoration="underline">
				<xsl:value-of select="//signature"/>
			</fo:inline>
		</fo:basic-link>
	</xsl:template>
	<!--demo de list avec liens-->
	<xsl:template name="sommaire">
		<fo:block break-after="page">
			<xsl:apply-templates select="/photos/titre"/>
			<fo:block text-align="center" font-size="20pt">SOMMAIRE</fo:block>
			<fo:block >
				<fo:list-block text-align="left">
					<xsl:apply-templates select="//page" mode="toc"/>
				</fo:list-block>
			</fo:block>
		</fo:block>
	</xsl:template>
	<xsl:template match="page" mode="toc">
		<fo:list-item>
			<fo:list-item-label>
				<fo:block/>
			</fo:list-item-label>
			<fo:list-item-body start-indent="body-start()">
				<fo:block font-size="14pt">
					<fo:basic-link internal-destination="p{position()}">
						<fo:inline font-size="12pt" color="grey" text-decoration="underline">Page <xsl:value-of select="position()"/></fo:inline>
					</fo:basic-link>
					<fo:list-block>
						<xsl:apply-templates select=".//image" mode="toc"/>
					</fo:list-block>
				</fo:block>
			</fo:list-item-body>
		</fo:list-item>
	</xsl:template>
	<xsl:template match="page/image" mode="toc">
		<fo:list-item>
			<fo:list-item-label end-indent="label-end()">
				<fo:block/>
			</fo:list-item-label>
			<fo:list-item-body start-indent="body-start()">
				<fo:block>
					<fo:basic-link internal-destination="i{generate-id()}">
						<fo:inline color="blue" text-decoration="underline" font-size="7pt">
							<xsl:value-of select="@href"/>
						</fo:inline>
					</fo:basic-link>
				</fo:block>
			</fo:list-item-body>
		</fo:list-item>
	</xsl:template>
</xsl:stylesheet>