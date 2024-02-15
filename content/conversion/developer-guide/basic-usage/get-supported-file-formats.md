---
id: "get-supported-file-formats"
url: "conversion/get-supported-file-formats"
title: "Get Supported File Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 2
description: ""
keywords: ""
toc: True
---
GroupDocs.conversion Cloud REST APIs support document conversion tools to convert files from 65+ supported formats to get high-quality output in quickly and reliably. To get a list of supported formats, You can use the below API.

## Resource

The following GroupDocs.conversion Cloud REST API resource has been used in the [Supported File Formats](https://apireference.groupdocs.cloud/conversion/#/Conversion/GetSupportedConversionTypes) example.

## cURL Example

{{< tabs "example1">}} {{< tab "Request" >}}

```curl
curl -X GET "https://api.groupdocs.cloud/v2.0/conversion/formats" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
[
  {
    "sourceFormat": "doc",
    "targetFormats": [
      "ods",
      "xls",
      "xlsx",
      "xlsm",
      "xlsb",
      "csv",
      "xls2003",
      "xltx",
      "xltm",
      "tsv",
      "tiff",
      "tif",
      "jpeg",
      "jpg",
      "png",
      "gif",
      "bmp",
      "ico",
      "psd",
      "svg",
      "webp",
      "jp2",
      "pdf",
      "epub",
      "xps",
      "ppt",
      "pps",
      "pptx",
      "ppsx",
      "odp",
      "otp",
      "potx",
      "potm",
      "pptm",
      "ppsm",
      "doc",
      "docm",
      "docx",
      "dot",
      "dotm",
      "dotx",
      "rtf",
      "txt",
      "odt",
      "ott",
      "html"
    ]
  },
  ...
]
``` 
{{< /tab >}} {{< /tabs >}}

## SDKs

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

{{< tabs "example2">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Get_Supported_Formats_For_Document.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Get_Supported_Formats_For_Document.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Get_Supported_Formats_For_Document.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Get_All_Supported_Formats_For_Document.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Get_All_Supported_Formats_For_Document.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Get_All_Supported_Formats_For_Document.py >}}

{{< /tab >}} {{< /tabs >}}

## Get All Supported Formats For Provided Document Extension

GroupDocs.Conversion Cloud supports functinality to get a list of supported formats from provided document extension, You can use the below API.

## Resource

The following GroupDocs.conversion Cloud REST API resource has been used in the [Supported File Formats](https://apireference.groupdocs.cloud/conversion/#/Conversion/GetSupportedConversionTypes) example.

## cURL Example

{{< tabs "example3">}} {{< tab "Request" >}}

```curl
curl -X GET "https://api.groupdocs.cloud/v2.0/conversion/formats?format#docx" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
[
  {
    "sourceFormat": "docx",
    "targetFormats": [
      "ods",
      "xls",
      "xlsx",
      "xlsm",
      "xlsb",
      "csv",
      "xls2003",
      "xltx",
      "xltm",
      "tsv",
      "tiff",
      "tif",
      "jpeg",
      "jpg",
      "png",
      "gif",
      "bmp",
      "ico",
      "psd",
      "svg",
      "webp",
      "jp2",
      "pdf",
      "epub",
      "xps",
      "ppt",
      "pps",
      "pptx",
      "ppsx",
      "odp",
      "otp",
      "potx",
      "potm",
      "pptm",
      "ppsm",
      "doc",
      "docm",
      "docx",
      "dot",
      "dotm",
      "dotx",
      "rtf",
      "txt",
      "odt",
      "ott",
      "html"
    ]
  }
]
``` 
{{< /tab >}} {{< /tabs >}}

## SDKs

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Get All Supported Formats For Provided Document Extension

{{< tabs "example4">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Get_Supported_Formats_For_Extension.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Get_Supported_Formats_For_Extension.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Get_Supported_Formats_Extension.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Get_All_Supported_Formats_For_Extension.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Get_All_Supported_Formats_For_Extension.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Get_All_Supported_Formats_For_Extension.py >}}

{{< /tab >}} {{< /tabs >}}
