<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <body>
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
                                                <xsl:if test="not(@nazwa_polska)" >                                                 
                                                <xsl:value-of select="@nazwa_lacinska"/>
                                               </xsl:if>                                                
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
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>