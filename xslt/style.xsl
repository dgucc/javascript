<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:decimal-format decimal-separator="," grouping-separator=" " name="my-format" />
<xsl:template match="/">
    <html>
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        <div class="container">
        <h1> My favorite plants!</h1>
            <table class="table table-hover w-auto">
            <thead class="table-light" style="position: sticky;top: 0">
                <tr>
                    <th scope="col" class="header">#</th>
                    <th scope="col" class="header">Latitude</th>
                    <th scope="col" class="header">Longitude</th>
                    <th scope="col" class="header">Description</th>
                    <th scope="col" class="header">Planted By</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="//specimen">
                    <tr>
                        <th scope="row">
                            <xsl:value-of select="position()" />
                        </th>
                        <td align="right">
                            <xsl:value-of select="format-number(latitude, '# ##0,00', 'my-format')"/>
                        </td>
                        <td align="right">
                            <xsl:value-of select="format-number(longitude, '# ##0,00', 'my-format')"/>
                        </td>
                        <td>
                            <xsl:value-of select="description"/>
                        </td>
                        <td>
                            <xsl:value-of select="planted_by"/>
                        </td>
                    </tr>
                </xsl:for-each>
            </tbody>
            </table>
        </div>
    </body>
    </html>
    </xsl:template>
</xsl:stylesheet>