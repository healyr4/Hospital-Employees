<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h1>Recorded Information</h1>
        <table border="1">
          <tr>
            <td style="font-size:18px">Personal Data</td>
          </tr>
          <tr bgcolor="#2596be">
            <th style="text-align:center">First Name</th>
            <th style="text-align:center">Surname</th>
            <th style="text-align:center">Date of birth</th>
            <th style="text-align:center">Address</th>
            <th style="text-align:center">Mobile</th>
            <th style="text-align:center">Landline</th>
            <th style="text-align:center">Email</th>
          </tr>
          <xsl:for-each select="Record/Person">
              <tr>
                <td>
                  <xsl:value-of select="fullName/firstName"/>
                </td>
                <td>
                  <xsl:value-of select="fullName/surname"/>
                </td>
                <td>
                  <xsl:value-of select="dateOfBirth"/>
                </td>
                <td>
                  <xsl:value-of select="address"/>
                </td>
                <td>
                  <xsl:value-of select="mobile"/>
                </td>
                <td>
                    <xsl:value-of select="landline"/>
                  </td>
                <td>
                  <xsl:value-of select="email"/>
                </td>
              </tr>
          </xsl:for-each>
          <tr>
            <td style="font-size:25px">Hospital Information</td>
          </tr>
          <tr bgcolor="#2596be">
            <th style="text-align:center">Name</th>
            <th style="text-align:center">Address</th>
            <th style="text-align:center">Mobile</th>
            <th style="text-align:center">Landline</th>
            <th style="text-align:center">Email</th>
          </tr>
          <xsl:for-each select="Record/Hospital">
              <tr>
                <td>
                  <xsl:value-of select="title"/>
                </td>
                <td>
                  <xsl:value-of select="address"/>
                </td>
                <td>
                  <xsl:value-of select="mobile"/>
                </td>
                <td>
                    <xsl:value-of select="landline"/>
                  </td>
                <td>
                  <xsl:value-of select="email"/>
                </td>
              </tr>
          </xsl:for-each>
      
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
