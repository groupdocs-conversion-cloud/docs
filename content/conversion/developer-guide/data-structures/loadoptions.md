---
id: "loadoptions"
url: "conversion/loadoptions"
title: "2. LoadOptions"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
---


 

## Format specific load options ##

###### CadLoadOptions ######

|#Formats|#Properties|#Description|#Json
|---|---|---|---
|**dxf**
**dwg**
**dgn**
**dwf**
**stl**
**Ifc**
**plt**
**Igs**|width|Page width for converting CAD document|{
  "width": 1920,
  "height": 1080,
  layoutNames: ["Floor1", "Floor3"]
}
|height|Page height for converting CAD document
|layoutNames|Specify which layouts to be converted


###### SpreadsheetLoadOptions ######

|#Formats|#Properties|#Description|#Json
|---|---|---|---
|**xls**
**xlsx **
**xlsm **
**xlsb **
**xls2003**
**ods **
**ots **
**xltx **
**xltm **
**tsv**|defaultFont|Default font for Cells document|{
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
|fontSubstitutes|Substitute specific fonts when converting Cells document
|showGridLines|Show grid lines
|showHiddenSheets|Show hidden sheets
|onePagePerSheet|Put whole sheet in a single page
|convertRange|Convert specific range when converting to other than cells format. Example: "D1:F8"
|skipEmptyRowsAndColumns|Skips empty rows and columns when converting
|password|Password to unprotect protected document
|hideComment|Hide comments


###### CsvLoadOptions ######

|#Formats|#Properties|#Description|#Json
|---|---|---|---
|**csv**
\\\\\\ |separator|Delimiter of a Csv file|{
  "separator": ",",
  "isMultiencoded": false,
  "hasFormula": true,
  "convertNumericData": true,
  "convertDateTimeData": true
}
|isMultiEncoded|True means the file contains several encodings
|hasFormula|Indicates whether text is formula if it starts with "#"
|convertNumericData|Indicates whether the string in the file is converted to numeric
|convertDateTimeData|Indicates whether the string in the file is converted to DateTime


###### DiagramLoadOptions ######

|#Format|#Properties|#Description|#Json
|---|---|---|---
|**vsd**
**vsdx**
**vss**
**vst**
**vsx**
**vtx**
**vdw**
**vdx**
**svg**
**vssx**
**vstx**
**vstm**
**vsdm**
**vssm**|defaultFont|Default font for Diagram document.|{ defaultFont: "Arial" }


###### EmailLoadOptions ######

|#Formats|#Properties|#Description|#Json
|---|---|---|---
|**msg**
**eml**
**emlx**
**mht**
**ost**
**pst**|displayHeader|Display or hide the email header|{
"displayHeader": true,
"displayFromEmailAddress": true,
"displayEmailAddress": true,
"displayToEmailAddress": true,
"displayCcEmailAddress": true,
"displayBccEmailAddress": true,
"FieldLabels": [
{
"Field": "From",
"Label": "Sender"
}
]
}
|displayFromEmailAddress|Display or hide "from" email address
|displayEmailAddress|Display or hide email address
|displayToEmailAddress|Display or hide "to" email address
|displayCcEmailAddress|Display or hide "Cc" email address
|displayBccEmailAddress|Display or hide "Bcc" email address
|FieldLabels|The mapping between email message field and field text representation
|PreserveOriginalDate|Defines whether need to keep original date header string in mail message when

saving or not (Default value is true)



###### ImageLoadOptions ######

|#Formats|#Properties|#Description|#Json
|---|---|---|---
|**tiff**
**tif**
**jpeg**
**jpg**
**jp2**
**j2c**
**j2k**
**jpf**
**jpm**
**jpx**
**odg**
**png**
**gif**
**bmp**
**ico**
**psd**
**dcm**
**wmf**
**emf**
**webp**|defaultFont|Default font for Psd, Emf, Wmf document types. The following font will be used if a font is missing|{ defaultFont: "Arial" }


###### OneLoadOptions ######

|#Formats|#Properties|#Description|#Json
|---|---|---|---
|**one**
 |defaultFont|Default font for Note document|{
  "defaultFont": "Arial",
  "fontSubstitutes": [],
  "password": "Pass123"
}
|fontSubstitutes|Substitute specific fonts when converting Note document
|password|Password to unprotect protected document


###### PdfLoadOptions ######

|#Formats|#Properties|#Description|#Json
|---|---|---|---
|**pdf**
\\\\ |removeEmbeddedFiles|Remove embedded files|{
  "removeEmbeddedFiles": false,
  "password": "Pass123",
  "hidePdfAnnotations": true,
  "flattenAllFields": true
}
|password|Password to unprotect protected document
|hidePdfAnnotations|Hide annotations in Pdf documents
|flattenAllFields|Flatten all the fields of the PDF form


###### PresentationLoadOptions ######

|#Formats|#Properties|#Description|#Json
|---|---|---|---
|**ppt**
**pps**
**pptx**
**ppsx**
**odp**
**otp**
**potx**
**potm**
**pptm**
**ppsm**|defaultFont|Default font for rendering the presentation|{
  "defaultFont": "Arial",
  "fontSubstitutes": [],
  "password": "Pass123",
  "showHiddenSlides": false,
  "hideComment": true
}
|fontSubstitutes|Substitute specific fonts when converting Slides document
|password|Password to unprotect protected document
|showHiddenSlides|Show hidden slides
|hideComment|Hide comments


###### TxtLoadOptions ######

|#Formats|#Properties|#Description|#Json
|---|---|---|---
|**txt**|detectNumberingWithWhitespaces|Allows to specify how numbered list items are recognized when plain text document is converted|{
  "detectNumberingWIthWhiteSpaces": true,
  "trailingSpacesOptions": 'trim",
  "leadingSpacesOptions": "preserve"
}
|trailingSpacesOptions|Controls trailing space handling
|leadingSpacesOptions|Controls leading space handling


###### WordProcessingLoadOptions ######

|#Formats|#Properties|#Description|#Json
|---|---|---|---
|**doc**
**docm**
**docx**
**dot**
**dotm**
**dotx**
**rtf**
**odt**
**ott**
**mobi**|defaultFont|Default font for Words document|{
  "defaultFont": "Arial",
  "fontSubstitutes": [],
  "autoFontSubstitution": true,
  "password": "Pass123",
  "hideWordTrackedChanges": true
  "hideComment": true
}
|fontSubstitutes|Substitute specific fonts when converting Words document
|autoFontSubstitution|Enable or disable auto font substitution
|password|Password to unprotect protected document
|hideWordTrackedChanges|Hide markup and track changes for Word documents
|hideComment|Hide comments

###### HtmlLoadOptions ######

|#Formats|#Properties|#Description|#Json
|---|---|---|---
|**html**|PageNumbering|Enable or disable generation of page numbering in converted document. Default: false|{
  "PageNumbering": true
}

 
