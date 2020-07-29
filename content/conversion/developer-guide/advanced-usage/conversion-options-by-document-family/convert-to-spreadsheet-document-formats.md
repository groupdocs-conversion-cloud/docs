---
id: "convert-to-spreadsheet-document-formats"
url: "conversion/convert-to-spreadsheet-document-formats"
title: "2. Convert to Spreadsheet Document Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 4
description: ""
keywords: ""
---





# Introduction #

GroupDocs.Conversion Cloud REST API allows us to convert the [supported document formats]({{< ref "conversion/getting-started/supported-document-formats.md" >}})) to **Spreadsheet Document Formats** and returns the output document **storage URL** and also support to get the result as a **stream**.
|---|---

# Convert to Spreadsheet Formats #

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}})) to **Spreadsheet **Formats and returns the output document **storage URL**
|---|---

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to spreadsheet Format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.
|---|---

## cURL Example ##



 Request

```html 
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/password-protected.docx\",  \"Format\": \"xlsx\",  \"LoadOptions\": {\"Password\": \"password\"},  \"ConvertOptions\": {     \"FromPage\": \"1\",     \"PagesCount\": \"1\",     \"UsePdf\": \"false\"  },  \"OutputPath\": \"converted/tocells\"}"


 ```


 Response

```html 
  {
    "name": "password-protected.xlsx",
    "size": 7265,
    "url": "MyStorage:converted/tocells/password-protected.xlsx"
  }

 ```




## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).
|---|---

### Convert to Spreadsheet Formats ###





 C#

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Cells.cs >}}




 PHP

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Cells.php >}}




 Java

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Cells.java >}}




 Ruby

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Cells.rb >}}




 Node

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Cells.js >}}




 Python

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Cells.py >}}







# Convert to Spreadsheet Document Formats with Stream Output #

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}})) to **Spreadsheet **Formats and get the output document as **Stream**
|---|---

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to spreadsheet Format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.
|---|---

## cURL Example ##



 Request

```html 
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/password-protected.docx\",  \"Format\": \"xlsx\",  \"LoadOptions\": {\"Password\": \"password\"},  \"ConvertOptions\": {     \"FromPage\": \"1\",     \"PagesCount\": \"1\",     \"UsePdf\": \"false\"  },  \"OutputPath\": \""}"


 ```


 Response

```html 
Code : 200
{
Download file
}  
content-type: application/octet-stream

 ```




## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).
|---|---

### Convert to Spreadsheet Formats with Stream Output ###



 C#

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Cells_Stream.cs >}}




 PHP




{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Cells_Stream.php >}}





 Java




{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Cells_Stream.java >}}





 Ruby




{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Cells_Stream.rb >}}




 Node

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Cells_Stream.js >}}




 Python

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Cells_Stream.py >}}





# Convert to Spreadsheet with Advanced Options #

This example demonstrates how to convert word processing documents into a spreadsheet with advanced conversion options. 

There are steps that usage of GroupDocs.Conversion Cloud consists of:

1. Upload input document into cloud storage
1. Convert document
1. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this [GroupDocs.Conversion Cloud Storage Operations]({{< ref "conversion/developer-guide/working-with-storage-api.md" >}})) for usage details.

Step 3 is not needed if the "OutputPath" option is not provided: the convert API method will return the converted document in the response body.

## Resource ##

|HTTP POST ~~/conversion
|---


[Swagger UI](https://apireference.groupdocs.cloud/conversion/) lets you call this REST API directly from the browser.

## cURL Example ##


 Request

```html 

* First get JSON Web Token
* Please get your App Key and App SID from https://dashboard.groupdocs.cloud/#/apps. Kindly place App Key in "client_secret" and App SID in "client_id" argument.
curl -v "https://api.groupdocs.cloud/connect/token" \
-X POST \
-d "grant_type#client_credentials&client_id#xxxx&client_secret#xxxx" \
-H "Content-Type: application/x-www-form-urlencoded" \
-H "Accept: application/json"
  
* cURL example to convert document
curl -v "https://api.groupdocs.cloud/v2.0/conversion/conversion" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-H "Authorization: Bearer <jwt token>"
-d "{
        'FilePath': 'WordProcessing/four-pages.docx',
        'Format': 'xlsx',
        'ConvertOptions': {
            'FromPage': 2,
            'PagesCount': 1,
            'Zoom': 150
        },
        'OutputPath': 'Output'
    }"

 ```


 Response

```html 

[
  {
    "name": "four-pages.xlsx",
    "size": 7375,
    "path": "Output/four-pages.xlsx",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/four-pages.xlsx"
  }
]

 ```




## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).
|---|---

### Convert to Spreadsheet with Advanced Options ###


 C#

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Advance_Options_Spreadsheet.cs >}}




 Java

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Advance_Options_Spreadsheet.java >}}




 PHP

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Advance_Options_Spreadsheet.php >}}




 Ruby

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Advance_Options_Spreadsheet.rb >}}




 Node

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Advance_Options_Spreadsheet.js >}}




 Python

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Advance_Options_Spreadsheet.py >}}



