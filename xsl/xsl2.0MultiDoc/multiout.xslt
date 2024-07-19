<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:mesFonction="urn:orsys:functions">
	<xsl:output method="html" encoding="UTF-8" indent="yes" />
	<xsl:template match="/">
		<xsl:result-document href="table.html" method="html">
			<html>
				<head>
					<title/>
				</head>
				<body>
					<h1>tableau uniquement des stats</h1>
					<xsl:call-template name="tableau"/>
				</body>
			</html>
		</xsl:result-document>
		<xsl:result-document href="graph.html" method="html">
			<html>
				<head>
					<title/>
				</head>
				<body>
					<h1>tableau &amp; graph graph des stats</h1>
					<xsl:call-template name="tableau"/>
					<div style="text-align:center">
					<xsl:call-template name="graph"/>					
					</div>
				</body>
			</html>
		</xsl:result-document>
	</xsl:template>
	<xsl:template name="tableau">
		<table border="1">
			<thead>
				<tr>
					<th>numfact</th>
					<th>artavg</th>
					<th>ligneavg</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="//facture">
					<tr>
						<td>
							<xsl:value-of select="@idfacture"/>
						</td>
						<td>
							<xsl:value-of select="prixAvgArticle"/>
						</td>
						<td>
							<xsl:value-of select="ligneAvg"/>
						</td>
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
	<xsl:template name="graph">
		<svg width="300px" height="300px" viewBox="-20 -20 170 170" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
			<desc/>
			<defs>
				<symbol id="Axes">
					<line x1="20" y1="0" x2="20" y2="101" stroke="black" stroke-width="2"/>
					<polygon points="20,-1 25,5 15,5"/>
					<text x="112" y="115">X</text>
					<line x1="20" y1="100" x2="120" y2="100" stroke="black" stroke-width="2"/>
					<polygon points="121,100 115,95 115,105"/>
					<text x="5" y="10">Y</text>
					<rect x="40" y="97.5" width="1" height="5" style="fill:black"/>
					<text x="35" y="115">10</text>
					<rect x="70" y="97.5" width="1" height="5" style="fill:black"/>
					<text x="65" y="115">20</text>
					<rect x="100" y="97.5" width="1" height="5" style="fill:black"/>
					<text x="95" y="115">30</text>
					<rect x="18.5" y="20" width="5" height="1" style="fill:black"/>
					<text x="3" y="25">10</text>
					<rect x="18.5" y="50" width="5" height="1" style="fill:black"/>
					<text x="3" y="55">20</text>
					<rect x="18" y="80" width="5" height="1" style="fill:black"/>
					<text x="3" y="85">30</text>
				</symbol>
				<linearGradient id="effetArrondiVertical" x1="0%" x2="100%" y1="20%" y2="0">
					<stop offset="0%" stop-color="#B7CA79"/>
					<stop offset="80%" stop-color="#677E52"/>
				</linearGradient>
			</defs>
			<xsl:variable name="MLA" select="max(//ligneAvg)"/>
			<xsl:variable name="pasH" select="100 div $MLA"/>
			<xsl:for-each select="//facture">
				<xsl:variable name="hauteur" select="ligneAvg * $pasH"/>
				<rect x="{7+(position()-1)*20}" y="{100 - $hauteur}" width="{15}" height="{$hauteur}" fill="url(#effetArrondiVertical)"/>
			
			</xsl:for-each>
			<use xlink:href="#Axes" x="-15" y="0"/>
		</svg>
	</xsl:template>
<!--		<xsl:function name="mesFonctions:maxLigneAvg" as="xs:float">
		<xsl:param name="picture"/>
		<xsl:param name="nodebase"/>
			<xsl:variable name="MLA" select="xs:float(max($nodebase))" as="xs:float"/>
			<xsl:value-of select="fn:format-number((100 div $MLA), '0.00') "/>
	</xsl:function>
--></xsl:stylesheet>