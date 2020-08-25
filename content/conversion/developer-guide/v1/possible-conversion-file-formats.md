---
id: "possible-conversion-file-formats"
url: "conversion/possible-conversion-file-formats"
title: "Possible Conversion File Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
---

{{< alert style="info" >}}
Note:  The features listed in this page are supported only in GroupDocs.Conversion Cloud V1

{{< /alert >}}

# Get All Possible Conversion File Formats #

You can get the list of all possible **Conversion File Formats** supported by GroupDocs.Conversion Cloud.

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [Supported File Formats](https://apireference.groupdocs.cloud/conversion/#!/Formats/GetAllPossibleConversions) example.

## cURL Example ##

{{< tabs tabTotal="2" tabID="1" tabName1="Request" tabName2="Response" >}} {{< tab tabNum="1" >}}

```html
curl -v  "https://api.groupdocs.cloud/v1.0/conversion/formats?appsid#XXXX&#x26;signature#XXX-XX"
-H "Content-Type: application/json" -X POST -d "{}"
```

{{< /tab >}} {{< tab tabNum="2" >}}

```html
[
  {
    "sourceFileType": "doc",
    "possibleConversions": [
      "ods",
      "xls",
      "xlsx",
      "xlsm",
      "xlsb",
      "csv",
      "xls2003",
      "xltx",
      "xltm",
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
{{< /tab >}} {{< /tabs >}}

## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Get All Possible Conversion File Formats ###

 C#

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Get_All_Possible_Conversions.cs >}}

 PHP

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Get_All_Possible_Conversions.php >}}

