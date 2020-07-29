---
id: "groupdocs-conversion-cloud-19-5-release-notes"
url: "conversion/groupdocs-conversion-cloud-19-5-release-notes"
title: "GroupDocs.Conversion Cloud 19.5 Release Notes"
productName: "GroupDocs.Conversion Cloud"
weight: 3
description: ""
keywords: ""
---

{{< alert style="info" >}}
This page contains release notes for GroupDocs.Conversion Cloud 19.5
{{< /alert >}}

## Major Features ##

* New endpoint for retrieving a document metadata
* Conversions from cdr and cmx now supported
* Extended options when converting to image

## Full List of Issues Covering all Changes in this Release ##

 

|Key|Summary|Category
|---|---|---
|CONVERSIONCLOUD-311|Retrieve basic metadata of a document|Feature
|CONVERSIONCLOUD-314|Support conversion from cdr|Feature
|CONVERSIONCLOUD-315|Adjusting brightness, contrast, gamma when converting to image|Feature
|CONVERSIONCLOUD-316|Flip image option when converting to image|Feature
|CONVERSIONCLOUD-318|Conversions from cmx|Feature
|CONVERSIONCLOUD-313|File API methods throw error on path with front slash|Bug


##  Public API Examples ##

#### Retrieve document metadata ####





```html 

### Get document metadata
curl -X GET "https://api-qa.groupdocs.cloud/v2.0/conversion/info?FilePath#words%2Fdocx%2Ffour-pages.docx" -H "accept: application/json" -H "authorization: Bearer [AccessToken]"

 ```

```html 

Content-type: application/json
{
  "fileType": "docx",
  "pageCount": 4,
  "size": 8651,
  "width": 0,
  "height": 0,
  "horizontalResolution": 0,
  "verticalResolution": 0,
  "bitsPerPixel": 0,
  "title": "",
  "author": "",
  "createdDate": "2016-05-18T00:00:00Z",
  "modifiedDate": "0001-01-01T00:00:00",
  "layers": null,
  "isPasswordProtected": false
}

 ```

 

 



