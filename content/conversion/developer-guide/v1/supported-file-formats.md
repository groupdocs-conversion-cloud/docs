---
id: "supported-file-formats"
url: "conversion/supported-file-formats"
title: "Supported File Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 3
description: ""
keywords: ""
---

{{< alert style="info" >}}
Note:  The features listed in this page are supported only in GroupDocs.Conversion Cloud V1

{{< /alert >}}

## Introduction ##

GroupDocs.Conversion Cloud REST API support to convert between over 50 documents and image formats such as:

## Supported File Formats: ##

**Conversion From**
* Portable Document Format: PDF
* Microsoft Word: DOC, DOCX, DOCM, DOT, DOTX, DOTM
* Microsoft Excel: XLS, XLSX, XLSM, XLSB
* Microsoft PowerPoint: PPT, PPTX, PPS, PPSX
* Microsoft Visio: VSD, VDX, VSS, VSX, VST, VTX, VSDX, VDW, VSSX, VSTX, VSDM, VSTM, VSSM
* Microsoft Project: MPP, MPT
* Microsoft Outlook: MSG, EML
* Microsoft OneNote: ONE
* Apple Mail: EMLX
* OpenDocument Formats: ODT, OTT, ODS, ODP, OTP, OTS, ODG
* Rich Text Format: RTF
* Plain Text File: TXT
* Comma-Separated Values: CSV
* HyperText Markup Language: HTML, MHT, MHTML
* Extensible Markup Language: XML
* XML Paper Specification: XPS
* CAD Drawing File Formats: DXF, DWG, IFC, STL
* Image files: BMP, GIF, JPG, PNG, TIFF, multi-page TIFF, WebP, DjVu, SVG, DNG
* Electronic publication: EPUB
* Windows Icon: ICO
* Mobipocket e-book format: MOBI
* Digital Imaging and Communications in Medicine format: DCM
* Metafile: WMF, EMF
* LaTeX: TEX

**Conversion To**
* Portable Document Format: PDF
* Microsoft Word: DOC, DOCX, DOCM, DOT, DOTX, DOTM
* Microsoft Excel: XLS, XLSX, XLSM, XLSB
* Microsoft PowerPoint: PPT, PPTX, PPS, PPSX
* OpenDocument Formats: ODT, OTT, ODS, ODP, OTP
* Rich Text Format: RTF
* Plain Text File: TXT
* HyperText Markup Language: HTML
* Image files: BMP, GIF, JPG, PNG, TIFF, multi-page TIFF, WebP, SVG, DNG, PSD
* Electronic publication: EPUB

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

### Get List of Supported File Formats ###

{{< tabs tabTotal="2" tabID="10" tabName1="C#" tabName2="PHP" >}} {{< tab tabNum="1" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Get_All_Possible_Conversions.cs >}}

{{< /tab >}} {{< tab tabNum="2" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Get_All_Possible_Conversions.php >}}

{{< /tab >}} {{< /tabs >}}
