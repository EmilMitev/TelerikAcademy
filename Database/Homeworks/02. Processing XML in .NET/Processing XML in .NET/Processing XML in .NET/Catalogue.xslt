﻿<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method='html' version='1.0' encoding='UTF-8' indent='yes' />

  <xsl:template match="/">
    <xsl:text disable-output-escaping="yes">
      &lt;!DOCTYPE html&gt;
    </xsl:text>
    <html>
      <body>
        <h2>My Albums Collection</h2>
        <table border="1">
          <tr bgcolor="#CCCCCC">
            <th align="center">Title</th>
            <th align="center">Artist</th>
            <th align="center">Year</th>
            <th align="center">Songs</th>
          </tr>
          <xsl:for-each select="albums/album">
            <tr>
              <td>
                <xsl:value-of select="name" />
              </td>
              <td>
                <xsl:value-of select="artist" />
              </td>
              <td>
                <xsl:value-of select="year" />
              </td>
              <td>
                <ul>
                  <xsl:for-each select="songs/song">
                    <li>
                      <xsl:value-of select="title"/>/
                      <xsl:value-of select="duration"/>
                    </li>
                  </xsl:for-each>
                </ul>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
