<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes"/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!--def. des formats de papiers-->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="A4Portrait" page-height="297mm" page-width="210mm">
					<fo:region-body></fo:region-body>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!--partie de def des corps des pages-->
			<fo:page-sequence master-reference="A4Portrait">
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<fo:block>Recettes bretonnes</fo:block>
						Recette 1 patate a la Breizh
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
