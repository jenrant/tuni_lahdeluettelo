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

        <html xmlns="https://www.w3.org/TR/html40" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
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

    <!-- Formats the footnote citation. -->
    <xsl:template name="format-footnote-citation">

        <!-- Generate an XML node-set from the formatting data. -->
        <xsl:variable name="params" select="msxsl:node-set($data)"/>

        <html xmlns="https://www.w3.org/TR/html40" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
              xsi:schemaLocation="https://www.w3.org/TR/html40 ">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
            </head>
            <body>
                <p class="MsoBibliography">

                    <!-- Display the open bracket if this is the first citation. -->
                    <xsl:if test="/b:FootnoteCitation/b:FirstAuthor">
                        <xsl:value-of select="$params/footnotecitation/openbracket" disable-output-escaping="yes"/>
                    </xsl:if>

                    <!-- Not handled: MinAuthors, SameAuthors, RepeatedAuthor. -->
                    <xsl:variable name="citation">
                        <!-- Get the format string. -->
                        <xsl:variable name="format">
                            <xsl:variable name="type" select="/b:FootnoteCitation/b:Source/b:Type"/>
                            <xsl:variable name="sourcetype" select="/b:FootnoteCitation/b:Source/b:SourceType"/>

                            <xsl:choose>
                                <!-- If there is no source type, its a placeholder. -->
                                <xsl:when
                                        test="string-length($sourcetype) = 0 and string-length(msxsl:node-set($data)/footnotecitation/source[@type = 'Placeholder']/format) > 0">
                                    <xsl:value-of
                                            select="msxsl:node-set($data)/footnotecitation/source[@type = 'Placeholder']/format"/>
                                </xsl:when>
                                <!-- Go for the type element if available. -->
                                <xsl:when
                                        test="string-length($type) > 0 and string-length(msxsl:node-set($data)/footnotecitation/source[@type = $type]/format) > 0 ">
                                    <xsl:value-of
                                            select="msxsl:node-set($data)/footnotecitation/source[@type = $type]/format"/>
                                </xsl:when>
                                <!-- Else go for the source type element if available. -->
                                <xsl:when
                                        test="string-length(msxsl:node-set($data)/footnotecitation/source[@type = $sourcetype]/format) > 0 ">
                                    <xsl:value-of
                                            select="msxsl:node-set($data)/footnotecitation/source[@type = $sourcetype]/format"/>
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
                                        <xsl:value-of select="/b:FootnoteCitation/b:Source/b:Tag"/>
                                        <xsl:text>.&lt;/b&gt;</xsl:text>
                                    </xsl:if>
                                </xsl:otherwise>
                            </xsl:choose>

                        </xsl:variable>

                        <!-- Extend the source. -->
                        <xsl:variable name="extendedSource">
                            <b:Source>
                                <xsl:copy-of select="/b:FootnoteCitation/b:Source/*"/>
                                <!-- For processing the \f parameter. -->
                                <b:FootnoteCitationPrefix>
                                    <xsl:value-of select="/b:FootnoteCitation/b:PagePrefix"/>
                                </b:FootnoteCitationPrefix>
                                <!-- For processing the \s parameter. -->
                                <b:FootnoteCitationSuffix>
                                    <xsl:value-of select="/b:FootnoteCitation/b:PageSuffix"/>
                                </b:FootnoteCitationSuffix>
                                <!-- For processing the \p parameter. -->
                                <b:FootnoteCitationPages>
                                    <xsl:value-of select="/b:FootnoteCitation/b:Pages"/>
                                </b:FootnoteCitationPages>
                                <!-- For processing the \v parameter. -->
                                <b:FootnoteCitationVolume>
                                    <xsl:value-of select="/b:FootnoteCitation/b:Volume"/>
                                </b:FootnoteCitationVolume>
                            </b:Source>
                        </xsl:variable>

                        <xsl:call-template name="format-source">
                            <xsl:with-param name="format" select="$format"/>
                            <xsl:with-param name="source" select="msxsl:node-set($extendedSource)/b:Source"/>
                            <xsl:with-param name="disallowed">
                                <!-- Do not display the authors of the work. -->
                                <xsl:if test="/b:FootnoteCitation/b:NoAuthor">
                                    <xsl:value-of select="msxsl:node-set($data)/citation/noauthor"/>
                                </xsl:if>
                                <!-- Do not display the title of the work. -->
                                <xsl:if test="/b:FootnoteCitation/b:NoTitle">
                                    <xsl:value-of select="msxsl:node-set($data)/citation/notitle"/>
                                </xsl:if>
                                <!-- Do not display the year the work was written or accessed in. -->
                                <xsl:if test="/b:FootnoteCitation/b:NoYear">
                                    <xsl:value-of select="msxsl:node-set($data)/citation/noyear"/>
                                </xsl:if>
                            </xsl:with-param>
                        </xsl:call-template>
                    </xsl:variable>

                    <xsl:value-of select="$citation" disable-output-escaping="yes"/>
                    <!-- end citation -->

                    <!-- Display the group separator if this is not the last citation. -->
                    <xsl:if test="not(/b:FootnoteCitation/b:LastAuthor)">
                        <xsl:value-of select="$params/citation/separator" disable-output-escaping="yes"/>
                    </xsl:if>

                    <!-- Display the close bracket if this is the last citation. -->
                    <xsl:if test="/b:FootnoteCitation/b:LastAuthor">
                        <xsl:value-of select="$params/citation/closebracket" disable-output-escaping="yes"/>
                    </xsl:if>

                </p>
            </body>
        </html>

    </xsl:template>

    <!-- Formats the bibliography. -->
    <xsl:template name="format-bibliography">

        <!-- Extends the b:Source elements of the b:Bibliography element with a b:SortKey. -->
        <xsl:variable name="extendedBib">
            <!-- Create a b:Bibliography element. -->
            <b:Bibliography>
                <!-- Extend all the b:Source elements with a sortkey. -->
                <xsl:for-each select="/b:Bibliography/b:Source">
                    <b:Source>
                        <!-- Copy the content of the b:Source. -->
                        <xsl:copy-of select="./*"/>

                        <!-- Add a sorting key. -->
                        <xsl:call-template name="create-sortkey">
                            <xsl:with-param name="source" select="."/>
                        </xsl:call-template>
                    </b:Source>
                </xsl:for-each>

                <!-- With the exception of the b:Source elements, copy all elements (not really used by the stylesheets). -->
                <!--<xsl:for-each select="/b:Bibliography/*">
                  <xsl:if test="local-name() != 'Source'">
                    <xsl:element name="{name()}" namespace="{namespace-uri()}">
                      <xsl:value-of select="."/>
                    </xsl:element>
                  </xsl:if>
                </xsl:for-each>-->

            </b:Bibliography>
        </xsl:variable>

        <html xmlns="http://www.w3.org/TR/html40" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
              xsi:schemaLocation="http://www.w3.org/TR/html40 ">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <style>
                    p.MsoBibliography
                </style>
            </head>
            <body>

                <xsl:choose>
                    <!-- If there is more than one column, use a table layout. -->
                    <xsl:when test="msxsl:node-set($data)/bibliography/columns > 1">
                        <xsl:call-template name="format-bibliography-as-table">
                            <xsl:with-param name="bibNodeSet" select="msxsl:node-set($extendedBib)"/>
                        </xsl:call-template>
                    </xsl:when>
                    <!-- Otherwise use a paragraph layout. -->
                    <xsl:otherwise>
                        <xsl:call-template name="format-bibliography-as-paragraphs">
                            <xsl:with-param name="bibNodeSet" select="msxsl:node-set($extendedBib)"/>
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>

            </body>
        </html>

    </xsl:template>

    <!-- Formats a bibliography as a series of paragraphs. -->
    <xsl:template name="format-bibliography-as-paragraphs">
        <xsl:param name="bibNodeSet"/>

        <xsl:for-each select="$bibNodeSet/b:Bibliography/b:Source">
            <xsl:sort select="b:SortKey" data-type="text"/>

            <p class="MsoBibliography">
                <!-- Get the format string. -->
                <xsl:variable name="format">
                    <xsl:variable name="type" select="./b:Type"/>
                    <xsl:variable name="sourcetype" select="./b:SourceType"/>

                    <xsl:choose>
                        <!-- If there is no source type, its a placeholder. -->
                        <xsl:when test="string-length($sourcetype) = 0 and string-length(msxsl:node-set($data)/bibliography/source[@type = 'Placeholder']/column[@id = '1']/format) > 0">
                            <xsl:value-of select="msxsl:node-set($data)/bibliography/source[@type = 'Placeholder']/column[@id = '1']/format"/>
                        </xsl:when>
                        <!-- Go for the type element if available. -->
                        <xsl:when test="string-length($type) > 0 and string-length(msxsl:node-set($data)/bibliography/source[@type = $type]/column[@id = '1']/format) > 0 ">
                            <xsl:value-of select="msxsl:node-set($data)/bibliography/source[@type = $type]/column[@id = '1']/format"/>
                        </xsl:when>
                        <!-- Else go for the source type element if available. -->
                        <xsl:when test="string-length(msxsl:node-set($data)/bibliography/source[@type = $sourcetype]/column[@id = '1']/format) > 0 ">
                            <xsl:value-of select="msxsl:node-set($data)/bibliography/source[@type = $sourcetype]/column[@id = '1']/format"/>
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
                                <xsl:value-of select="./b:Tag"/>
                                <xsl:text>.&lt;/b&gt;</xsl:text>
                            </xsl:if>
                        </xsl:otherwise>
                    </xsl:choose>

                </xsl:variable>

                <!-- Format the source. -->
                <xsl:variable name="paragraphX">
                    <xsl:call-template name="format-source">
                        <xsl:with-param name="format" select="$format"/>
                        <xsl:with-param name="source" select="."/>
                    </xsl:call-template>
                </xsl:variable>

                <!-- Convert the formatted source to html. -->
                <xsl:choose>
                    <xsl:when test="msxsl:node-set($data)/general/citation_as_link = 'yes'">
                        <a name="{./b:Tag}">
                            <xsl:value-of select="$paragraphX" disable-output-escaping="yes"/>
                        </a>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$paragraphX" disable-output-escaping="yes"/>
                    </xsl:otherwise>
                </xsl:choose>
            </p>

        </xsl:for-each>

    </xsl:template>

    <!-- Formats a bibliography as a table. -->
    <xsl:template name="format-bibliography-as-table">
        <xsl:param name="bibNodeSet"/>

        <!-- Empty paragraph hack for table. -->
        <p class="MsoBibliography" style="display:none;">x</p>

        <table width="100%">
            <xsl:for-each select="$bibNodeSet/b:Bibliography/b:Source">
                <xsl:sort select="b:SortKey" data-type="text"/>

                <tr>
                    <xsl:call-template name="format-bibliography-table-column">
                        <xsl:with-param name="columnId" select="1"/>
                        <xsl:with-param name="source" select="."/>
                    </xsl:call-template>
                </tr>

            </xsl:for-each>
        </table>

        <!-- Empty paragraph hack for table. -->
        <p class="MsoBibliography" style="display:none;">x</p>

    </xsl:template>

    <!-- Formats a single column in a bibliography. -->
    <xsl:template name="format-bibliography-table-column">
        <!-- Source to format. -->
        <xsl:param name="source"/>
        <!-- id of the column to format. -->
        <xsl:param name="columnId"/>

        <!-- Generate an XML node-set from the formatting data. -->
        <xsl:variable name="params" select="msxsl:node-set($data)"/>

        <!-- Get the format string. -->
        <xsl:variable name="format">
            <xsl:variable name="type" select="./b:Type"/>
            <xsl:variable name="sourcetype" select="./b:SourceType"/>

            <xsl:choose>
                <!-- If there is no source type, it's a placeholder. -->
                <xsl:when test="string-length($sourcetype) = 0 and string-length(msxsl:node-set($data)/bibliography/source[@type = 'Placeholder']/column[@id = $columnId]/format) > 0">
                    <xsl:value-of select="msxsl:node-set($data)/bibliography/source[@type = 'Placeholder']/column[@id = $columnId]/format"/>
                </xsl:when>
                <!-- Go for the type element if available. -->
                <xsl:when test="string-length($type) > 0 and string-length(msxsl:node-set($data)/bibliography/source[@type = $type]/column[@id = $columnId]/format) > 0 ">
                    <xsl:value-of select="msxsl:node-set($data)/bibliography/source[@type = $type]/column[@id = $columnId]/format"/>
                </xsl:when>
                <!-- Else go for the source type element if available. -->
                <xsl:when test="string-length(msxsl:node-set($data)/bibliography/source[@type = $sourcetype]/column[@id = $columnId]/format) > 0 ">
                    <xsl:value-of select="msxsl:node-set($data)/bibliography/source[@type = $sourcetype]/column[@id = $columnId]/format"/>
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
                        <xsl:value-of select="./b:Tag"/>
                        <xsl:text>.&lt;/b&gt;</xsl:text>
                    </xsl:if>
                </xsl:otherwise>
            </xsl:choose>

        </xsl:variable>

        <!-- Not really efficient at the moment, but it does the trick so errors can be displayed. -->
        <xsl:variable name="type">
            <xsl:variable name="temp" select="$source/b:Type"/>
            <xsl:variable name="temp2" select="$source/b:SourceType"/>

            <xsl:choose>
                <xsl:when test="string-length($temp2) = 0 and string-length(msxsl:node-set($data)/bibliography/source[@type = $temp2]/column[@id = $columnId]/format) > 0 ">
                    <xsl:value-of select="'Placeholder'"/>
                </xsl:when>
                <xsl:when test="string-length($temp) > 0 and string-length(msxsl:node-set($data)/bibliography/source[@type = $temp]/column[@id = $columnId]/format) > 0 ">
                    <xsl:value-of select="$temp"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$source/b:SourceType"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <td align="{$params/bibliography/source[@type = $type]/column[@id = $columnId]/halign}" valign="{$params/bibliography/source[@type = $type]/column[@id = $columnId]/valign}">
            <p class="MsoBibliography">

                <xsl:variable name="columnX">
                    <xsl:call-template name="format-source">
                        <xsl:with-param name="format" select="$format"/>
                        <xsl:with-param name="source" select="$source"/>
                    </xsl:call-template>
                </xsl:variable>

                <!-- Convert the formatted source to html. -->
                <xsl:choose>
                    <xsl:when test="msxsl:node-set($data)/general/citation_as_link = 'yes' and $columnId = 1">
                        <a name="{$source/b:Tag}">
                            <xsl:value-of select="$columnX" disable-output-escaping="yes"/>
                        </a>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$columnX" disable-output-escaping="yes"/>
                    </xsl:otherwise>
                </xsl:choose>
            </p>
        </td>

        <!-- Process remaining columns recursively. -->
        <xsl:if test="$params/bibliography/columns > $columnId">
            <xsl:call-template name="format-bibliography-table-column">
                <xsl:with-param name="source" select="$source"/>
                <xsl:with-param name="columnId" select="$columnId + 1"/>
            </xsl:call-template>
        </xsl:if>

    </xsl:template>

    <!-- Preprocesses a format string by adding level information to every marker.
     '{' and '}' change into '{level}' and '%' changes into '%level%' where
     level is the depth in the format string.
     This will allow for faster processing by the formatting templates. -->
    <xsl:template name="preprocess-format-string">
        <!-- String to process. -->
        <xsl:param name="string"/>

        <!-- Adds balanced brackets around the entire string to help others. -->
        <xsl:text>{0}</xsl:text>

        <xsl:call-template name="preprocess-format-string-part-2">
            <xsl:with-param name="string" select="$string"/>
        </xsl:call-template>

        <!-- Adds balanced brackets around the entire string to help others. -->
        <xsl:text>{0}</xsl:text>
    </xsl:template>

    <!-- Recursively called helper function for the preprocess-format-string template. -->
    <xsl:template name="preprocess-format-string-part-2">
        <!-- Remaining string. -->
        <xsl:param name="string"/>
        <!-- Current level. -->
        <xsl:param name="level" select="0"/>

        <xsl:if test="string-length($string) > 0">
            <!-- Get the first character of the remaining string. -->
            <xsl:variable name="firstChar" select="substring($string, 1, 1)"/>

            <xsl:choose>
                <!-- A new level is reached. -->
                <xsl:when test="$firstChar = '{'">
                    <!-- Calculate the next level. -->
                    <xsl:variable name="nextLevel" select="$level + 1"/>

                    <!-- Display a conditional processing marker. -->
                    <xsl:text>{</xsl:text>
                    <xsl:value-of select="$nextLevel"/>
                    <xsl:text>}</xsl:text>

                    <!-- Recursively process the rest of the string. -->
                    <xsl:call-template name="preprocess-format-string-part-2">
                        <xsl:with-param name="string" select="substring($string, 2)"/>
                        <xsl:with-param name="level" select="$nextLevel"/>
                    </xsl:call-template>
                </xsl:when>
                <!-- The current level is finished. -->
                <xsl:when test="$firstChar = '}'">
                    <!-- Display a conditional processing marker. -->
                    <xsl:text>{</xsl:text>
                    <xsl:value-of select="$level"/>
                    <xsl:text>}</xsl:text>

                    <!-- Recursively process the rest of the string. -->
                    <xsl:call-template name="preprocess-format-string-part-2">
                        <xsl:with-param name="string" select="substring($string, 2)"/>
                        <xsl:with-param name="level" select="$level - 1"/>
                    </xsl:call-template>
                </xsl:when>
                <!-- A variable at the current level starts. -->
                <xsl:when test="$firstChar = '%'">
                    <!-- Display a variable processing marker (start of variable). -->
                    <xsl:text>%</xsl:text>
                    <xsl:value-of select="$level"/>
                    <xsl:text>%</xsl:text>

                    <!-- Display the variable (no use in parsing character by character).-->
                    <xsl:value-of select="substring-before(substring($string, 2), '%')"/>

                    <!-- Display a variable processing marker (end of variable). -->
                    <xsl:text>%</xsl:text>
                    <xsl:value-of select="$level"/>
                    <xsl:text>%</xsl:text>

                    <!-- Recursively process the rest of the string. -->
                    <xsl:call-template name="preprocess-format-string-part-2">
                        <xsl:with-param name="string" select="substring-after(substring($string, 2), '%')"/>
                        <xsl:with-param name="level" select="$level"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:otherwise>
                    <!-- Display the first character -->
                    <xsl:value-of select="$firstChar"/>

                    <!-- Recursively process the rest of the string. -->
                    <xsl:call-template name="preprocess-format-string-part-2">
                        <xsl:with-param name="string" select="substring($string, 2)"/>
                        <xsl:with-param name="level" select="$level"/>
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:template>

    <!-- Formats a b:Source element. -->
    <xsl:template name="format-source">
        <!-- The b:Source element to format. -->
        <xsl:param name="source"/>
        <!-- The format in which to display the b:Source element. -->
        <xsl:param name="format"/>
        <!-- b:Source child elements which can not be used (-name1-name2).-->
        <xsl:param name="disallowed"/>

        <xsl:call-template name="clean-punctuation">
            <xsl:with-param name="string">
                <xsl:call-template name="format-source-part-2">
                    <xsl:with-param name="source" select="$source"/>
                    <xsl:with-param name="format">
                        <xsl:call-template name="preprocess-format-string">
                            <xsl:with-param name="string" select="$format"/>
                        </xsl:call-template>
                    </xsl:with-param>
                    <xsl:with-param name="used" select="$disallowed"/>
                </xsl:call-template>
            </xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <!-- Helper function for format-source. This function recursively
     resolves the highest level of the first conditional branch of
     the format string. It will return the entire string with at
     least one less conditional branch.
  -->
    <xsl:template name="format-source-part-2">
        <!-- The b:Source element to format. -->
        <xsl:param name="source"/>
        <!-- The preprocessed format in which to display the b:Source element. -->
        <xsl:param name="format"/>
        <!-- b:Source child elements which can not be used (-name1-name2-).-->
        <xsl:param name="used"/>

        <xsl:choose>
            <!-- Check if there is still conditional processing to do. -->
            <xsl:when test="contains($format, '{')">
                <!-- Get the first level to process. -->
                <xsl:variable name="level" select="substring-before(substring-after($format, '{'), '}')"/>

                <!-- Retrieve the delimeters of the level to process. -->
                <xsl:variable name="delim" select="concat('{', $level,'}')"/>

                <xsl:variable name="current">
                    <xsl:call-template name="format-source-part-3">
                        <!-- The current source. -->
                        <xsl:with-param name="source" select="$source"/>
                        <!-- Retrieve the part that has to be processed during this run. -->
                        <xsl:with-param name="format" select="substring-before(substring-after($format, $delim), $delim)"/>
                        <!-- List of variables which can no longer be used. -->
                        <xsl:with-param name="used" select="$used"/>
                        <!-- Level of variables to process during this run. -->
                        <xsl:with-param name="level" select="$level"/>
                    </xsl:call-template>
                </xsl:variable>

                <!-- Part before the part that was processed in this run. -->
                <xsl:value-of select="substring-before($format, $delim)"/>

                <!-- Recursively process the entire string. -->
                <xsl:call-template name="format-source-part-2">
                    <!-- The same old source. -->
                    <xsl:with-param name="source" select="$source"/>
                    <!-- The format string of which one condition is removed. -->
                    <xsl:with-param name="format">
                        <!-- Result of the part processed in this run. As it can still contain
                             lower level conditional formatting, it has to be reprocessed. -->
                        <xsl:value-of select="msxsl:node-set($current)/output"/>
                        <!-- Part after the part that was processed in this run. -->
                        <xsl:value-of select="substring-after(substring-after($format, $delim), $delim)"/>
                    </xsl:with-param>
                    <!-- Updated used containing now also the variables used in this run. -->
                    <xsl:with-param name="used" select="concat($used, msxsl:node-set($current)/used)"/>
                </xsl:call-template>

            </xsl:when>
            <!-- Otherwise, print the entire leftover string. -->
            <xsl:otherwise>
                <xsl:value-of select="$format"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- Helper function for format-source-part-2. This function recursively
         resolves the variables at the current level.
      -->
    <xsl:template name="format-source-part-3">
        <!-- The b:Source element to format. -->
        <xsl:param name="source"/>
        <!-- The preprocessed format in which to display the b:Source element. -->
        <xsl:param name="format"/>
        <!-- b:Source child elements which can not be used (-name1-name2-). -->
        <xsl:param name="used"/>
        <!-- Level of variables to process. -->
        <xsl:param name="level"/>
        <!-- Output so far for this part. -->
        <xsl:param name="outputAtCurrentLevel" select="''"/>
        <!-- b:Source child elements which can not be used because they are
             already used at this level. They are an extension to 'used'. -->
        <xsl:param name="usedAtCurrentLevel" select="''"/>

        <xsl:choose>
            <!-- Check if further processing has to be done. -->
            <xsl:when test="string-length($format) > 0">
                <!-- Get the delimeter for the current level of parameters to process. -->
                <xsl:variable name="delim" select="concat('%', $level, '%')"/>

                <xsl:choose>
                    <!-- Check if there are variables left at the current level to process. -->
                    <xsl:when test="contains($format, $delim)">

                        <!-- Get the name of the first available element in the first parameter part. -->
                        <xsl:variable name="name">
                            <xsl:call-template name="get-source-parameter">
                                <xsl:with-param name="parameters" select="substring-before(substring-after($format, $delim), $delim)"/>
                                <xsl:with-param name="source" select="$source"/>
                                <xsl:with-param name="used" select="concat($used, $usedAtCurrentLevel)"/>
                            </xsl:call-template>
                        </xsl:variable>

                        <xsl:variable name="result">
                            <xsl:if test="string-length($name) > 0">
                                <!-- Get the formatting options for the element. -->
                                <xsl:variable name="options">
                                    <xsl:call-template name="substring-before-ex">
                                        <xsl:with-param name="string" select="substring-after(substring-before(substring-after($format, $delim), $delim), concat($name, ':'))"/>
                                        <xsl:with-param name="delimeter" select="'|'"/>
                                    </xsl:call-template>
                                </xsl:variable>

                                <xsl:choose>
                                    <!-- Handle "or" strings in format; e.g.: {%Year|"n.d."%} -->
                                    <xsl:when test="starts-with($name, '&#x22;') and substring($name, string-length($name), 1) = '&#x22;'">
                                        <xsl:value-of select="substring-before(substring-after($name, '&#x22;'), '&#x22;')"/>
                                    </xsl:when>
                                    <!-- Handle non-empty author parameters. -->
                                    <xsl:when test="string($source/b:Author/*[local-name() = $name])">
                                        <!-- Remove non-numeric characters from the options section (mostly for the r option). -->
                                        <xsl:variable name="options2" select="translate($options, translate($options, '0123456789', ''), '')"/>

                                        <xsl:choose>
                                            <!-- Handle contributors of which the format is specified. -->
                                            <xsl:when test="string-length($options2) > 0">
                                                <xsl:call-template name="format-contributors-by-params">
                                                    <xsl:with-param name="contributors" select="$source/b:Author/*[local-name() = $name]"/>
                                                    <xsl:with-param name="params" select="msxsl:node-set($data)/namelists/list[@id = $options2]"/>
                                                </xsl:call-template>
                                            </xsl:when>
                                            <!-- Handle contributor counting. -->
                                            <xsl:when test="translate($options, translate($options, 'c', ''), '') = 'c'">
                                                <xsl:call-template name="count-contributors">
                                                    <xsl:with-param name="contributors" select="$source/b:Author/*[local-name() = $name]"/>
                                                </xsl:call-template>
                                            </xsl:when>
                                            <!-- Handle contributors of which the format is not specified. -->
                                            <xsl:otherwise>
                                                <xsl:call-template name="format-contributors-by-params">
                                                    <xsl:with-param name="contributors" select="$source/b:Author/*[local-name() = $name]"/>
                                                    <xsl:with-param name="params" select="msxsl:node-set($data)/namelists/list[@id = 0]"/>
                                                </xsl:call-template>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:when>
                                    <!-- Handle pages. -->
                                    <xsl:when test="$name = 'Pages' and string($source/b:Pages)">
                                        <xsl:call-template name="format-pages">
                                            <xsl:with-param name="pages" select="$source/b:Pages"/>
                                            <xsl:with-param name="options" select="$options"/>
                                        </xsl:call-template>
                                    </xsl:when>
                                    <!-- Handle cited pages. -->
                                    <xsl:when test="$name = 'CitationPages' and string($source/b:CitationPages)">
                                        <xsl:call-template name="format-pages">
                                            <xsl:with-param name="pages" select="$source/b:CitationPages"/>
                                            <xsl:with-param name="options" select="$options"/>
                                        </xsl:call-template>
                                    </xsl:when>
                                    <!-- Handle URLs. -->
                                    <xsl:when test="$name = 'URL' and string($source/b:URL)">
                                        <xsl:call-template name="format-url">
                                            <xsl:with-param name="url" select="$source/b:URL"/>
                                            <xsl:with-param name="options" select="$options"/>
                                        </xsl:call-template>
                                    </xsl:when>
                                    <!-- Handle years and years accessed. -->
                                    <xsl:when test="starts-with($name, 'Year') and string($source/*[local-name() = $name])">
                                        <xsl:call-template name="format-year">
                                            <xsl:with-param name="year" select="$source/*[local-name() = $name]"/>
                                            <xsl:with-param name="options" select="$options"/>
                                        </xsl:call-template>
                                    </xsl:when>
                                    <!-- Handle days and days accessed. -->
                                    <xsl:when test="starts-with($name, 'Day') and string($source/*[local-name() = $name])">
                                        <xsl:call-template name="format-day">
                                            <xsl:with-param name="day" select="$source/*[local-name() = $name]"/>
                                            <xsl:with-param name="options" select="$options"/>
                                        </xsl:call-template>
                                    </xsl:when>
                                    <!-- Handle titles. -->
                                    <xsl:when test="contains($name, 'Title') and string($source/*[local-name() = $name])">
                                        <!-- Format the title. -->
                                        <xsl:variable name="title">
                                            <xsl:call-template name="format-title">
                                                <xsl:with-param name="title" select="$source/*[local-name() = $name]"/>
                                                <xsl:with-param name="options" select="$options"/>
                                                <xsl:with-param name="delimeter">
                                                    <xsl:choose>
                                                        <xsl:when test="string-length(msxsl:node-set($data)/overrides/titles/delimeter) > 0">
                                                            <xsl:value-of select="msxsl:node-set($data)/overrides/titles/delimeter"/>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <xsl:text>:</xsl:text>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </xsl:with-param>
                                                <xsl:with-param name="articles">
                                                    <xsl:choose>
                                                        <xsl:when test="string-length(msxsl:node-set($data)/overrides/titles/articles) > 0">
                                                            <xsl:value-of select="msxsl:node-set($data)/overrides/titles/articles"/>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <xsl:text>-A-AN-THE-</xsl:text>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </xsl:with-param>
                                            </xsl:call-template>
                                        </xsl:variable>
                                        <!-- Display the title or %empty% if the title is empty. -->
                                        <xsl:choose>
                                            <xsl:when test="string-length($title) = 0">
                                                <xsl:text>%empty%</xsl:text>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="$title"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:when>
                                    <!-- Handle volume and citation volume. -->
                                    <xsl:when test="($name = 'Volume' or $name = 'CitationVolume') and string($source/*[local-name() = $name]) and number($source/*[local-name() = $name]) > 0">
                                        <xsl:call-template name="format-number">
                                            <xsl:with-param name="number" select="$source/*[local-name() = $name]"/>
                                            <xsl:with-param name="options" select="translate($options, translate($options, 'R', ''), '')"/>
                                        </xsl:call-template>
                                    </xsl:when>
                                    <!-- Handle months and months accessed. -->
                                    <xsl:when test="starts-with($name, 'Month') and string($source/*[local-name() = $name])">
                                        <xsl:call-template name="format-month">
                                            <xsl:with-param name="month" select="$source/*[local-name() = $name]"/>
                                            <xsl:with-param name="options" select="$options"/>
                                        </xsl:call-template>
                                    </xsl:when>
                                    <!-- Handle source types. -->
                                    <xsl:when test="$name = 'SourceType' and string($source/b:SourceType)">
                                        <xsl:call-template name="format-sourcetype">
                                            <xsl:with-param name="type" select="$source/b:SourceType"/>
                                            <xsl:with-param name="options" select="$options"/>
                                        </xsl:call-template>
                                    </xsl:when>
                                    <!-- Handle all other non-empty, non-author parameters. -->
                                    <xsl:when test="string($source/*[local-name() = $name])">
                                        <xsl:choose>
                                            <xsl:when test="contains($options, 'u')">
                                                <xsl:call-template name="upper-case">
                                                    <xsl:with-param name ="string" select="$source/*[local-name() = $name]"/>
                                                </xsl:call-template>
                                            </xsl:when>
                                            <xsl:when test="contains($options, 'l')">
                                                <xsl:call-template name="lower-case">
                                                    <xsl:with-param name ="string" select="$source/*[local-name() = $name]"/>
                                                </xsl:call-template>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="$source/*[local-name() = $name]"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:if>
                            <!-- Mark the element as being empty. -->
                            <xsl:if test="string-length($name) = 0">
                                <xsl:text>%empty%</xsl:text>
                            </xsl:if>
                        </xsl:variable>

                        <xsl:if test="$result != '%empty%'">
                            <xsl:call-template name="format-source-part-3">
                                <xsl:with-param name="source" select="$source"/>
                                <!-- Process the part remaining after the current part. -->
                                <xsl:with-param name="format" select="substring-after(substring-after($format, $delim), $delim)"/>
                                <xsl:with-param name="level" select="$level"/>
                                <xsl:with-param name="used" select="$used"/>
                                <xsl:with-param name="outputAtCurrentLevel">
                                    <xsl:value-of select="$outputAtCurrentLevel"/>
                                    <!-- Output before the result of this round. -->
                                    <xsl:value-of select="substring-before($format, $delim)"/>
                                    <!-- Result from this round-->
                                    <xsl:value-of select="$result"/>
                                </xsl:with-param>
                                <xsl:with-param name="usedAtCurrentLevel">
                                    <xsl:value-of select="$usedAtCurrentLevel"/>
                                    <!-- Used this round. -->
                                    <xsl:if test="string-length($name) > 0">
                                        <!-- Get the formatting options for the element. -->
                                        <xsl:variable name="options">
                                            <xsl:call-template name="substring-before-ex">
                                                <xsl:with-param name="string" select="substring-after(substring-before(substring-after($format, $delim), $delim), concat($name, ':'))"/>
                                                <xsl:with-param name="delimeter" select="'|'"/>
                                            </xsl:call-template>
                                        </xsl:variable>
                                        <!-- Only add the variable to the used list if the 'r' option is not used. -->
                                        <xsl:if test="not(contains($options, 'r'))">
                                            <xsl:text>-</xsl:text>
                                            <xsl:value-of select="$name"/>
                                            <xsl:text>-</xsl:text>
                                        </xsl:if>
                                    </xsl:if>
                                </xsl:with-param>
                            </xsl:call-template>
                        </xsl:if>
                    </xsl:when>
                    <!-- Otherwise there are no variables left to process. -->
                    <xsl:otherwise>
                        <xsl:call-template name="format-source-part-3">
                            <xsl:with-param name="format" select="''"/>
                            <xsl:with-param name="outputAtCurrentLevel" select="concat($outputAtCurrentLevel, $format)"/>
                            <xsl:with-param name="usedAtCurrentLevel" select="$usedAtCurrentLevel"/>
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>

            </xsl:when>
            <!-- Otherwise, finish the output of the function. -->
            <xsl:otherwise>
                <xsl:choose>
                    <!-- Check if anything has to be send to the output and if the used variables section has to be updated. -->
                    <xsl:when test="not(contains($outputAtCurrentLevel, '%empty%')) and string-length($outputAtCurrentLevel) > 0">
                        <output>
                            <xsl:value-of select="$outputAtCurrentLevel"/>
                        </output>
                        <used>
                            <xsl:value-of select="$usedAtCurrentLevel"/>
                        </used>
                    </xsl:when>
                    <!-- Otherwise, nothing has to be send to the output. The used variables stay used. -->
                    <xsl:otherwise>
                        <output></output>
                        <used></used>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>