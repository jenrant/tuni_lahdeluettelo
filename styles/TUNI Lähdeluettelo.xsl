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

        </xsl:choose>

    </xsl:template>

    <!-- Formats the citation. -->
    <xsl:template name="format-citation">

        <!-- Generate an XML node-set from the formatting data. -->
        <xsl:variable name="params" select="msxsl:node-set($data)"/>

        <html xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
              xsi:schemaLocation="https://www.w3.org/TR/html40 ">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
            </head>
            <body>
                <p>

                    <!-- Display the open bracket if this is the first citation. -->
                    <xsl:if test="/b:Citation/b:FirstAuthor">
                        <xsl:value-of select="$params/citation/openbracket" disable-output-escaping="yes"/>
                    </xsl:if>

                    <!-- Not handled: MinAuthors, SameAuthors, RepeatedAuthor. -->
                    <xsl:variable name="citation">
                        <!-- Get the format string. -->
                        <xsl:variable name="format">
                            <xsl:variable name="type" select="/b:Citation/b:Source/b:Type"/>
                            <xsl:variable name="sourcetype" select="/b:Citation/b:Source/b:SourceType"/>

                            <xsl:choose>
                                <!-- If there is no source type, it's a placeholder. -->
                                <xsl:when
                                        test="string-length($sourcetype) = 0 and string-length(msxsl:node-set($data)/citation/source[@type = 'Placeholder']/format) > 0">
                                    <xsl:value-of
                                            select="msxsl:node-set($data)/citation/source[@type = 'Placeholder']/format"/>
                                </xsl:when>
                                <!-- Go for the type element if available. -->
                                <xsl:when
                                        test="string-length($type) > 0 and string-length(msxsl:node-set($data)/citation/source[@type = $type]/format) > 0 ">
                                    <xsl:value-of select="msxsl:node-set($data)/citation/source[@type = $type]/format"/>
                                </xsl:when>
                                <!-- Else go for the source type element if available. -->
                                <xsl:when
                                        test="string-length(msxsl:node-set($data)/citation/source[@type = $sourcetype]/format) > 0 ">
                                    <xsl:value-of
                                            select="msxsl:node-set($data)/citation/source[@type = $sourcetype]/format"/>
                                </xsl:when>
                                <!-- Else display error message. -->
                                <xsl:otherwise>
                                    <xsl:if test="msxsl:node-set($data)/general/display_errors = 'yes'">
                                        <xsl:text>&lt;b&gt;Unsupported </xsl:text>
                                        <xsl:if test="string-length($type) > 0">
                                            <xsl:text>type (</xsl:text>
                                            <xsl:value-of select="$type"/>
                                            <xsl:text>) and </xsl:text>
                                        </xsl:if>
                                        <xsl:text>source type (</xsl:text>
                                        <xsl:value-of select="$sourcetype"/>
                                        <xsl:text>) for source </xsl:text>
                                        <xsl:value-of select="/b:Citation/b:Source/b:Tag"/>
                                        <xsl:text>.&lt;/b&gt;</xsl:text>
                                    </xsl:if>
                                </xsl:otherwise>
                            </xsl:choose>

                        </xsl:variable>

                        <!-- Extend the source. -->
                        <xsl:variable name="extendedSource">
                            <b:Source>
                                <xsl:copy-of select="/b:Citation/b:Source/*"/>
                                <!-- For processing the \f parameter. -->
                                <b:CitationPrefix>
                                    <xsl:value-of select="/b:Citation/b:PagePrefix"/>
                                </b:CitationPrefix>
                                <!-- For processing the \s parameter. -->
                                <b:CitationSuffix>
                                    <xsl:value-of select="/b:Citation/b:PageSuffix"/>
                                </b:CitationSuffix>
                                <!-- For processing the \p parameter. -->
                                <b:CitationPages>
                                    <xsl:value-of select="/b:Citation/b:Pages"/>
                                </b:CitationPages>
                                <!-- For processing the \v parameter. -->
                                <b:CitationVolume>
                                    <xsl:value-of select="/b:Citation/b:Volume"/>
                                </b:CitationVolume>
                            </b:Source>
                        </xsl:variable>

                        <xsl:call-template name="format-source">
                            <xsl:with-param name="format" select="$format"/>
                            <xsl:with-param name="source" select="msxsl:node-set($extendedSource)/b:Source"/>
                            <xsl:with-param name="disallowed">
                                <!-- Do not display the authors of the work. -->
                                <xsl:if test="/b:Citation/b:NoAuthor">
                                    <xsl:value-of select="msxsl:node-set($data)/citation/noauthor"/>
                                </xsl:if>
                                <!-- Do not display the title of the work. -->
                                <xsl:if test="/b:Citation/b:NoTitle">
                                    <xsl:value-of select="msxsl:node-set($data)/citation/notitle"/>
                                </xsl:if>
                                <!-- Do not display the year the work was written or accessed in. -->
                                <xsl:if test="/b:Citation/b:NoYear">
                                    <xsl:value-of select="msxsl:node-set($data)/citation/noyear"/>
                                </xsl:if>
                            </xsl:with-param>
                        </xsl:call-template>
                    </xsl:variable>

                    <xsl:choose>
                        <xsl:when test="$params/general/citation_as_link = 'yes'">
                            <a href="#{/b:Citation/b:Source/b:Tag}">
                                <xsl:value-of select="$citation" disable-output-escaping="yes"/>
                            </a>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$citation" disable-output-escaping="yes"/>
                        </xsl:otherwise>
                    </xsl:choose>

                    <!-- end citation -->

                    <!-- Display the group separator if this is not the last citation. -->
                    <xsl:if test="not(/b:Citation/b:LastAuthor)">
                        <xsl:value-of select="$params/citation/separator" disable-output-escaping="yes"/>
                    </xsl:if>

                    <!-- Display the close bracket if this is the last citation. -->
                    <xsl:if test="/b:Citation/b:LastAuthor">
                        <xsl:value-of select="$params/citation/closebracket" disable-output-escaping="yes"/>
                    </xsl:if>

                </p>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>