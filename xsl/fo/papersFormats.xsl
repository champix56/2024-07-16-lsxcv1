<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="papersFormats">
		<!--def. des formats de papiers-->
		<fo:layout-master-set>
			<fo:simple-page-master master-name="A4Portrait" page-height="297mm" page-width="210mm">
				<fo:region-body/>
			</fo:simple-page-master>
			<fo:simple-page-master master-name="A4PortraitAfter" page-height="297mm" page-width="210mm">
				<fo:region-body/>
				<fo:region-after extent="5mm"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
	</xsl:template>
</xsl:stylesheet>