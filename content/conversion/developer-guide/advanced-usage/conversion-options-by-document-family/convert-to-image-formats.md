---
id: "convert-to-image-formats"
url: "conversion/convert-to-image-formats"
title: "4. Convert to Image Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 6
description: ""
keywords: ""
---






# Introduction #

GroupDocs.Conversion Cloud REST API allows to convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}})) to **Image Formats** and returns the output document **storage URL** and also support to get result as a **array of stream**.
|---|---

# Convert to Images Formats #

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}})) to **Images Formats **and get the output as storage URL.
|---|---

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to Images format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.
|---|---

## cURL Example ##



 Request

```html 
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/sample.docx\",  \"Format\": \"jpg\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"\"}},\"ConvertOptions\": {\"JpegConvertOptions\": {\"Grayscale\": \"false\", \"FromPage\": \"1\", \"PagesCount\": \"2\", \"Quality\": \"100\",\"RotateAngle\": \"90\", \"UsePdf\": \"false\" }},  \"OutputPath\": \"converted/topjpg\"}"


 ```


 Response

```html 
  {
    "name": "sample-page-1.jpg",
    "size": 107611,
    "url": "MyStorage:converted/topjpg/sample-page-1.jpg"
  },
  {
    "name": "sample-page-2.jpg",
    "size": 45075,
    "url": "MyStorage:converted/topjpg/sample-page-2.jpg"
  }

 ```




## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).
|---|---

### Convert to Images Formats ###


 C#

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Images.cs >}}




 PHP

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Images.php >}}




 Java

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Images.java >}}




 Ruby

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Images.rb >}}




 Node

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Images.js >}}




 Python

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Images.py >}}






# Convert to Image Formats with Stream Output #

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}})) to **Images Formats **and get the output as Stream.
|---|---

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to Images format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.
|---|---

## cURL Example ##



 Request

```html 
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/sample.docx\",  \"Format\": \"jpg\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"\"}},\"ConvertOptions\": {\"JpegConvertOptions\": {\"Grayscale\": \"false\", \"FromPage\": \"1\", \"PagesCount\": \"2\", \"Quality\": \"100\",\"RotateAngle\": \"90\", \"UsePdf\": \"false\" }},  \"OutputPath\": \""}"


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

### Convert to Image Formats with Stream Output ###


 C#

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Images_Stream.cs >}}




 PHP

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Images_Stream.php >}}




 Java

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Images_Stream.java >}}




 Ruby

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Images_Stream.rb >}}




 Node

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Images_Stream.js >}}




 Python

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Images_Stream.py >}}





# Convert to Images with Advanced Options #

This example demonstrates how to convert word processing documents into a image with advanced conversion options. 

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
        'Format': 'jpg',
        'ConvertOptions': {
            'FromPage': 1,
            'PagesCount': 2
        },
        'OutputPath': 'Output'
    }"

 ```


 Response

```html 

[
  {
    "name": "four-pages-page-1.jpg",
    "size": 53874,
    "path": "Output/four-pages-page-1.jpg",
    "url": "https://api-qa.groupdocs.cloud/v2.0/conversion/storage/file/Output/four-pages-page-1.jpg"
  },
  {
    "name": "four-pages-page-2.jpg",
    "size": 66465,
    "path": "Output/four-pages-page-2.jpg",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/four-pages-page-2.jpg"
  }
]

 ```




## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).
|---|---

### Convert to Images with Advanced Options ###


 C#

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Advance_Options_Images.cs >}}




 Java

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Advance_Options_Images.java >}}




 PHP

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Advance_Options_Images.php >}}




 Ruby

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Advance_Options_Images.rb >}}




 Node

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Advance_Options_Images.js >}}




 Python

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Advance_Options_Images.py >}}



