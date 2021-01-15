<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 

<xsl:template match="/">
    <html> 
        <head>
            <title>Site Finale</title>
        </head>
        <body bgcolor="#000" background="img/espace.jpeg" style="opacity:0.7">
            <table border="0" cellspacing="0" align="center" width="1000px">
                <tr bgcolor="#eaecee" opacity="0.6" height="70px">
                    <td clospan="2" align="center">
                        <header style="font-family: fantasy;">
                            <p>
                                    <xsl:value-of select="site/host_page/headline/head"/>
                                </p>
                            <p>
                                    <xsl:value-of select="site/host_page/headline/subhead"/>
                                </p>
                        </header>
                    </td>
                </tr>
                <div id="content">
                <tr height="400px">
                    <td bgcolor="#fadbd8" opacity="0.6" align="center" style="vertical-align:middle" width="500px">
                        <div class="leftbox">
                            <h1 style="color:#c0392b;">
                                        <xsl:value-of select="site/host_page/body/lesson_left"/>
                                    </h1>
                            <nav style="font-style: oblique;">
                                        <a href="page2.xml">
                                            <font color="#283747">Voir les exercices</font>
                                        </a>
                                    </nav>
                        </div>
                    </td>
                    <td bgcolor="#d6eaf8" opacity="0.6" align="center" style="vertical-align:middle" width="500px">
                        <div class="rightbox">
                            <h1 style="color:#3498db;">
                                        <xsl:value-of select="site/host_page/body/lesson_right"/>
                                    </h1>
                            <nav style="font-style: oblique">
                                        <a href="page3.xml">
                                            <font color="#283747">Voir les étapes</font>
                                        </a>
                                    </nav>
                        </div>
                    </td>
                </tr>
                </div>
                <tr bgcolor="#d5d8dc" opacity="0.6" height="85px">
                    <td clospan="2" align="center" style="font-family: fantasy;">
                        <p>
                                <xsl:value-of select="site/host_page/bottom_line/site_author/name"/>
                            </p>
                        <p>
                                <xsl:value-of select="site/host_page/bottom_line/site_author/occupation"/>
                            </p>
                        <p>
                                <xsl:value-of select="site/host_page/bottom_line/date_creation"/>
                            </p>
                    </td>
                </tr>
            </table>
        </body>
    </html> 
</xsl:template>

</xsl:stylesheet>