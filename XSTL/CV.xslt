<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	
	    <xsl:template match="/">
    
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title><xsl:value-of select="CVEntete/EtudiantTitre" /></title>
                <meta http-equiv="content-type" content="text/html; charset=utf-8" />
                <link rel="stylesheet" href="../XHTML/css/cv.css" type="text/css" />
				<link rel="stylesheet" href="../XHTML/css/style.css" type="text/css" />
				<link href="../XHTML/favicon.png" rel="shortcut icon" type="image/x-icon" />
            </head>
            <body>
					<div id="conteneur">
						<div id="article">
							<xsl:apply-templates />
						</div>
					</div>
            </body>
        </html>
    </xsl:template>
    
        <xsl:template match="Entete">
			<h1><xsl:value-of select="Titre" /></h1>
			 <div class="article_separator"></div>
			<xsl:apply-templates select="Etudiant" />
    </xsl:template>
    
        <xsl:template match="Etudiant">
        <table>
            <tr>
				<th class="col1">Nom</th>
				<td><xsl:value-of select="Nom" /> </td>
				<td rowspan="4" style="text-align: left;"><img id="photoPerso" src="../XHTML/img/bart.png" class="image" alt="photoperso" /></td>
            </tr>
            <tr>
				<th>Prénom</th>
				<td><xsl:value-of select="Prenom" /></td>
			</tr>
           <tr>
			   <th>Adresse</th>
			   <td><xsl:apply-templates select="Adresse" /></td>
			</tr>
            <tr>
				<th>Téléphone</th>
				<td><xsl:value-of select="Telephone" /></td>
			</tr>
            <tr>
				<th>Email</th>
				<td><a href="" title="Email"><xsl:value-of select="Email" /></a></td>
			</tr>
        </table>
    </xsl:template>
			
    <xsl:template match="Item[../@Titre='Formation']" >
		<div id="Formation">
			<h2 id="formation">Formation</h2>
			<table>
				<tr>
					<td><xsl:value-of select="Date" /> : <xsl:value-of select="Contenu" /></td>
				</tr>
			</table>
		</div>
    </xsl:template>	
    
    <xsl:template match="Contenu">
        <tr>
			<td><xsl:value-of select="." /></td>
		</tr>
    </xsl:template>
    

    <xsl:template match="Item[../@Titre='Competences']" >
		<h2><xsl:value-of select="SousTitre" /></h2>
		<table>
			<xsl:for-each select="Contenu">
				<tr>
					<td><xsl:value-of select="." /></td>
				</tr>
			</xsl:for-each>
        </table>
    </xsl:template>
    
</xsl:stylesheet>
