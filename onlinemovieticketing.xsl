<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:mt="http://www.example.com/onlinemovieticketing"
                exclude-result-prefixes="mt">

    <!-- Match the root element in the default namespace -->
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin: 20px 0;
                        font-size: 16px;
                        text-align: left;
                    }
                    th, td {
                        border: 1px solid #dddddd;
                        padding: 8px;
                    }
                    th {
                        background-color: #f2f2f2;
                        color: #333;
                    }
                    tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }
                    tr:hover {
                        background-color: #f1f1f1;
                    }
                    h1 {
                        font-family: Arial, sans-serif;
                        color: #333;
                    }
                </style>
            </head>
            <body>
                <h1>Movie Ticketing System</h1>

                <!-- Movie Information -->
                <h2>Movies</h2>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Genre</th>
                        <th>Duration</th>
                        <th>Rating</th>
                    </tr>
                    <xsl:for-each select="//mt:Movie">
                        <tr>
                            <td><xsl:value-of select="mt:Title"/></td>
                            <td><xsl:value-of select="mt:Genre"/></td>
                            <td><xsl:value-of select="mt:Duration"/></td>
                            <td><xsl:value-of select="mt:Rating"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <!-- Theater Information -->
                <h2>Theaters</h2>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Location</th>
                        <th>Capacity</th>
                    </tr>
                    <xsl:for-each select="//mt:Theater">
                        <tr>
                            <td><xsl:value-of select="mt:Name"/></td>
                            <td><xsl:value-of select="mt:Location"/></td>
                            <td><xsl:value-of select="mt:Capacity"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <!-- Showtime Information -->
                <h2>Showtimes</h2>
                <table>
                    <tr>
                        <th>Movie Title</th>
                        <th>Theater Name</th>
                        <th>Time</th>
                    </tr>
                    <xsl:for-each select="//mt:Showtime">
                        <tr>
                            <td><xsl:value-of select="mt:MovieTitle"/></td>
                            <td><xsl:value-of select="mt:TheaterName"/></td>
                            <td><xsl:value-of select="mt:Time"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
