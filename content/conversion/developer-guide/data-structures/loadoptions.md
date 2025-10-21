---
id: "loadoptions"
url: "conversion/loadoptions"
title: "LoadOptions"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
---

## CadLoadOptions - dxf, dwg, dgn, dwf, stl, Ifc, plt, Igs

| Properties | Description
|---|---
|format|The format of input file, ("docx", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions.
|layoutNames| Specify which layouts to be converted
|backgroundColor|A background color (for example: "Green")
|drawType|Type of drawing, "UseDrawColor" (default) - Allows to use common color, or "UseObjectColor" - Allows to use separate color for every object
|drawColor|A foreground/draw color (for example: "Red")

```json
{
    "layoutNames": ["Floor1", "Floor3"],
    "drawColor": "Red",
    "backgroundColor": "White"
}
```

## SpreadsheetLoadOptions - xls, xlsx, xlsm, xlsb, xls2003, ods, ots, xltx, xltm, tsv, xlt

| Properties | Description
|---|---
|format|The format of input file, ("docx", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions.
|defaultFont|Default font for Cells document|
|fontSubstitutes|Substitute specific fonts when converting Cells document
|showGridLines|Show grid lines
|showHiddenSheets|Show hidden sheets
|onePagePerSheet|Put whole sheet in a single page
|convertRange|Convert specific range when converting to other than cells format. Example: "D1:F8"
|skipEmptyRowsAndColumns|Skips empty rows and columns when converting
|password|Password to unprotect protected document
|printComments|Represents the way comments are printed with the sheet. Default is PrintNoComments. Values: PrintInPlace, PrintNoComments, PrintSheetEnd, PrintWithThreadedComments.
|clearCustomDocumentProperties|Clear custom document properties. Default is false.
|clearBuiltInDocumentProperties|Clear built-in document properties. Default is false.
|rowsPerPage|Split a worksheet into pages by rows (pagination)
|columnsPerPage|Split a worksheet into pages by columns (pagination)
|autoFitRows|Autofits all rows when converting
|allColumnsInOnePagePerSheet|If true, all columns in a sheet output to a single page
|cultureInfo|System culture info at the time file is loaded (e.g. "en-US")
|checkExcelRestriction|Whether to enforce Excel format restrictions when loading (e.g. 32K limit)
|optimizePdfSize|If true and converting to PDF, conversion optimized for smaller file size
|sheetIndexes|List of sheet indexes to convert (zero-based)
|sheets|List of sheet names to convert
|resetFontFolders|Reset font folders before loading document

```json
{
  "defaultFont": "Arial",
  "fontSubstitutes": {},
  "showGridLines": true,
  "showHiddenSheets": false,
  "onePagePerSheet": false,
  "convertRange": "",
  "skipEmptyRowsAndColumns": true,
  "password": "Pass123",
  "printComments": "PrintNoComments",
  "rowsPerPage": 0,
  "columnsPerPage": 0,
  "autoFitRows": false,
  "allColumnsInOnePagePerSheet": false,
  "cultureInfo": "en-US",
  "checkExcelRestriction": false,
  "optimizePdfSize": false,
  "sheetIndexes": [0],
  "sheets": ["Sheet1"],
  "resetFontFolders": false
}
```

## CsvLoadOptions - csv

| Properties | Description
|---|---
|format| The format of input file, ("docx", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions.
|separator|Delimiter of a Csv file (single character)
|isMultiEncoded|True means the file contains several encodings
|hasFormula|Indicates whether text is formula if it starts with "=" (true/false)
|convertNumericData|Indicates whether the string in the file is converted to numeric
|convertDateTimeData|Indicates whether the string in the file is converted to DateTime
|encoding|File encoding (e.g. "utf-8")

```json
{
  "separator": ",",
  "isMultiEncoded": false,
  "hasFormula": true,
  "convertNumericData": true,
  "convertDateTimeData": true,
  "encoding": "utf-8"
}
```

## DiagramLoadOptions - vsd, vsdx, vss, vst, vsx, vtx, vdw, vdx, svg, vssx, vstx, vstm, vsdm, vssm

| Properties | Description
|---|---
|format|The format of input file, ("docx", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions.
|defaultFont|Default font for Diagram document.

```json
{
  "defaultFont": "Arial"
}
```

## EmailLoadOptions - msg, eml, emlx, mht, ost, pst

| Properties | Description
|---|---
|format|The format of input file, ("docx", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions.
|displayHeader|Display or hide the email header
|displayFromEmailAddress|Display or hide "from" email address
|displayEmailAddresses|Display or hide email addresses (shows addresses alongside names)
|displayToEmailAddress|Display or hide "to" email address
|displayCcEmailAddress|Display or hide "Cc" email address
|displayBccEmailAddress|Display or hide "Bcc" email address
|displaySent|Display or hide sent date/time in header
|displaySubject|Display or hide subject in header
|displayAttachments|Display or hide attachments in header
|fieldLabels|The mapping between email message field and field text representation
|preserveOriginalDate|Defines whether need to keep original date header string in mail message when saving or not (Default value is true)
|timeZoneOffset|UTC offset for message dates (e.g. "+00:00")
|defaultFont|Default font for Email document
|fontSubstitutes|Substitute specific fonts when converting Email document

```json
{
  "displayHeader": true,
  "displayFromEmailAddress": true,
  "displayEmailAddresses": true,
  "displayToEmailAddress": true,
  "displayCcEmailAddress": true,
  "displayBccEmailAddress": true,
  "preserveOriginalDate": true,
  "timeZoneOffset": "+00:00",
  "fieldLabels": [{
    "Field": "From",
    "Label": "Sender"
    }]
}
```

## ImageLoadOptions - tiff, tif, jpeg, jpg, jp2, j2c, j2k, jpf, jpm, jpx, odg, png, gif, bmp, ico, psd, dcm, wmf, emf, webp

| Properties | Description
|---|---
|format|The format of input file, ("docx", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions.
|defaultFont|Default font for Psd, Emf, Wmf document types. The following font will be used if a font is missing

```json
{
  "defaultFont": "Arial"
}
```

## NoteLoadOptions - one

| Properties | Description
|---|---
|format|The format of input file, ("docx", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions.
|defaultFont|Default font for Note document
|fontSubstitutes|Substitute specific fonts when converting Note document
|password|Password to unprotect protected document

```json
{
  "defaultFont": "Arial",
  "fontSubstitutes": [],
  "password": "Pass123"
}
```

## PdfLoadOptions - pdf

| Properties | Description
|---|---
|format|The format of input file, ("docx", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions.
|removeEmbeddedFiles|Remove embedded files
|removeJavascript|Remove javascript from PDF
|password|Password to unprotect protected document
|hidePdfAnnotations|Hide annotations in Pdf documents
|flattenAllFields|Flatten all the fields of the PDF form
|defaultFont|Default font for Pdf document. The following font will be used if a font is missing.
|clearCustomDocumentProperties|Clear custom document properties
|clearBuiltInDocumentProperties|Clear built-in document properties
|pageNumbering|Enable or disable generation of page numbering in converted document. Default: false
|fontSubstitutes|Substitute specific fonts when converting PDF document

```json
{
  "removeEmbeddedFiles": false,
  "removeJavascript": false,
  "password": "Pass123",
  "hidePdfAnnotations": true,
  "flattenAllFields": true,
  "defaultFont": "Arial",
  "clearCustomDocumentProperties": false,
  "clearBuiltInDocumentProperties": false,
  "pageNumbering": false,
  "fontSubstitutes": {}
}
```

## PresentationLoadOptions - ppt, pps, pptx, ppsx, odp, otp, potx, potm, pptm, ppsm

| Properties | Description
|---|---
|format|The format of input file, ("docx", for example). This field must be filled with correct input file format when using ConvertDirect method, which accepts input file as binary stream, so the API can correctly handle LoadOptions.
|defaultFont|Default font for rendering the presentation.
|fontSubstitutes|Substitute specific fonts when converting Slides document.
|password|Password to unprotect protected document.
|showHiddenSlides|Show hidden slides.
|commentsPosition|Represents the way comments are printed with the slide. Default is None. Values: None, Bottom, Right.
|notesPosition|Represents the way notes are printed with the slide. Default is None. Values: None, BottomTruncated, BottomFull.
|preserveDocumentStructure|Determines whether the document structure should be preserved when converting to PDF (default is false).
|clearCustomDocumentProperties|Value indicating whether custom document properties should be cleared.
|clearBuiltInDocumentProperties|Value indicating whether built-in document properties should be cleared.
|convertOwned|Option to control whether the owned documents in the documents container must be converted.
|convertOwner|Option to control whether the documents container itself must be converted. If this property is true, the documents container will be the first converted document. Default is true.
|depth|Option to control how many levels in depth to perform conversion. Default: 1

```json
{
  "defaultFont": "Arial",
  "fontSubstitutes": [],
  "password": "Pass123",
  "showHiddenSlides": false,
  "commentsPosition": "None",
  "notesPosition": "None",
  "preserveDocumentStructure": false,
  "clearCustomDocumentProperties": false,
  "clearBuiltInDocumentProperties": false,
  "convertOwned": false,
  "convertOwner": true,
  "depth": 1
}
```

## TxtLoadOptions - txt

| Properties | Description
|---|---
|format|The format of input file, ("docx", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions.
|detectNumberingWithWhitespaces|Allows to specify how numbered list items are recognized when plain text document is converted
|trailingSpacesOptions|Controls trailing space handling (Preserve / Trim)
|leadingSpacesOptions|Controls leading space handling (ConvertToIndent / Preserve / Trim)
|encoding|File encoding used when loading txt (e.g. "utf-8")

```json
{
  "detectNumberingWithWhitespaces": true,
  "trailingSpacesOptions": "Trim",
  "leadingSpacesOptions": "ConvertToIndent",
  "encoding": "utf-8"
}
```

## WordProcessingLoadOptions - doc, docm, docx, dot, dotm, dotx, rtf, odt, ott, mobi

| Properties | Description
|---|---
|format|The format of input file, ("docx", for example). This field must be filled with correct input file format when using ConvertDirect method, which accepts input file as binary stream, so the API can correctly handle LoadOptions.
|defaultFont|Default font for Words document.
|fontSubstitutes|Substitute specific fonts when converting Words document.
|password|Password to unprotect protected document.
|hideWordTrackedChanges|Hide markup and track changes for Word documents.
|bookmarksOutlineLevel|Specifies the default level in the document outline at which to display Word bookmarks. Default is 0.
|headingsOutlineLevels|Specifies how many levels of headings to include in the document outline.
|expandedOutlineLevels|Specifies how many levels in the document outline to show expanded when the file is viewed.
|clearCustomDocumentProperties|Clear custom document properties. Default is false.
|clearBuiltInDocumentProperties|Clear built-in document properties. Default is false.
|depth|Option to control how many levels in depth to perform conversion. Default: 1.
|convertOwned|Option to control whether the owned documents in the documents container must be converted.
|convertOwner|Option to control whether the documents container itself must be converted. If this property is true, the documents container will be the first converted document. Default is true.
|autoHyphenation|Determines whether automatic hyphenation is turned on for the document.
|hyphenateCaps|Determines whether words written in all capitals are hyphenated.
|pageNumbering|Enable or disable generation of page numbering in converted document. Default: false.
|skipExternalResources|If true, all external resources will not be loaded. Default is true.
|useTextShaper|Specifies whether to use a text shaper for better kerning display. Default is false.
|preserveFormFields|Specifies whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text. Default is false.
|commentDisplayMode|Specifies how comments should be displayed in the output document. Default is Balloon.
|keepDateFieldOriginalValue|Keep original value of date field. Default: false.
|updateFields|Update fields after loading. Default: false.
|updatePageLayout|Update page layout after loading. Default: false.
|embedTrueTypeFonts|If true, GroupDocs.Conversion Cloud embeds TrueType fonts in output. Default: true.
|fontInfoSubstitutionEnabled|Automatically substitutes missing fonts based on FontInfo in the document. Default: false.
|fontConfigSubstitutionEnabled|Automatically substitutes missing fonts based on FontConfig in the system. Default: false.
|fontNameSubstitutionEnabled|Automatically substitutes missing fonts based on the font name. Default: false.
|showFullCommenterName|Show full commenter name in comments. Default is false.

```json
{
  "defaultFont": "Arial",
  "fontSubstitutes": {},
  "password": "Pass123",
  "hideWordTrackedChanges": true,
  "bookmarksOutlineLevel": 0,
  "headingsOutlineLevels": 0,
  "expandedOutlineLevels": 0,
  "clearCustomDocumentProperties": false,
  "clearBuiltInDocumentProperties": false,
  "depth": 1,
  "convertOwned": false,
  "convertOwner": true,
  "autoHyphenation": false,
  "hyphenateCaps": true,
  "pageNumbering": false,
  "skipExternalResources": true,
  "useTextShaper": false,
  "preserveFormFields": false,
  "commentDisplayMode": "Balloon",
  "keepDateFieldOriginalValue": false,
  "updateFields": false,
  "updatePageLayout": false,
  "embedTrueTypeFonts": true,
  "fontInfoSubstitutionEnabled": false,
  "fontConfigSubstitutionEnabled": false,
  "fontNameSubstitutionEnabled": false,
  "showFullCommenterName": false
}
```

## WebLoadOptions - html

| Properties | Description
|---|---
|format|The format of input file, ("docx", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions.
|pageNumbering|Enable or disable generation of page numbering in converted document. Default: false
|basePath|The base path / base URL for resolving relative resources
|encoding|The encoding to use when loading the HTML (null = determined from document)
|skipExternalResources|If true all external resources will not be loaded
|usePdf|Use PDF engine for conversion. Default: false
|renderingMode|Controls how HTML content is rendered. Values: Flow, AbsolutePositioning (default)
|zoom|Specifies the zoom level as a percentage (default: 100)
|pageLayout|Specifies page layout options when loading web documents. Values: None, ScaleToPageWidth, ScaleToPageHeight
|customCssStyle|Sets custom CSS to be injected into the document's head prior to conversion

```json
{
  "pageNumbering": true,
  "basePath": "https://example.com/",
  "encoding": "utf-8",
  "skipExternalResources": true,
  "usePdf": false,
  "renderingMode": "AbsolutePositioning",
  "zoom": 100,
  "pageLayout": "None",
  "customCssStyle": "body { font-family: Arial; }"
}
```

## XmlLoadOptions - xml

| Properties | Description
|---|---
|format|The format of input file. Required for ConvertDirect scenario.
|xslFo|XSL document content to convert XML-FO using XSL (binary, supply as base64 in JSON payload)

```json
{
  "xslFo": "PD94bWwgdmVyc2lvbj0iMS4wIj8+..." // base64-encoded XSL-FO bytes
}
```

## VcfLoadOptions - vcf

| Properties | Description
|---|---
|format|The format of input file. Required for ConvertDirect scenario.
|encoding|The encoding that will be used when loading Vcf document. Can be null.

```json
{
  "encoding": "utf-8"
}
```
