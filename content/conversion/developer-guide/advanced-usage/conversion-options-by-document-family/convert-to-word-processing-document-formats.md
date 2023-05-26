---
id: "convert-to-word-processing-document-formats"
url: "conversion/convert-to-word-processing-document-formats"
title: "3. Convert to Word Processing Document Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 4
description: ""
keywords: ""
---

## Introduction ##

GroupDocs.Conversion Cloud REST API allows us to convert the [supported document formats]({{< ref "conversion/getting-started/supported-document-formats.md" >}}) to **Word Processing Document Formats** and returns the output document **storage URL** and also support to get the result as a **stream**.

# Convert to Words Formats #

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}}) to **Word Processing Document Formats** and get the output as a storage URL

## Resource ##

HTTP POST ~/conversion

[Swagger UI](https://apireference.groupdocs.cloud/conversion/) lets you call this REST API directly from the browser.

## cURL Example ##

{{< tabs tabTotal="2" tabID="1" tabName1="Request" tabName2="Response" >}} {{< tab tabNum="1" >}}

```html
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token}" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/sample.pdf\",  \"Format\": \"docx\",  \"LoadOptions\": {\"PdfLoadOptions\": {\"Password\": \"\",   \"HidePdfAnnotations\":\"true\",   \"RemoveEmbeddedFiles\":\"false\",   \"FlattenAllFields\":\"true\"}},  \"ConvertOptions\": {      \"FromPage\": \"1\",     \"PagesCount\": \"2\",     \"Zoom\": \"100\", \"Dpi\": \"300\"  },  \"OutputPath\": \"converted/towords\"}"

```

{{< /tab >}} {{< tab tabNum="2" >}}

```html
  {
    "name": "sample.docx",
    "size": 2826293,
    "url": "MyStorage:converted/towords/sample.docx"
  }

{{< /tab >}} {{< /tabs >}}

## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Convert to Words Formats ###

{{< tabs tabTotal="6" tabID="10" tabName1="C#" tabName2="Java" tabName3="PHP" tabName4="Node.js" tabName5="Python" tabName6="Ruby" >}} {{< tab tabNum="1" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Words.cs >}}

{{< /tab >}} {{< tab tabNum="3" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Words.php >}}

{{< /tab >}} {{< tab tabNum="2" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Words.java >}}

{{< /tab >}} {{< tab tabNum="6" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Words.rb >}}

{{< /tab >}} {{< tab tabNum="4" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Words.js >}}

{{< /tab >}} {{< tab tabNum="5" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Words.py >}}

{{< /tab >}} {{< /tabs >}}

# Convert to Word Processing Document Formats with Stream Output #

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}}) to **Word Processing Document Formats** and get the output as stream.

## Resource ##

HTTP POST ~/conversion

[Swagger UI](https://apireference.groupdocs.cloud/conversion/) lets you call this REST API directly from the browser.

## cURL Example ##

{{< tabs tabTotal="2" tabID="2" tabName1="Request" tabName2="Response" >}} {{< tab tabNum="1" >}}

```html
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token}" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/sample.pdf\",  \"Format\": \"docx\",  \"LoadOptions\": {\"PdfLoadOptions\": {\"Password\": \"\",   \"HidePdfAnnotations\":\"true\",   \"RemoveEmbeddedFiles\":\"false\",   \"FlattenAllFields\":\"true\"}},  \"ConvertOptions\": {      \"FromPage\": \"1\",     \"PagesCount\": \"2\",     \"Zoom\": \"100\", \"Dpi\": \"300\"  },  \"OutputPath\": \""}"

```

{{< /tab >}} {{< tab tabNum="2" >}}

```html
Code : 200
{
Download file
}
content-type: application/octet-stream

{{< /tab >}} {{< /tabs >}}

## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Convert to Word Processing Document Formats with Stream Output ###

{{< tabs tabTotal="6" tabID="11" tabName1="C#" tabName2="Java" tabName3="PHP" tabName4="Node.js" tabName5="Python" tabName6="Ruby" >}} {{< tab tabNum="1" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Words_Stream.cs >}}

{{< /tab >}} {{< tab tabNum="2" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Words_Stream.java >}}

{{< /tab >}} {{< tab tabNum="3" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Words_Stream.php >}}

{{< /tab >}} {{< tab tabNum="6" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Words_Stream.rb >}}

{{< /tab >}} {{< tab tabNum="4" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Words_Stream.js >}}

{{< /tab >}} {{< tab tabNum="5" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Words_Stream.py >}}

{{< /tab >}} {{< /tabs >}}

# Convert to WordProcessing with Advanced Options #

This example demonstrates how to convert pdf documents into word processing documents with advanced conversion options.

There are steps that usage of GroupDocs.Conversion Cloud consists of:

1. Upload input document into cloud storage
2. Convert document
3. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this [GroupDocs.Conversion Cloud Storage Operations]({{< ref "conversion/developer-guide/working-with-storage-api.md" >}}) for usage details.

Step 3 is not needed if the "OutputPath" option is not provided: the convert API method will return the converted document in the response body.

## Resource ##

HTTP POST ~/conversion

[Swagger UI](https://apireference.groupdocs.cloud/conversion/) lets you call this REST API directly from the browser.

## cURL Example ##

{{< tabs tabTotal="2" tabID="3" tabName1="Request" tabName2="Response" >}} {{< tab tabNum="1" >}}

```html

* First get JSON Web Token
* Please get your Client Id and Client Secret from https://dashboard.groupdocs.cloud/applications. Kindly place Client Id in "client_id" and Client Secret in "client_secret" argument.
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
        'FilePath': 'Pdf/sample.pdf',
        'Format': 'docx',
        'ConvertOptions': {
            'FromPage': 1,
            'PagesCount': 2
        },
        'OutputPath': 'Output'
    }"

```

{{< /tab >}} {{< tab tabNum="2" >}}

```html

[
  {
    "name": "sample.docx",
    "size": 2826363,
    "path": "Output/sample.docx",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/sample.docx"
  }
]

{{< /tab >}} {{< /tabs >}}

## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Convert to WordProcessing with Advanced Options ###

{{< tabs tabTotal="6" tabID="12" tabName1="C#" tabName2="Java" tabName3="PHP" tabName4="Node.js" tabName5="Python" tabName6="Ruby" >}} {{< tab tabNum="1" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Advance_Options_Words.cs >}}

{{< /tab >}} {{< tab tabNum="2" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Advance_Options_Words.java >}}

{{< /tab >}} {{< tab tabNum="3" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Advance_Options_Words.php >}}

{{< /tab >}} {{< tab tabNum="6" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Advance_Options_Words.rb >}}

{{< /tab >}} {{< tab tabNum="4" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Advance_Options_Words.js >}}

{{< /tab >}} {{< tab tabNum="5" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Advance_Options_Words.py >}}

{{< /tab >}} {{< /tabs >}}
