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
			<div class="numfacture">Facture N° XX en dte du : xx-xx-2024</div>
			<table>
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
					<tr>
						<td class="c_ref">ref</td>
						<td class="c_design">designation</td>
						<td class="c_pht">&euro;/Unit.</td>
						<td class="c_quant">Quant.</td>
						<td class="c_total">Total</td>
					</tr>
				</tbody>
			</table>
			<div class="footer">Entreprise XXXXXX</div>
		</div>
	</xsl:template>
</xsl:stylesheet>