<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>recipes</title>
            </head>
            <body bgcolor="#ffffff">
                <ul>
                    <xsl:apply-templates select="catalog/cd" mode="cd"/>
                </ul>
                дата: <xsl:value-of select="$date"/>
            </body>
        </html>

    </xsl:template>

    <xsl:template match="cd" mode="cd">
        <li>
            <div><img src="{cover/@link}"/></div>
            <xsl:value-of select="@title"/>
        </li>
    </xsl:template>

</xsl:stylesheet>