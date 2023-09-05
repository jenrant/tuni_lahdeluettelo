<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:b="http://schemas.openxmlformats.org/officeDocument/2006/bibliography" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:t="http://www.microsoft.com/temp">

    <xsl:variable name="data">

        <!-- General information about the style. -->
        <general>
            <stylename>TUNI 2.0</stylename>
            <version>2023.09.0</version>
            <version2013>2023.09.0</version2013>
            <author>Jenni Rantanen (jenrant@protonmail.com)</author>
            <description>An new implementation of the Tampere Universities reference style.</description>
            <URL> https://github.com/jenrant/tuni_lahdeluettelo </URL>
            <comments>Based on Tampere Universities reference style.</comments>
            <display_errors>yes</display_errors>
            <citation_as_link>yes</citation_as_link>
        </general>

        <importantfields>
            <!-- Important fields for each supported source type. -->
            <source type="Book">
                <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
                <b:ImportantField>b:Author/b:Editor/b:NameList</b:ImportantField>
                <b:ImportantField>b:Year</b:ImportantField>
                <b:ImportantField>b:Title</b:ImportantField>
                <b:ImportantField>b:Volume</b:ImportantField>
                <b:ImportantField>b:City</b:ImportantField>
                <b:ImportantField>b:Publisher</b:ImportantField>
                <b:ImportantField>b:SourceType</b:ImportantField>
                <b:ImportantField>b:URL</b:ImportantField>
                <b:ImportantField>b:Comments</b:ImportantField>
                <b:ImportantField>b:Pages</b:ImportantField>
                <b:ImportantField>b:DayAccessed</b:ImportantField>
                <b:ImportantField>b:MonthAccessed</b:ImportantField>
                <b:ImportantField>b:YearAccessed</b:ImportantField>
            </source>

            <source type="JournalArticle">
                <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
                <b:ImportantField>b:Year</b:ImportantField>
                <b:ImportantField>b:Title</b:ImportantField>
                <b:ImportantField>b:PublicationTitle</b:ImportantField>
                <b:ImportantField>b:Issue</b:ImportantField>
                <b:ImportantField>b:Pages</b:ImportantField>
                <b:ImportantField>b:DayAccessed</b:ImportantField>
                <b:ImportantField>b:MonthAccessed</b:ImportantField>
                <b:ImportantField>b:YearAccessed</b:ImportantField>
                <b:ImportantField>b:URL</b:ImportantField>
                <b:ImportantField>b:StandardNumber</b:ImportantField>
            </source>

            <source type="Interview">
                <b:ImportantField>b:Broadcaster/b:Broadcaster/b:NameList</b:ImportantField>
                <b:ImportantField>b:BroadcasterTitle</b:ImportantField>
                <b:ImportantField>SourceType</b:ImportantField>
                <b:ImportantField>b:Day</b:ImportantField>
                <b:ImportantField>b:Month</b:ImportantField>
                <b:ImportantField>b:Year</b:ImportantField>
                <b:ImportantField>b:City</b:ImportantField>
                <b:ImportantField>b:Comments</b:ImportantField>
            </source>

            <source type="ArticleInAPeriodical">
                <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
                <b:ImportantField>b:Year</b:ImportantField>
                <b:ImportantField>b:Title</b:ImportantField>
                <b:ImportantField>b:Editor</b:ImportantField>
                <b:ImportantField>b:PeriodicalTitle</b:ImportantField>
                <b:ImportantField>b:City</b:ImportantField>
                <b:ImportantField>b:Publisher</b:ImportantField>
                <b:ImportantField>b:Issue</b:ImportantField>
            </source>

            <source type="Case">
                <b:ImportantField>b:Title</b:ImportantField>
                <b:ImportantField>b:Year</b:ImportantField>
                <b:ImportantField>b:CaseNumber</b:ImportantField>
                <b:ImportantField>b:DayAccessed</b:ImportantField>
                <b:ImportantField>b:MonthAccessed</b:ImportantField>
                <b:ImportantField>b:YearAccessed</b:ImportantField>
                <b:ImportantField>b:URL</b:ImportantField>
            </source>

            <source type="ConferenceProceedings">
                <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
                <b:ImportantField>b:Tag</b:ImportantField>
                <b:ImportantField>b:Year</b:ImportantField>
                <b:ImportantField>b:ConferenceName</b:ImportantField>
                <b:ImportantField>b:SourceType</b:ImportantField>
                <b:ImportantField>b:Day</b:ImportantField>
                <b:ImportantField>b:Month</b:ImportantField>
                <b:ImportantField>b:Version</b:ImportantField>
                <b:ImportantField>b:City</b:ImportantField>
                <b:ImportantField>b:DayAccessed</b:ImportantField>
                <b:ImportantField>b:MonthAccessed</b:ImportantField>
                <b:ImportantField>b:YearAccessed</b:ImportantField>
                <b:ImportantField>b:URL</b:ImportantField>
            </source>

            <source type="Report">
                <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
                <b:ImportantField>b:Year</b:ImportantField>
                <b:ImportantField>b:Title</b:ImportantField>
                <b:ImportantField>b:Tag</b:ImportantField>
                <b:ImportantField>b:Institution</b:ImportantField>
                <b:ImportantField>b:ThesisType</b:ImportantField>
                <b:ImportantField>b:DayAccessed</b:ImportantField>
                <b:ImportantField>b:MonthAccessed</b:ImportantField>
                <b:ImportantField>b:YearAccessed</b:ImportantField>
                <b:ImportantField>b:URL</b:ImportantField>
            </source>

            <source type="Film">
                <b:ImportantField>b:Title</b:ImportantField>
                <b:ImportantField>b:Year</b:ImportantField>
                <b:ImportantField>b:Editor</b:ImportantField>
                <b:ImportantField>b:Director</b:ImportantField>
                <b:ImportantField>b:ProductionCompany</b:ImportantField>
                <b:ImportantField>b:SourceType</b:ImportantField>
                <b:ImportantField>b:Distributor</b:ImportantField>
                <b:ImportantField>b:DayAccessed</b:ImportantField>
                <b:ImportantField>b:MonthAccessed</b:ImportantField>
                <b:ImportantField>b:YearAccessed</b:ImportantField>
                <b:ImportantField>b:URL</b:ImportantField>
            </source>

            <source type="InternetSite">
                <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
                <b:ImportantField>b:Year</b:ImportantField>
                <b:ImportantField>b:Title</b:ImportantField>
                <b:ImportantField>b:DayAccessed</b:ImportantField>
                <b:ImportantField>b:MonthAccessed</b:ImportantField>
                <b:ImportantField>b:YearAccessed</b:ImportantField>
                <b:ImportantField>b:URL</b:ImportantField>
            </source>

        </importantfields>

        <citation>
            <!-- Citation format information for each supported source type. -->

        </citation>

        <footnotecitation>
            <!-- Footnote citation format information for each supported source type. Note supported in Word 2007. -->

        </footnotecitation>

        <bibliography>
            <!-- Bibliography format information for each supported source type. -->

        </bibliography>

        <namelists>
            <!-- Format information for corporations and lists of persons. -->

        </namelists>

        <strings>
            <!-- Format information for specific strings. -->

        </strings>

        <overrides>
            <!-- Parameters overriding some default settings. -->

        </overrides>

    </xsl:variable>

    <!-- Indicates that all output will be in the HTML format. -->
    <xsl:output method="html" encoding="utf-8"/>

    <!-- Handle the different types of input documents. -->
    <xsl:template match="/">

        <xsl:choose>
            <!-- Gets the name of the style as it will be displayed in Word 2007 / 2010. -->
            <xsl:when test="b:StyleName">
                <xsl:value-of select="msxsl:node-set($data)/general/stylename"/>
            </xsl:when>

            <!-- Gets the version information for the style in Word 2007 / 2010. -->
            <xsl:when test="b:Version">
                <xsl:value-of select="msxsl:node-set($data)/general/version"/>
            </xsl:when>

            <!-- Sets a version number in Word 2013. -->
            <xsl:when test="b:XslVersion">
                <xsl:choose>
                    <xsl:when test="msxsl:node-set($data)/general/version2013">
                        <xsl:value-of select="msxsl:node-set($data)/general/version2013"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- Fallback method : use a dummy version number of 1. -->
                        <xsl:text>1</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!-- Set the name of the style in Word 2013. -->
            <xsl:when test="b:StyleNameLocalized">
                <xsl:value-of select="msxsl:node-set($data)/general/stylename"/>
            </xsl:when>

            <!-- Gets a description of the style. (Word 2008 or later) -->
            <xsl:when test="b:Description">
                <xsl:value-of select="msxsl:node-set($data)/general/description"/>
            </xsl:when>

            <!-- Gets the URL for updates. (Word 2008 or later) -->
            <xsl:when test="b:UpdateURL">
                <xsl:value-of select="msxsl:node-set($data)/general/URL"/>
            </xsl:when>

            <!-- Retrieve the most important fields for a certain type of citation. -->
            <xsl:when test="b:GetImportantFields">
                <xsl:variable name="type" select="b:GetImportantFields/b:SourceType"/>
                <b:ImportantFields>
                    <xsl:copy-of select="msxsl:node-set($data)/importantfields/source[@type = $type]/*"/>
                </b:ImportantFields>
            </xsl:when>

            <!-- Formats a citation for display. -->
            <xsl:when test="b:Citation">
                <xsl:choose>
                    <xsl:when test="msxsl:node-set($data)/citation">
                        <xsl:call-template name="format-citation"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- Fallback method. -->
                        <xsl:call-template name="format-footnote-citation"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!-- Formats a footnote citation for display (Word 2008 or later). -->
            <xsl:when test="b:FootnoteCitation">
                <xsl:choose>
                    <xsl:when test="msxsl:node-set($data)/footnotecitation">
                        <xsl:call-template name="format-footnote-citation"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- Fallback method. -->
                        <xsl:call-template name="format-citation"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!-- Formats a bibliography for display. -->
            <xsl:when test="b:Bibliography">
                <xsl:call-template name="format-bibliography"/>
            </xsl:when>

            <!-- Add a b:BibOrder element to b:Source elements (not used by Word, BibWord specific!). -->
            <xsl:when test="b:BibWord">
                <xsl:call-template name="bibword-extensions"/>
            </xsl:when>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>