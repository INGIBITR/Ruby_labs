<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
 
    <table>

      <thead>

        <tr>

          <th>Number of iteration</th>
          <th>________RESULT________</th>

        </tr>

      </thead>

      <xsl:for-each select="objects/object">

        <xsl:variable name="counter" select="position()-1"/>

        <tbody>

          <tr>

            <th>
              <xsl:value-of select="$counter"></xsl:value-of>
            </th>
            <th>
              <xsl:value-of select="elem"></xsl:value-of>
            </th>

          </tr>

        </tbody>

      </xsl:for-each>

    </table>

  </xsl:template>

</xsl:stylesheet>