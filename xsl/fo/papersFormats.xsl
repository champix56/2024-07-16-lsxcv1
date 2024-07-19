<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="papersFormats">
		<!--def. des formats de papiers-->
		<fo:simple-page-master master-name="A4Portrait" page-height="297mm" page-width="210mm">
			<fo:region-body  background-image="{/photos/@theme}" />
		</fo:simple-page-master>
		<fo:simple-page-master master-name="A4PortraitAfter" page-height="297mm" page-width="210mm">
			<fo:region-body  background-image="{/photos/@theme}" />
			<fo:region-after extent="5mm"/>
		</fo:simple-page-master>
		<fo:simple-page-master master-name="A4PortraitAfter_L" page-height="297mm" page-width="210mm">
			<fo:region-body background-image="{/photos/@theme}" margin-bottom="5mm" margin-right="20mm"/>
			<fo:region-after extent="5mm"/>
			<fo:region-end extent="2cm"/>
		</fo:simple-page-master>
		<fo:simple-page-master master-name="A4PortraitAfter_R" page-height="297mm" page-width="210mm">
			<fo:region-body  background-image="{/photos/@theme}"  margin-bottom="5mm" margin-left="20mm" />	
			<fo:region-after extent="5mm"/>
			<fo:region-start extent="2cm"/>
		</fo:simple-page-master>
		<fo:page-sequence-master master-name="A4PortraitAfter_LR">
			<fo:repeatable-page-master-alternatives>
				<fo:conditional-page-master-reference master-reference="A4PortraitAfter" page-position="first"/>
				<fo:conditional-page-master-reference master-reference="A4PortraitAfter_R" odd-or-even="odd"/>
				<fo:conditional-page-master-reference master-reference="A4PortraitAfter_L" odd-or-even="even"/>
			</fo:repeatable-page-master-alternatives>
		</fo:page-sequence-master>
	</xsl:template>
</xsl:stylesheet>