---
id: "convert-to-pdf-formats"
url: "conversion/convert-to-pdf-formats"
title: "6. Convert to PDF Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 7
description: ""
keywords: ""
---





# Introduction #

GroupDocs.Conversion Cloud REST API allows to convert the [supported document formats]({{< ref "conversion/getting-started/supported-document-formats.md" >}})) to **PDF Formats** and returns the output document **storage URL** and also support to get result as a **stream**.
|---|---

# Convert to PDF Formats #

You can convert the [supported document formats]({{< ref "conversion/getting-started/supported-document-formats.md" >}})) to **PDF Formats** and get output as storage URL.
|---|---

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to PDF format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.
|---|---

## cURL Example ##



 Request

```html 
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/password-protected.docx\",  \"Format\": \"pptx\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"password\"  }},  \"ConvertOptions\": {\"PdfConvertOptions\": {\"BookmarksOutlineLevel\": \"1\",                        \"CenterWindow\" :\"true\",  \"CompressImages\": \"false\",   \"DisplayDocTitle\":  \"true\", \"Dpi\":\"1024\",  \"ExpandedOutlineLevels\": \"1\",   \"FitWindow\": \"false\",\"FromPage\" \"1\",   \"Grayscale\": \"false\",  \"HeadingsOutlineLevels\": \"1\",   \"ImageQuality\": \"100\",                        \"Linearize\": \"false\",   \"MarginTop\": \"5\",   \"MarginLeft\": \"5\", \"Password\": \"password\",  \"UnembedFonts\": \"true\",  \"RemoveUnusedStreams\": \"true\",  \"RemoveUnusedObjects\": \"true\", \"RemovePdfaCompliance\": \"false\", \"Height\": \"1024\"}  },  \"OutputPath\": \"converted/topdf\"}"


 ```


 Response

```html 
  {
    "name": "sample.pptx",
    "size": 68540,
    "url": "MyStorage:converted/topdf/password-protected.pdf"
  }

 ```




## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).
|---|---

### Convert to PDF Formats ###



 C#




{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Pdf.cs >}}





 PHP




{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Pdf.php >}}





 Java




{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Pdf.java >}}





 Ruby




{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Pdf.rb >}}





 Node




{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Pdf.js >}}





 Python




{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Pdf.py >}}







# Convert to PDF Formats with Stream Output #

You can convert the [supported document formats]({{< ref "conversion/getting-started/supported-document-formats.md" >}})) to **PDF Formats** and get output as stream.
|---|---

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to PDF format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.
|---|---

## cURL Example ##



 Request

```html 
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/password-protected.docx\",  \"Format\": \"pptx\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"password\"  }},  \"ConvertOptions\": {\"PdfConvertOptions\": {\"BookmarksOutlineLevel\": \"1\",                        \"CenterWindow\" :\"true\",  \"CompressImages\": \"false\",   \"DisplayDocTitle\":  \"true\", \"Dpi\":\"1024\",  \"ExpandedOutlineLevels\": \"1\",   \"FitWindow\": \"false\",\"FromPage\" \"1\",   \"Grayscale\": \"false\",  \"HeadingsOutlineLevels\": \"1\",   \"ImageQuality\": \"100\",                        \"Linearize\": \"false\",   \"MarginTop\": \"5\",   \"MarginLeft\": \"5\", \"Password\": \"password\",  \"UnembedFonts\": \"true\",  \"RemoveUnusedStreams\": \"true\",  \"RemoveUnusedObjects\": \"true\", \"RemovePdfaCompliance\": \"false\", \"Height\": \"1024\"}  },  \"OutputPath\": \""}"


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

### Convert to PDF Formats with Stream Output ###



 C#




{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Pdf_Stream.cs >}}





 PHP




{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Pdf_Stream.php >}}





 Java




{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Pdf_Stream.java >}}





 Ruby




{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Pdf_Stream.rb >}}





 Node




{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Pdf_Stream.js >}}





 Python




{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Pdf_Stream.py >}}






# Convert to PDF with Advanced Options #

This example demonstrates how to convert word processing documents into pdf documents with advanced conversion options. 

There are steps that usage of GroupDocs.Conversion Cloud consists of:

1. Upload input document into cloud storage
1. Convert document
1. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this [GroupDocs.Conversion Cloud Storage Operations]({{< ref "conversion/developer-guide/working-with-storage-api.md" >}})) for usage details.

Step 3 is not needed if the "OutputPath" option is not provided: the convert API method will return the converted document in the response body.

## Resource ##

|
|---
HTTP POST ~~/conversion


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
        'FilePath': 'WordProcessing/password-protected.docx',
        'Format': 'pdf',
        'LoadOptions': {'Password': 'password'},
        'ConvertOptions': {
            'FromPage': 1,
            'Dpi': 1024,
            'UnembedFonts': true
        },
        'OutputPath': 'Output'
    }"

 ```


 Response

```html 

[
  {
    "name": "password-protected.pdf",
    "size": 4434,
    "path": "Output/password-protected.pdf",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/password-protected.pdf"
  }
]

 ```




## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).
|---|---

### Convert to PDF with Advanced Options ###


 C#

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Advance_Options_PDF.cs >}}




 Java

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Advance_Options_PDF.java >}}




 PHP

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Advance_Options_PDF.php >}}




 Ruby

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Advance_Options_PDF.rb >}}




 Node

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Advance_Options_PDF.js >}}




 Python

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Advance_Options_PDF.py >}}

