<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 

<xsl:template match="/">
    <html> 
        <head>
            <title><xsl:value-of select="site/host_page/headline/head"/></title>
        </head>
        <h2><xsl:value-of select="site/host_page/body/name"/></h2>
        <body bgcolor="#17202a">
            <table border="5" cellspacing="0" align="center" width="1000px">
               <tr>
                <td>blah</td>
                <td>blah-blah</td>
                <td>blah-blah-blah</td>
               </tr>
            </table>
        </body>
    </html> 
</xsl:template>

</xsl:stylesheet>