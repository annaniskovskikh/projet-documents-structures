<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 

<xsl:template match="/">
    <html> 
        <head>
            <title><xsl:value-of select="host_page/headline/head"/></title>
            <style>
            	    body{
            	        background: #17202a;
            	        color: #ffffff;
            	        text-align: center;
            	    }
            	</style>
        </head>
        <body>
            <h2 style="color:#c0392b"><xsl:value-of select="host_page/headline/name"/></h2>
            <table border="2" cellspacing="0" align="center" width="1000px">
               <tr>
                <td width="333px">
                    <h3 style="color:#67a2de"><xsl:value-of select="host_page/body/partOne"/></h3>
                    <h4><xsl:value-of select="host_page/body/firstStep/name"/></h4>
                    <p><xsl:value-of select="host_page/body/firstStep/description/sentOne"/></p>
                    <p><xsl:value-of select="host_page/body/firstStep/description/sentTwo"/></p>
                    <p><xsl:value-of select="host_page/body/firstStep/description/sentThree"/></p>
                    <h4><xsl:value-of select="host_page/body/secondStep/name"/></h4>
                    <p><xsl:value-of select="host_page/body/secondStep/description"/></p>
                    <p></p>
                </td>
                <td style="color:#67a2de" width="333px">
                    <h3 style="color:#fff"><xsl:value-of select="host_page/body/partTwo/name"/></h3>
                    <h4><xsl:value-of select="host_page/body/partTwo/description/name"/></h4>
                    <a style="color:#67a2de" href="page1.xml">
                        <p><xsl:value-of select="host_page/body/partTwo/description/subDescOne"/></p>
                    </a>
                    <a style="color:#67a2de" href="#">
                        <p><xsl:value-of select="host_page/body/partTwo/description/subDescTwo"/></p>
                    </a>
                    <p><xsl:value-of select="host_page/body/partTwo/description/subDescThree"/></p>
                    <p><a style="color:#67a2de" href="data/Madame-Bovary.xml">Madame Bovary</a></p>
                    <p><a style="color:#67a2de" href="data/SIDDHARTHA.xml">SIDDHARTHA</a></p>
                    <p><a style="color:#67a2de" href="data/Wuthering-Heights.xml">Wuthering Heights</a></p>
                </td>
                <td width="333px">
                    <h3 style="color:#67a2de"><xsl:value-of select="host_page/body/partThree/name"/></h3>
                    <p><xsl:value-of select="host_page/body/partThree/description/diffOne"/></p>
                    <p><xsl:value-of select="host_page/body/partThree/description/diffTwo"/></p>
                    <p><xsl:value-of select="host_page/body/partThree/description/diffThree"/></p>
                    <p><xsl:value-of select="host_page/body/partThree/description/diffFour"/></p>
                </td>
               </tr>
            </table>
            <footer>
                <p style="color:#c0392b">Le site est préparé par <xsl:value-of select="host_page/bottom_line/site_author/name"/> | 
                    <xsl:value-of select="host_page/bottom_line/site_author/occupation"/> | 
                    <xsl:value-of select="host_page/bottom_line/schoolYear"/> | 
                    Tous Droits Réservés
                </p>
            </footer>
        </body>
    </html> 
</xsl:template>
</xsl:stylesheet>