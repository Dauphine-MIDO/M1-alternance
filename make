#!/usr/bin/env bash

#copy asciidoctor-fopub/build/fopub/docbook-xsl to my-docbook-xsl and modify fo-pdf.xsl 
#~/Logiciels/Divers/asciidoctor-fopub/fopub -t my-docbook-xsl Mémoire.xml

# validate xsl
xsltproc --noout /usr/share/xml/docbook/stylesheet/docbook-xsl-ns/fo/fo.xsl

asciidoctor -b docbook Mémoire.adoc 
jing /usr/share/xml/docbook/schema/rng/5.0/docbook.rng Mémoire.xml
xsltproc mystyle.xsl Mémoire.xml > Mémoire.fo
export FOP_HYPHENATION_PATH=fop-hyph
fop -c fop-config.xml Mémoire.fo Mémoire.pdf

