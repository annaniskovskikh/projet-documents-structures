<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
    xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
    xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
    xmlns:foo="http://whatever"
    exclude-result-prefixes="xs">
    <!--xsl:param permet d'avoir des variables pour plusieurs fichiers utilisés au sein d'une feuille de style-->
    <xsl:param name="CONTENT" select="document('content.xml')"/>
    <xsl:param name="META" select="document('meta.xml')"/>
    
    <xsl:template match="/">
        <!--xsl:result-document permet d'envoyer les résultats dans un fichier de sortie-->
        <xsl:result-document href="Wuthering-Heights.xml" method="xml" indent="yes">
            <TEI>
                <teiHeader>
                    <fileDesc>
                        <titleStmt>
                            <title><xsl:value-of select="$META/office:document-meta/office:meta/meta:user-defined[@meta:name='Titre']"/></title>
                            <author><xsl:value-of select="$META/office:document-meta/office:meta/meta:user-defined[@meta:name='Auteur']"/></author>
                        </titleStmt>     
                        <publicationStmt>
                            <availability>
                                <p><xsl:value-of select="$META/office:document-meta/office:meta/meta:user-defined[@meta:name='Licence']"/></p>
                            </availability>
                            <date><xsl:value-of select="$META/office:document-meta/office:meta/meta:user-defined[@meta:name='Date de publication']"/></date>
                        </publicationStmt>
                        <sourceDesc>
                            <bibliography><xsl:value-of select="$META/office:document-meta/office:meta/meta:user-defined[@meta:name='Source']"/></bibliography>
                        </sourceDesc>
                    </fileDesc>
                    <profileDesc>
                        <creation>
                            <date><xsl:value-of select="$META/office:document-meta/office:meta/meta:user-defined[@meta:name='Date de la source']"/></date>
                        </creation>
                    </profileDesc>
                    <encodingDesc>
                        <projectDesc>
                            <p><xsl:value-of select="$META/office:document-meta/office:meta/meta:user-defined[@meta:name='Description']"/></p>
                        </projectDesc>
                    </encodingDesc>
                </teiHeader>
                <text>
                    <body>
                        <head><xsl:value-of select="$CONTENT/office:document-content/office:body/office:text/text:p[@text:style-name='Title']"/></head>
                        <xsl:apply-templates select="$CONTENT/office:document-content/office:body/office:text"/>              
                    </body>
                </text> 
            </TEI>
        </xsl:result-document>   
    </xsl:template>
    
    <!--Méthode permettant de bien afficher le contenu du document-->
    <xsl:variable name="paragraphe" select="$CONTENT/office:document-content/office:body/office:text"></xsl:variable>
    <xsl:template match="$paragraphe/child::*">
        <xsl:for-each select=".">   
            <xsl:choose>
                <xsl:when test="$paragraphe/text:h">
                    <p><xsl:value-of select="."/></p> 
                </xsl:when>
                <xsl:otherwise>
                    <xsl:if test="$paragraphe/text:p != 'Madame Bovary'">
                        <xsl:if test="$paragraphe/text:p">
                            <p><xsl:value-of select="."/></p> 
                        </xsl:if>
                    </xsl:if>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>     
    </xsl:template>
    
</xsl:stylesheet>