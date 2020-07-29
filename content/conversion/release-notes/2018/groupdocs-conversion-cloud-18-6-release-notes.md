---
id: "groupdocs-conversion-cloud-18-6-release-notes"
url: "conversion/groupdocs-conversion-cloud-18-6-release-notes"
title: "GroupDocs.Conversion Cloud 18.6 Release Notes"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
---

## Major Features ##

There are couple of improvements and bug fixes in this release. Most notable are:

* Options to specify bookmark level, heading level and expanded level when converting from Words to PDF
* Options for generating linearized and grayscaled PDF
* Options for controlling conversions from Cells
* Options for resource optimizations when converting to PDF
* Fixed invalid url returned after successful conversion

## Full List of Issues Covering all Changes in this Release ##

|Key
|---
|Summary
|Category

|CONVERSIONCLOUD-180|Specify bookmark level, headings level and expanded level when converting from Words to PDF and XPS|New Feature
|CONVERSIONCLOUD-181|Option for creating linearized PDF when converting to PDF|New Feature
|CONVERSIONCLOUD-182|Option for converting to grayscale PDF|New Feature
|CONVERSIONCLOUD-184|Options for controlling conversions from Cells|New Feature
|CONVERSIONCLOUD-183|Options for resource optimization when converting to PDF|New Feature
|CONVERSIONCLOUD-179|The result of conversion returns invalid URL|Bug


## Public API and Backward Incompatible Changes ##

### Converting Document to grayscale PDF ###

This version introduces an option to convert supported documents to grayscale PDF.

 



**cURL Example**






 

|
|---

~#~## Convert




curl ~-~-request POST \




  ~-~-url https:~/~/api.groupdocs.cloud/v1.0/conversion/pdf \




  ~-~-header 'authorization: Bearer [Access Token]' \




  ~-~-header 'content-type: application/json' \




  ~-~-data '{sourceFile: {folder: '\''words/docx'\'',name: '\''one-page.docx'\'',},options: {convertFileType: '\''pdf'\'',pdfOptions: {grayscale: true'




### Creating linearized PDF ###

An option to create linearized PDF is introduced in this release.

 



**cURL Example**






 

|
|---

~#~## Convert




curl ~-~-request POST \




  ~-~-url https:~/~/api.groupdocs.cloud/v1.0/conversion/pdf \




  ~-~-header 'authorization: Bearer [Access Token]' \




  ~-~-header 'content-type: application/json' \




  ~-~-data '{sourceFile: {folder: '\''words/docx'\'',name: '\''one-page.docx'\'',},options: {convertFileType: '\''pdf'\'',pdfOptions: {linearize: true'




 






### Resource optimization in PDF ###

This version supports an option to optimize the resources while converting supported file formats to PDF.

 



**cURL Example**






 

|
|---



~#~## Convert




curl ~-~-request POST \




  ~-~-url https:~/~/api-dev.groupdocs.cloud/v1.0/conversion/pdf \




  ~-~-header 'authorization: Bearer [Access Token]' \




  ~-~-header 'content-type: application/json' \




  ~-~-data '{sourceFile: {folder: '\''words/docx'\'',name: '\''one-page.docx'\'',},options: {convertFileType: '\''pdf'\'',pdfOptions: {optimizationOptions: {linkDuplicatedStreams: true,removeUnusedObjects: true,removeUnusedStreams: true,compressImages: true,imageQuality: 60,umbedFonts: true}'\\





### Options to control Bookmarks when Converting Word to PDF ###

This release introduces options to specify bookmark level, heading level and expanded level when converting from Words to PDF.

 



**cURL Example**






 

|
|---





~#~## Convert




curl ~-~-request POST \




  ~-~-url https:~/~/api.groupdocs.cloud/v1.0/conversion/pdf \




  ~-~-header 'authorization: Bearer [Access Token]' \




  ~-~-header 'content-type: application/json' \




  ~-~-data '{sourceFile: {folder: '\''words/docx'\'',name: '\''one-page.docx'\'',},options: {convertFileType: '\''pdf'\'',wordBookmarkOptions: {bookmarksOutlineLevel: 4,headingOutlineLevels: 1,expandedOutlineLevels: 9'\\






 



### Options to control conversion from Spreadsheet Documents ###

This release introduces different options to control output from Spreadsheet Documents conversion.

 



**cURL Example**






 

|
|---







~#~## Convert




curl ~-~-request POST \




  ~-~-url https:~/~/api.groupdocs.cloud/v1.0/conversion/pdf \




  ~-~-header 'authorization: Bearer [Access Token]' \




  ~-~-header 'content-type: application/json' \




  ~-~-data '{sourceFile: {folder: '\''cells/xlsx'\'',name: '\''three-sheets.xlsx'\'',},options: {convertFileType: '\''pdf'\'',cellsOptions: {showGridLines: true,showHiddenSheets: false,onePagePerSheet: false,optimizePdfSize: true,convertRange: '\'''\'',skipEmptyRowsAndColumns: true'












