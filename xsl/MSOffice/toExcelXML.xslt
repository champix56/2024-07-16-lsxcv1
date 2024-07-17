<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:processing-instruction name="mso-application">progid="Excel.Sheet"</xsl:processing-instruction>
		<!--<?mso-application progid="Excel.Sheet"?>-->
		<Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet" xmlns:html="http://www.w3.org/TR/REC-html40">
			<DocumentProperties xmlns="urn:schemas-microsoft-com:office:office">
				<Author>champix</Author>
				<LastAuthor>desorbaix alexandre</LastAuthor>
				<Created>2022-06-30T09:59:08Z</Created>
				<LastSaved>2024-07-17T12:07:24Z</LastSaved>
				<Version>16.00</Version>
			</DocumentProperties>
			<OfficeDocumentSettings xmlns="urn:schemas-microsoft-com:office:office">
				<AllowPNG/>
			</OfficeDocumentSettings>
			<ExcelWorkbook xmlns="urn:schemas-microsoft-com:office:excel">
				<WindowHeight>12576</WindowHeight>
				<WindowWidth>23256</WindowWidth>
				<WindowTopX>32767</WindowTopX>
				<WindowTopY>32767</WindowTopY>
				<ProtectStructure>False</ProtectStructure>
				<ProtectWindows>False</ProtectWindows>
			</ExcelWorkbook>
			<Styles>
				<Style ss:ID="Default" ss:Name="Normal">
					<Alignment ss:Vertical="Bottom"/>
					<Borders/>
					<Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="11" ss:Color="#000000"/>
					<Interior/>
					<NumberFormat/>
					<Protection/>
				</Style>
				<Style ss:ID="s57">
					<Borders>
						<Border ss:Position="Top" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
					</Borders>
					<Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="22" ss:Color="#FF0000"/>
					<NumberFormat ss:Format="Short Date"/>
				</Style>
				<Style ss:ID="s58">
					<Borders>
						<Border ss:Position="Top" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s59">
					<Borders>
						<Border ss:Position="Right" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
						<Border ss:Position="Top" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
					</Borders>
					<Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="11" ss:Color="#000000" ss:Bold="1"/>
				</Style>
				<Style ss:ID="s60">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
					</Borders>
					<NumberFormat ss:Format="#,##0.00\ &quot;€&quot;"/>
				</Style>
				<Style ss:ID="s61">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
					</Borders>
				</Style>
				<Style ss:ID="s62">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
						<Border ss:Position="Right" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
					</Borders>
					<Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="11" ss:Color="#9999FF"/>
				</Style>
				<Style ss:ID="s63">
					<Borders>
						<Border ss:Position="Left" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s64">
					<Borders>
						<Border ss:Position="Right" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s65">
					<Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
					<Borders>
						<Border ss:Position="Right" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s66">
					<Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
					<NumberFormat ss:Format="[$-F800]dddd\,\ mmmm\ dd\,\ yyyy"/>
				</Style>
				<Style ss:ID="s67">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
						<Border ss:Position="Left" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s68">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s69">
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
						<Border ss:Position="Right" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s77">
					<Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
				</Style>
				<Style ss:ID="s78">
					<Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
					<Font ss:FontName="Calibri" x:Family="Swiss" ss:Size="14" ss:Color="#000000" ss:Bold="1" ss:Underline="Single"/>
					<NumberFormat ss:Format="#,##0.00\ &quot;€&quot;"/>
				</Style>
				<Style ss:ID="s79">
					<Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
					<Borders>
						<Border ss:Position="Left" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
						<Border ss:Position="Top" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s80">
					<Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
					<Borders>
						<Border ss:Position="Top" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s81">
					<Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
						<Border ss:Position="Left" ss:LineStyle="SlantDashDot" ss:Weight="2"/>
					</Borders>
				</Style>
				<Style ss:ID="s82">
					<Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
					<Borders>
						<Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
					</Borders>
				</Style>
				<Style ss:ID="s83">
					<Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
				</Style>
			</Styles>
			<Worksheet ss:Name="Feuil1">
				<Table ss:ExpandedColumnCount="9" ss:ExpandedRowCount="8" x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="61.8" ss:DefaultRowHeight="15">
					<Column ss:AutoFitWidth="0" ss:Width="24.6"/>
					<Column ss:AutoFitWidth="0" ss:Width="68.399999999999991"/>
					<Column ss:AutoFitWidth="0" ss:Width="124.80000000000001"/>
					<Column ss:Width="119.4"/>
					<Column ss:Index="9" ss:AutoFitWidth="0" ss:Width="19.8"/>
					<Row ss:AutoFitHeight="0" ss:Height="15.75"/>
					<Row ss:AutoFitHeight="0" ss:Height="28.5">
						<Cell ss:Index="2" ss:MergeAcross="1" ss:StyleID="s79">
							<Data ss:Type="String">Factures editées le : </Data>
						</Cell>
						<Cell ss:StyleID="s57">
							<Data ss:Type="DateTime">
								<xsl:value-of select="/factures/@dateeditionXML"/>
							</Data>
						</Cell>
						<Cell ss:StyleID="s58"/>
						<Cell ss:MergeAcross="1" ss:StyleID="s80">
							<Data ss:Type="String">Nombre de factures : </Data>
						</Cell>
						<Cell ss:StyleID="s59">
							<Data ss:Type="Number">
								<xsl:value-of select="count(//facture[contains(@type,'acture')])"/>
							</Data>
						</Cell>
					</Row>
					<Row ss:AutoFitHeight="0" ss:Height="15.75">
						<Cell ss:Index="2" ss:MergeAcross="1" ss:StyleID="s81">
							<Data ss:Type="String">Montant des factures :</Data>
						</Cell>
						<Cell ss:StyleID="s60">
							<Data ss:Type="Number">
								<xsl:value-of select="sum(//stotligne)"/>
							</Data>
						</Cell>
						<Cell ss:StyleID="s61"/>
						<Cell ss:MergeAcross="1" ss:StyleID="s82">
							<Data ss:Type="String">Nombre de devis : </Data>
						</Cell>
						<Cell ss:StyleID="s62">
							<Data ss:Type="Number">
								<xsl:value-of select="count(//facture[contains(@type,'evis')])"/>
							</Data>
						</Cell>
					</Row>
					<Row ss:AutoFitHeight="0" ss:Height="15.75">
						<Cell ss:Index="2" ss:StyleID="s63"/>
						<Cell ss:Index="8" ss:StyleID="s64"/>
					</Row>
					<Row ss:AutoFitHeight="0">
						<Cell ss:Index="2" ss:StyleID="s63">
							<Data ss:Type="String">n°facture</Data>
						</Cell>
						<Cell>
							<Data ss:Type="String">Date</Data>
						</Cell>
						<Cell>
							<Data ss:Type="String">idclient</Data>
						</Cell>
						<Cell>
							<Data ss:Type="String">nbLignes</Data>
						</Cell>
						<Cell ss:MergeAcross="1" ss:StyleID="s83">
							<Data ss:Type="String">montant moyen de ligne</Data>
						</Cell>
						<Cell ss:StyleID="s65">
							<Data ss:Type="String">type</Data>
						</Cell>
					</Row>
					<Row ss:AutoFitHeight="0" ss:Height="18.75">
						<Cell ss:Index="2" ss:StyleID="s63">
							<Data ss:Type="Number">0</Data>
						</Cell>
						<Cell ss:StyleID="s66">
							<Data ss:Type="DateTime">2000-01-01T00:00:00.000</Data>
						</Cell>
						<Cell>
							<Data ss:Type="Number">999999</Data>
						</Cell>
						<Cell>
							<Data ss:Type="Number">789</Data>
						</Cell>
						<Cell ss:MergeAcross="1" ss:StyleID="s78">
							<Data ss:Type="Number">25.58</Data>
						</Cell>
						<Cell ss:StyleID="s64">
							<Data ss:Type="String">Facture</Data>
						</Cell>
					</Row>
					<Row ss:AutoFitHeight="0" ss:Height="18.75">
						<Cell ss:Index="2" ss:StyleID="s63"/>
						<Cell ss:StyleID="s66"/>
						<Cell ss:MergeAcross="1" ss:StyleID="s77">
							<Data ss:Type="String">Montant total fichier :</Data>
						</Cell>
						<Cell ss:MergeAcross="1" ss:StyleID="s78" ss:Formula="=SUM(R[-1]C:R[-1]C)">
							<Data ss:Type="Number">25.58</Data>
						</Cell>
						<Cell ss:StyleID="s64"/>
					</Row>
					<Row ss:AutoFitHeight="0" ss:Height="15.75">
						<Cell ss:Index="2" ss:StyleID="s67"/>
						<Cell ss:StyleID="s68"/>
						<Cell ss:StyleID="s68"/>
						<Cell ss:StyleID="s68"/>
						<Cell ss:StyleID="s68"/>
						<Cell ss:StyleID="s68"/>
						<Cell ss:StyleID="s69"/>
					</Row>
				</Table>
				<WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
					<PageSetup>
						<Header x:Margin="0.3"/>
						<Footer x:Margin="0.3"/>
						<PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
					</PageSetup>
					<Unsynced/>
					<Print>
						<ValidPrinterInfo/>
						<PaperSizeIndex>9</PaperSizeIndex>
						<HorizontalResolution>600</HorizontalResolution>
						<VerticalResolution>600</VerticalResolution>
					</Print>
					<Selected/>
					<Panes>
						<Pane>
							<Number>3</Number>
							<ActiveRow>5</ActiveRow>
							<ActiveCol>4</ActiveCol>
						</Pane>
					</Panes>
					<ProtectObjects>False</ProtectObjects>
					<ProtectScenarios>False</ProtectScenarios>
				</WorksheetOptions>
			</Worksheet>
		</Workbook>
	</xsl:template>
</xsl:stylesheet>