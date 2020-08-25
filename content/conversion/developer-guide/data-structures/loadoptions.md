---
id: "loadoptions"
url: "conversion/loadoptions"
title: "LoadOptions"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
---
## CadLoadOptions - dxf, dwg, dgn, dwf, stl, Ifc, plt, Igs ##

Properties | Description
|---|---
| width | Page width for converting CAD document
| height | Page height for converting CAD document
| layoutNames | Specify which layouts to be converted

```json
{
    "width": 1920,
    "height": 1080,
    "layoutNames": ["Floor1", "Floor3"]
}
```

## SpreadsheetLoadOptions - xls, xlsx, xlsm, xlsb, xls2003, ods, ots, xltx, xltm, tsv ##

| Properties | Description
|---|---
|defaultFont|Default font for Cells document|
|fontSubstitutes|Substitute specific fonts when converting Cells document
|showGridLines|Show grid lines
|showHiddenSheets|Show hidden sheets
|onePagePerSheet|Put whole sheet in a single page
|convertRange|Convert specific range when converting to other than cells format. Example: "D1:F8"
|skipEmptyRowsAndColumns|Skips empty rows and columns when converting
|password|Password to unprotect protected document
|hideComment|Hide comments

```json
{
  "defaultFont": "Arial",
  "fontSubstitutes": [],
  "showGridLines": true,
  "showHiddenSheets": false,
  "onePagePerSheet": false,
  "convertRange": "",
  "skipEmptyRowsAndColumns": true,
  "password": "Pass123",
  "hideComment": true
}
```

## CsvLoadOptions - csv ##

| Properties | Description
|---|---
|separator|Delimiter of a Csv file|
|isMultiEncoded|True means the file contains several encodings
|hasFormula|Indicates whether text is formula if it starts with "#"
|convertNumericData|Indicates whether the string in the file is converted to numeric
|convertDateTimeData|Indicates whether the string in the file is converted to DateTime

```json
{
  "separator": ",",
  "isMultiencoded": false,
  "hasFormula": true,
  "convertNumericData": true,
  "convertDateTimeData": true
}
```

## DiagramLoadOptions - vsd, vsdx, vss, vst, vsx, vtx, vdw, vdx, svg, vssx, vstx, vstm, vsdm, vssm ##

| Properties | Description
|---|---
|defaultFont|Default font for Diagram document.

```json
{
  defaultFont: "Arial"
}
```

## EmailLoadOptions - msg, eml, emlx, mht, ost, pst ##

| Properties | Description
|---|---
|displayHeader|Display or hide the email header
|displayFromEmailAddress|Display or hide "from" email address
|displayEmailAddress|Display or hide email address
|displayToEmailAddress|Display or hide "to" email address
|displayCcEmailAddress|Display or hide "Cc" email address
|displayBccEmailAddress|Display or hide "Bcc" email address
|FieldLabels|The mapping between email message field and field text representation
|PreserveOriginalDate|Defines whether need to keep original date header string in mail message when saving or not (Default value is true)

```json
{
  "displayHeader": true,
  "displayFromEmailAddress": true,
  "displayEmailAddress": true,
  "displayToEmailAddress": true,
  "displayCcEmailAddress": true,
  "displayBccEmailAddress": true,
  "FieldLabels": [{
    "Field": "From",
    "Label": "Sender"
    }]
}
```

## ImageLoadOptions - tiff, tif, jpeg, jpg, jp2, j2c, j2k, jpf, jpm, jpx, odg, png, gif, bmp, ico, psd, dcm, wmf, emf, webp ##

| Properties | Description
|---|---
|defaultFont|Default font for Psd, Emf, Wmf document types. The following font will be used if a font is missing

```json
{
  defaultFont: "Arial"
}
```

## OneLoadOptions - one ##

| Properties | Description
|---|---
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

## PdfLoadOptions - pdf ##

| Properties | Description
|---|---
|removeEmbeddedFiles|Remove embedded files
|password|Password to unprotect protected document
|hidePdfAnnotations|Hide annotations in Pdf documents
|flattenAllFields|Flatten all the fields of the PDF form

```json
{
  "removeEmbeddedFiles": false,
  "password": "Pass123",
  "hidePdfAnnotations": true,
  "flattenAllFields": true
}
```

## PresentationLoadOptions - ppt, pps, pptx, ppsx, odp, otp, potx, potm, pptm, ppsm ##

| Properties | Description
|---|---
||defaultFont|Default font for rendering the presentation
|fontSubstitutes|Substitute specific fonts when converting Slides document
|password|Password to unprotect protected document
|showHiddenSlides|Show hidden slides
|hideComment|Hide comments

```json
{
  "defaultFont": "Arial",
  "fontSubstitutes": [],
  "password": "Pass123",
  "showHiddenSlides": false,
  "hideComment": true
}
```

## TxtLoadOptions - txt ##

| Properties | Description
|---|---
|detectNumberingWithWhitespaces|Allows to specify how numbered list items are recognized when plain text document is converted
|trailingSpacesOptions|Controls trailing space handling
|leadingSpacesOptions|Controls leading space handling

```json
{
  "detectNumberingWIthWhiteSpaces": true,
  "trailingSpacesOptions": "trim",
  "leadingSpacesOptions": "preserve"
}
```

## WordProcessingLoadOptions - doc, docm, docx, dot, dotm, dotx, rtf, odt, ott, mobi ##

| Properties | Description
|---|---
|defaultFont|Default font for Words document
|fontSubstitutes|Substitute specific fonts when converting Words document
|autoFontSubstitution|Enable or disable auto font substitution
|password|Password to unprotect protected document
|hideWordTrackedChanges|Hide markup and track changes for Word documents
|hideComment|Hide comments

```json
{
  "defaultFont": "Arial",
  "fontSubstitutes": [],
  "autoFontSubstitution": true,
  "password": "Pass123",
  "hideWordTrackedChanges": true
  "hideComment": true
}
```

## HtmlLoadOptions - html ##

| Properties | Description
|---|---
|PageNumbering|Enable or disable generation of page numbering in converted document. Default: false

```json
{
  "PageNumbering": true
}
```
