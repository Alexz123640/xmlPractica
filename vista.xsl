<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
  

<html>
<head>
	<title>Factura Ejemplo</title>
	<style>
		.bor{
			border: solid 1px;
		}
		.factura{
			margin:20vh 20vw 0 30vw; 
			border: solid 2px;
			padding:20px;
		}
	</style>
</head>
<body >
<div class="factura" >
	<h1>Factura Ejemplo</h1>
	<header style ="display:flex;">
	
	<div class="">
		<p>Fecha:<xsl:value-of select="Factura/cabeza/fecha"/></p>
		<p>RUC: <xsl:value-of select="Factura/cabeza/RUC"/></p>
		<p>Cliente: <xsl:value-of select="Factura/cabeza/Cliente/Nombre"/></p>
		<p>Direccion: <xsl:value-of select="Factura/cabeza/Cliente/Direccion"/></p>
	</div>
	<div style="margin-left:50px;">
		<p>Serie: <xsl:value-of select="Factura/cabeza/serie"/></p>
		<p>Numero: <xsl:value-of select="Factura/cabeza/numero"/></p>
	</div>
	
	</header>
	<main>
	
		<table class="bor" >
				<tr  >
					<th>Producto</th>
					<th>Cantidad</th>
					<th>Precio unitario</th>
					<th>Total</th>
				</tr>
			
			<xsl:for-each select="Factura/Items/Item">
				<tr>
					<td><xsl:value-of select="Nombre" /></td>
					<td><xsl:value-of select="Cantidad" /></td>
					<td><xsl:value-of select="Precio" /></td>
					<td><xsl:value-of select="Total" /></td>
				</tr>
				
			</xsl:for-each>
			
		</table>
	</main>
	<footer>
		<p>Gracias por su compra.</p>
	</footer>
	</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>