<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text"/>
    <xsl:template match="*">
        <xsl:apply-templates/>
    </xsl:template>
  <xsl:template match="item[1]">
      <xsl:text>&lt;p style="color=lime;"&gt;</xsl:text>
      <xsl:value-of select="title"/>
      <xsl:text>&lt;/p&gt;</xsl:text>
      <xsl:text>&lt;p&gt;</xsl:text>
      <xsl:value-of select="description"/>
      <xsl:text>&lt;/p&gt;</xsl:text>
      <xsl:text>&#10;&#10;</xsl:text>
      <xsl:value-of select="link"/>
  </xsl:template>
  <xsl:template match="text()"/>
</xsl:stylesheet>

