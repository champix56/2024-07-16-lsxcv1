<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:import href="styles.xsl"/>
	<!--demo de list avec liens-->
	<xsl:template name="sommaire">
		<fo:block break-after="page">
			<xsl:apply-templates select="/photos/titre"/>
			<fo:block text-align="center" font-size="20pt">SOMMAIRE</fo:block>
			<fo:block>
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
						<fo:inline font-size="12pt" xsl:use-attribute-sets="greylink">Page <fo:page-number-citation ref-id="p{position()}"/></fo:inline>
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
						<fo:inline xsl:use-attribute-sets="small link">
							<xsl:value-of select="@href"/>
						</fo:inline>
					</fo:basic-link>
				</fo:block>
			</fo:list-item-body>
		</fo:list-item>
	</xsl:template>
</xsl:stylesheet>