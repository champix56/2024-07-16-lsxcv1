<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE xsl:stylesheet [
	<!ENTITY euro "&#x20AC;"> 
	<!ENTITY nbsp "&#160;"> 
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title/>
				<style type="text/css">
					div{border:1px solid black;}
					.facture{
						page-break-before:always;
						page-break-inside:auto;
						width:287mm;
						height:200mm;
					}
					.emeteur, .destinataire{height : 25mm; margin-bottom:1cm; width:6cm;}
					.emeteur{
						margin-top:10mm;
						margin-left:10mm;
					}
					.destinataire{
						margin-left:20cm;
					}
					.numfacture{
						margin-left:4cm;
						margin-right:4cm;
						font-weight:700;
						text-align:center;
						border:1px solid black;
						margin-bottom:1cm;
					}
					table{
						width:100%;
						margin-left:1cm;
						margin-right:1cm;
						margin-bottom:2cm;
					}
					table thead{background-color:#ACACAC;}
					table td, table th{border:1px solid black;}
					.c_ref{ font-weight:700;}
					.c_design{}
					.c_pht, .c_total{text-align:right;}
					.c_quant{text-align:center;}
					.c_total{font-weight:900;}
					.footer{ text-align:center;}
				</style>
			</head>
			<body>
				<h1>     Liste des factures  </h1>
				<hr/>
				<xsl:apply-templates select="//facture"/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="facture">
		<div class="facture">
			<div class="emeteur">emet</div>
			<div class="destinataire">dest</div>
			<xsl:apply-templates select="@numfacture" />
			<xsl:apply-templates select=".//lignes"/>
			<xsl:call-template name="footer"/>
		</div>
	</xsl:template>
	<xsl:template match="@numfacture">
		<div class="numfacture">Facture N° XX en dte du : xx-xx-2024</div>
	</xsl:template>
	<xsl:template match="lignes">
		<table cellpadding="0" cellspacing="0">
			<thead>
				<tr>
					<th>ref</th>
					<th>designation</th>
					<th>&euro;/Unit.</th>
					<th>Quant.</th>
					<th>Total</th>
				</tr>
			</thead>
			<tbody>
				<xsl:apply-templates select=".//ligne"/>
				<tr>
					<th colspan="3"/>
					<th class="c_total">Total H.T. : </th>
					<th class="c_total">XX.XX&euro;</th>
				</tr>
				<tr>
					<th colspan="3"/>
					<th class="c_total">T.V.A. 19.6% : </th>
					<th class="c_total">XX.XX&euro;</th>
				</tr>
				<tr>
					<th colspan="3"/>
					<th class="c_total">Total T.T.C. : </th>
					<th class="c_total">XX.XX&euro;</th>
				</tr>
			</tbody>
		</table>
	</xsl:template>
	<xsl:template match="ligne">
		<tr>
			<td class="c_ref">ref</td>
			<td class="c_design">designation</td>
			<td class="c_pht">&euro;/Unit.</td>
			<td class="c_quant">Quant.</td>
			<td class="c_total">Total</td>
		</tr>
	</xsl:template>
	<!--<xsl:template match="facture[contains(@type,'evis')]//ligne">
		<tr>
			<td class="c_ref">ref</td>
			<td class="c_design">designation</td>
			<td class="c_pht"></td>
			<td class="c_quant"></td>
			<td class="c_total">Total</td>
		</tr>
	</xsl:template>	-->
	<xsl:template name="footer">
		<div class="footer">Entreprise XXXXXX</div>
	</xsl:template>
</xsl:stylesheet>