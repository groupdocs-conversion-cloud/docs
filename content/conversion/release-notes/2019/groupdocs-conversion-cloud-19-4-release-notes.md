---
id: "groupdocs-conversion-cloud-19-4-release-notes"
url: "conversion/groupdocs-conversion-cloud-19-4-release-notes"
title: "GroupDocs.Conversion Cloud 19.4 Release Notes"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
---

{{< alert style="info" >}}
This page contains release notes for GroupDocs.Conversion Cloud 19.4
{{< /alert >}}

## Major Features ##

* Storage property in request payload is renamed to StorageName
* New property "path" is introduced to StoredConvertedResult response
* ConvertDocument method now returns stream if outputpath property is not set in the request. If the result of conversion produces more than one file, than the stream is a zip. 

## Full List of Issues Covering all Changes in this Release ##

 

|Key|Summary|Category
|---|---|---
|CONVERSIONCLOUD-279|Change Storage to StorageName in request payload|Improvement
|CONVERSIONCLOUD-280|Add path property to StoredConvertedResult response|Improvement
|CONVERSIONCLOUD-288|Change ConvertDocument method to return stream if outputpath not provided|Improvement


## Public API Examples ##

### Storage property in requests payload is renamed to Storage Name ###





```html 
### Get supported conversions
curl -X GET "https://api-qa.groupdocs.cloud/v2.0/conversion/formats?FilePath#source.docx&#x26;StorageName#firstStorage" -H "accept: application/json" -H "authorization: Bearer [AccessToken]"
 
### Convert
curl -X POST "https://api-qa.groupdocs.cloud/v2.0/conversion" 
-H "accept: application/json" 
-H "authorization: Bearer [AccessToken]" 
-H "Content-Type: application/json" 
-d "{ \"StorageName\": \"firstStorage\", \"FilePath\": \"source.docx\", \"Format\": \"pdf\", \"OutputPath\": \"converted\"}"


 ```



### New property "path" is introduced to Stored Converted Result response ###





```html 
### Convert
curl -X POST "https://api-qa.groupdocs.cloud/v2.0/conversion" 
-H "accept: application/json" 
-H "authorization: Bearer [AccessToken]" 
-H "Content-Type: application/json" 
-d "{ \"FilePath\": \"words/docx/one-page.docx\", \"Format\": \"pdf\", \"OutputPath\": \"converted\"}"
 
 
 
### Response
[
  {
    "name": "one-page.pdf",
    "size": 17967,
    "path": "converted/one-page.pdf",
    "url": "https://api-qa.groupdocs.cloud/v2.0/conversion/storage/file/converted/one-page.pdf"
  }
]


 ```



### Convert Document method returns stream if Output Path is not provided in the request ###





```html 
### Convert
curl -X POST "https://api-qa.groupdocs.cloud/v2.0/conversion" 
-H "accept: application/json" 
-H "authorization: Bearer [AccessToken]" 
-H "Content-Type: application/json" 
-d "{ \"FilePath\": \"words/docx/one-page.docx\", \"Format\": \"pdf\" }"
 
 
 
### Response
content-type: application/octet-stream 


 ```

