<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE xsl:stylesheet [
	<!ENTITY euro "&#x20AC;"> 
	<!ENTITY nbsp "&#160;"> 
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:include href="libs.xslt"/>
	<xsl:template match="/">
		<html>
			<head>
				<title/>
				<style type="text/css">
					/*div{border:1px solid black;}*/
					@media screen{
						.facture{
							border:1px solid black;
						}
					}
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
					.footer{width:100%; text-align:center;}
				</style>
			</head>
			<body>
				<h1>     Liste des factures  </h1>
				<hr/>
				<ol>
					<xsl:apply-templates select="//facture" mode="sommaire"/>
				</ol>
				<hr/>
				<xsl:apply-templates select="//facture"/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="facture" mode="sommaire">
		<li>
			<a href="#f-{@numfacture}">facture <xsl:value-of select="@numfacture"/></a>
		</li>
	</xsl:template>
	<xsl:template match="facture">
		<div class="facture" id="f-{@numfacture}">
			<xsl:apply-templates select="/factures/@rsets"/>
			<xsl:apply-templates select="@idclient"/>
			<xsl:apply-templates select="@numfacture"/>
			<xsl:apply-templates select=".//lignes"/>
			<xsl:call-template name="footer"/>
		</div>
	</xsl:template>
	<xsl:template match="@rsets">
		<div class="emeteur">emet</div>
	</xsl:template>
	<xsl:template match="@idclient">
		<div class="destinataire">dest</div>
	</xsl:template>
	<xsl:template match="@numfacture">
		<div class="numfacture"> 
			Facture N° XX .....</div>
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
				<xsl:variable name="tht">
					<xsl:call-template name="recursRoundLignes">
						<xsl:with-param name="lignesNodes" select=".//ligne"/>
					</xsl:call-template>
				</xsl:variable>
				<tr>
					<th colspan="3"/>
					<th class="c_total">Total H.T. : </th>
					<th class="c_total">
						<xsl:value-of select="format-number($tht,'# ##0,00&euro;','FR_fr')"/>
					</th>
				</tr>
				<xsl:variable name="mtva" select="round($tht * 0.196 * 100) div 100"/>
				<tr>
					<th colspan="3"/>
					<th class="c_total">T.V.A. 19.6% : </th>
					<th class="c_total">
						<xsl:value-of select="format-number($mtva,'# ##0,00&euro;','FR_fr')"/>
					</th>
				</tr>
				<tr>
					<th colspan="3"/>
					<th class="c_total">Total T.T.C. : </th>
					<th class="c_total">
						<xsl:value-of select="format-number($mtva + $tht,'# ##0,00&euro;','FR_fr')"/>
					</th>
				</tr>
			</tbody>
		</table>
	</xsl:template>
	<xsl:template match="ligne">
		<tr>
			<td class="c_ref">
				<xsl:value-of select="ref"/>
			</td>
			<td class="c_design">
				<xsl:value-of select="designation"/>
			</td>
			<td class="c_pht">
				<xsl:value-of select="phtByUnit"/>
			</td>
			<td class="c_quant">
				<xsl:value-of select="nbUnit"/>
			</td>
			<td class="c_total">
				<xsl:variable name="value">
					<xsl:call-template name="recursRoundLignes">
						<xsl:with-param name="lignesNodes" select="."/>
					</xsl:call-template>
				</xsl:variable>
				<xsl:value-of select="format-number($value,'# ##0,00&euro;','FR_fr')"/>
			</td>
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