<?xml version="1.0" encoding="UTF-8"?>
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<xsl:template match='/'>
			<html> 
				<xsl:apply-templates /> 
			</html>
		</xsl:template>
	<xsl:template match='tienda'>
		<head>
			<title>
				<xsl:value-of select='nombre' /> (Generado por tienda1-html.xsl)
			</title>
		</head>
		<body>
			<h1>
				<xsl:value-of select='nombre' /> 
			</h1>
			<h2>Teléfono: 
				<xsl:value-of select='telefono' /> 
			</h2>
			<h2>Nuestros mejores productos 
			</h2>
			<table>
				<tr>
					<th>Código</th>
					<th>Existencias</th>
					<th>Artículo</th>
				</tr>
				<xsl:apply-templates select='producto'/>
			</table>
		</body>
	</xsl:template>
	<xsl:template match='producto'>
		<tr>
			<xsl:apply-templates />
		</tr>
	</xsl:template>
	<xsl:template match='codigo|cantidad|articulo'>
		<td>
			<xsl:apply-templates />
		</td>
	</xsl:template>
</xsl:stylesheet>
