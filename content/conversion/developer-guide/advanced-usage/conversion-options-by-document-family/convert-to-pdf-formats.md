---
id: "convert-to-pdf-formats"
url: "conversion/convert-to-pdf-formats"
title: "6. Convert to PDF Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 6
description: ""
keywords: ""
toc: True
---

GroupDocs.Conversion Cloud REST API allows to convert the [supported document formats]({{< ref "conversion/getting-started/supported-document-formats.md" >}}) to **PDF Formats** and returns the output document **storage URL** and also support to get result as a **stream**.

## Convert to PDF Formats

You can convert the [supported document formats]({{< ref "conversion/getting-started/supported-document-formats.md" >}}) to **PDF Formats** and get output as storage URL.

### Resource

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to PDF format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.

### cURL Example

{{< tabs "example1">}} {{< tab "Request" >}}

```bash
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/password-protected.docx\",  \"Format\": \"pptx\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"password\"  }},  \"ConvertOptions\": {\"PdfConvertOptions\": {\"BookmarksOutlineLevel\": \"1\",                        \"CenterWindow\" :\"true\",  \"CompressImages\": \"false\",   \"DisplayDocTitle\":  \"true\", \"Dpi\":\"1024\",  \"ExpandedOutlineLevels\": \"1\",   \"FitWindow\": \"false\",\"FromPage\" \"1\",   \"Grayscale\": \"false\",  \"HeadingsOutlineLevels\": \"1\",   \"ImageQuality\": \"100\",                        \"Linearize\": \"false\",   \"MarginTop\": \"5\",   \"MarginLeft\": \"5\", \"Password\": \"password\",  \"UnembedFonts\": \"true\",  \"RemoveUnusedStreams\": \"true\",  \"RemoveUnusedObjects\": \"true\", \"RemovePdfaCompliance\": \"false\", \"Height\": \"1024\"}  },  \"OutputPath\": \"converted/topdf\"}"

```

{{< /tab >}} {{< tab "Response" >}}

```json
  {
    "name": "sample.pptx",
    "size": 68540,
    "url": "MyStorage:converted/topdf/password-protected.pdf"
  }
```
{{< /tab >}} {{< /tabs >}}

### SDKs

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

{{< tabs "example2">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Pdf.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Pdf.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Pdf.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Pdf.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Pdf.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Pdf.py >}}

{{< /tab >}} {{< /tabs >}}

## Convert to PDF Formats with Stream Output

You can convert the [supported document formats]({{< ref "conversion/getting-started/supported-document-formats.md" >}}) to **PDF Formats** and get output as stream.

### Resource

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to PDF format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.

### cURL Example

{{< tabs "example3">}} {{< tab "Request" >}}

```bash
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/password-protected.docx\",  \"Format\": \"pptx\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"password\"  }},  \"ConvertOptions\": {\"PdfConvertOptions\": {\"BookmarksOutlineLevel\": \"1\",                        \"CenterWindow\" :\"true\",  \"CompressImages\": \"false\",   \"DisplayDocTitle\":  \"true\", \"Dpi\":\"1024\",  \"ExpandedOutlineLevels\": \"1\",   \"FitWindow\": \"false\",\"FromPage\" \"1\",   \"Grayscale\": \"false\",  \"HeadingsOutlineLevels\": \"1\",   \"ImageQuality\": \"100\",                        \"Linearize\": \"false\",   \"MarginTop\": \"5\",   \"MarginLeft\": \"5\", \"Password\": \"password\",  \"UnembedFonts\": \"true\",  \"RemoveUnusedStreams\": \"true\",  \"RemoveUnusedObjects\": \"true\", \"RemovePdfaCompliance\": \"false\", \"Height\": \"1024\"}  },  \"OutputPath\": \""}"

```

{{< /tab >}} {{< tab "Response" >}}

```log
File contents
```
{{< /tab >}} {{< /tabs >}}

## SDKs

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

{{< tabs "example4">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Pdf_Stream.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Pdf_Stream.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Pdf_Stream.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Pdf_Stream.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Pdf_Stream.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Pdf_Stream.py >}}

{{< /tab >}} {{< /tabs >}}

## Convert to PDF with Advanced Options

This example demonstrates how to convert word processing documents into pdf documents with advanced conversion options.

There are steps that usage of GroupDocs.Conversion Cloud consists of:

1. Upload input document into cloud storage
2. Convert document
3. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this [GroupDocs.Conversion Cloud Storage Operations]({{< ref "conversion/developer-guide/working-with-storage-api.md" >}}) for usage details.

Step 3 is not needed if the "OutputPath" option is not provided: the convert API method will return the converted document in the response body.

### Resource

HTTP POST ~/conversion

[Swagger UI](https://apireference.groupdocs.cloud/conversion/) lets you call this REST API directly from the browser.

### cURL Example

{{< tabs "example5">}} {{< tab "Request" >}}

```bash

# First get JSON Web Token
# Please get your Client Id and Client Secret from https://dashboard.groupdocs.cloud/applications. Kindly place Client Id in "client_id" and Client Secret in "client_secret" argument.
curl -v "https://api.groupdocs.cloud/connect/token" \
-X POST \
-d "grant_type#client_credentials&client_id#xxxx&client_secret#xxxx" \
-H "Content-Type: application/x-www-form-urlencoded" \
-H "Accept: application/json"

# cURL example to convert document
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

{{< /tab >}} {{< tab "Response" >}}

```json

[
  {
    "name": "password-protected.pdf",
    "size": 4434,
    "path": "Output/password-protected.pdf",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/password-protected.pdf"
  }
]
```
{{< /tab >}} {{< /tabs >}}

### SDKs

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

{{< tabs "example6">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Advance_Options_PDF.cs >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Advance_Options_PDF.java >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Advance_Options_PDF.php >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Advance_Options_PDF.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Advance_Options_PDF.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Advance_Options_PDF.py >}}

{{< /tab >}} {{< /tabs >}}
