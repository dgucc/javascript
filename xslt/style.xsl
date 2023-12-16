<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <meta charset="utf-8" />
            <title></title>
        </head>
        <body>
            <div>
            <h1> My favorite plants!</h1>
                <table class="table table-hover">
				<thead>
                    <tr>
                        <th>Latitude</th>
						<th>Longitude</th>
						<th>Description</th>
						<th>Planted By</th>
                    </tr>
				</thead>
				<tbody>
                    <xsl:for-each select="/plant/specimens/specimen">
                        <tr>
                            <td>
                                <xsl:value-of select="latitude"/>
                            </td>
                            <td>
                                <xsl:value-of select="longitude"/>
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