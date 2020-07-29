---
id: "quick-convert-to-any-formats"
url: "conversion/quick-convert-to-any-formats"
title: "Quick Convert to Any Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 15
description: ""
keywords: ""
---

{{< alert style="info" >}}
Note:  The features listed in this page are supported only in GroupDocs.Conversion Cloud V1

{{< /alert >}}










# Introduction #

GroupDocs.Conversion Cloud REST API allows to convert the [supported document formats]({{< ref "conversion/developer-guide/v1/supported-file-formats.md" >}}) to  **Any Formats** and returns the output document **storage URL** and also support to get result as a **stream** or **Array of stream**.

# Quick Convert to Any Formats with Storage URL Output #

You can convert between any [supported document formats]({{< ref "conversion/developer-guide/v1/supported-file-formats.md" >}}) and get the output as storage URL.

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to any format with Storage URL Output (quick convert)](https://apireference.groupdocs.cloud/conversion/#!/QuickConversion/QuickConvert) example.

## cURL Example ##





 Request

```html 
curl -v "https://api.groupdocs.cloud/v1.0/conversion/quick?outPath#conversions%2F&#x26;appsid#XXXX&#x26;signature#XXX-XX" 
-H "content-type: application/json" 
-X POST -d "{'format':'pdf','sourceFile':{'folder':'conversions','name':'sample.docx'}}"
 ```




 Response

```html 
 {
  "href": "https://api.groupdocs.cloud/v1.0/conversion/storage/file/conversions/sample.pdf",
  "rel": "self",
  "type": null,
  "title": null
}
 ```






## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Quick Convert to Any Formats with Storage URL Output ###





 C#



 
{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Any_Format.cs >}}







 PHP



 
{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Any_Forrmat.php >}}









# Quick Convert to Any Formats with Stream Output #

You can convert between any [supported document formats]({{< ref "conversion/developer-guide/v1/supported-file-formats.md" >}}) and get the output as stream.

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to any format with Stream Output (quick convert)](https://apireference.groupdocs.cloud/conversion/#!/QuickConversion/QuickConvertToStream) example.

## cURL Example ##





 Request

```html 
curl -v "https://api.groupdocs.cloud/v1.0/conversion/quick/stream?outPath#conversions%2F&#x26;appsid#XXXX&#x26;signature#XXX-XX" 
-H "content-type: application/json" 
-X POST -d "{'format':'pdf','sourceFile':{'folder':'conversions','name':'sample.docx'}}"
 ```




 Response

```html 
 Stream of document or Array of Stream Images.
 ```






## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Quick Convert to Any Formats with Stream Output ###





 C#



 
{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Any_Format _Stream.cs
 >}}







 PHP



 
{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Any_Forrmat_Stream.php >}}






