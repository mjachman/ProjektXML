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
                        </li>
                    </xsl:for-each>
                </ul>				
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>