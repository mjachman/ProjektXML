<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
            <link rel="stylesheet" type="text/css" href="styl2.css"/>
            </head>
            <body>
                <ul class="tree">
                    <li>Dinozaury
                        <ul>
                    <xsl:for-each select="dinozaury/rzad">
                        <li>
                            <xsl:value-of select="@nazwa_polska"/> 
                            <ul>
                                <xsl:for-each select="podrzad">
                                    <li><xsl:value-of select="@nazwa_polska"/> 
                                        <ul>
                                            <xsl:for-each select="rodzaj">
                                            <li>
                                                                                             
                                                <xsl:value-of select="@nazwa_polska"/>
                                            </li>
                                                </xsl:for-each>
                                        </ul>
                                    </li>
                               </xsl:for-each> 
                            </ul>
                        </li>                       
                    </xsl:for-each>
                        </ul>
                    </li>
                </ul>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>