<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl-ns/fo/docbook.xsl"/>
	<xsl:param name="paper.type" select="'A4'"/>
	<xsl:param name="fop1.extensions" select="1"/>
	<xsl:param name="section.autolabel" select="1"/>
	<xsl:param name="ulink.footnotes" select="1"/>
	<xsl:template name="article.titlepage.before.recto">
		<fo:block text-align-last="justify" space-after="1cm">
			<fo:external-graphic src="DauphineBleu.png" height="8mm" content-width="scale-to-fit"/>
			<fo:leader leader-pattern="space" />
			<fo:external-graphic src="CFA.jpg" height="9mm" content-width="scale-to-fit"/>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>

