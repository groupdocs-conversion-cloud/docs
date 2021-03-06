---
id: "convert-to-html-formats"
url: "conversion/convert-to-html-formats"
title: "Convert to HTML Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 5
description: ""
keywords: ""
---

{{< alert style="info" >}}
Note:  The features listed in this page are supported only in GroupDocs.Conversion Cloud V1

{{< /alert >}}

## Introduction ##

GroupDocs.Conversion Cloud REST API allows to convert the [supported document formats]({{< ref "conversion/developer-guide/v1/supported-file-formats.md" >}}) to **HTML Formats** and returns the output document **storage URL** and also support to get result as a **stream**.

# Convert to HTML Formats with Storage URL Output #

You can convert the [supported document formats]({{< ref "conversion/developer-guide/v1/supported-file-formats.md" >}}) to **HTML Formats** and get the Storage URL Output.

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to HTML Format](https://apireference.groupdocs.cloud/conversion/#!/HtmlConvert/ConvertToHtml) example.

## cURL Example ##

{{< tabs tabTotal="2" tabID="1" tabName1="Request" tabName2="Response" >}} {{< tab tabNum="1" >}}

```html
 curl -v "https://api.groupdocs.cloud/v1.0/conversion/html?outPath#conversions%2F&#x26;appsid#XXXX&#x26;signature#XXX-XX"
-H "content-type: application/json"
-X POST -d "{'options':{'showGridLines': false,'showHiddenSheets': false,'hideWordTrackedChanges': false,'hidePdfAnnotations': false,'hideComments': false},'sourceFile':{'folder':'conversions','name':'sample.docx'}}"

```

{{< /tab >}} {{< tab tabNum="2" >}}

```html
 {
  "href": "https://api.groupdocs.cloud/v1.0/conversion/storage/file/conversions/sample.html",
  "rel": "self",
  "type": null,
  "title": null
}
{{< /tab >}} {{< /tabs >}}

## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Convert to HTML Formats with Storage URL Output ###

{{< tabs tabTotal="2" tabID="10" tabName1="C#" tabName2="PHP" >}} {{< tab tabNum="1" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Html.cs >}}

{{< /tab >}} {{< tab tabNum="2" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Html.php >}}

{{< /tab >}} {{< /tabs >}}

# Convert to HTML with Stream Output #

You can convert the [supported document formats]({{< ref "conversion/developer-guide/v1/supported-file-formats.md" >}}) to **HTML** and get the output document as Stream.

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to HTML Format with stream output](https://apireference.groupdocs.cloud/conversion/#!/HtmlConvert/ConvertToHtmlStream) example.

## cURL Example ##

{{< tabs tabTotal="2" tabID="2" tabName1="Request" tabName2="Response" >}} {{< tab tabNum="1" >}}

```html
 curl -v "https://api.groupdocs.cloud/v1.0/conversion/html/stream?outPath#conversions%2F&#x26;appsid#XXXX&#x26;signature#XXX-XX"
-H "content-type: application/json"
-X POST -d "{'options':{'showGridLines': false,'showHiddenSheets': false,'hideWordTrackedChanges': false,'hidePdfAnnotations': false,'hideComments': false},'sourceFile':{'folder':'conversions','name':'sample.docx'}}"

```

{{< /tab >}} {{< tab tabNum="2" >}}

```html
Stream of document.
{{< /tab >}} {{< /tabs >}}

## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Convert to HTML Formats with Stream Output ###

{{< tabs tabTotal="2" tabID="11" tabName1="C#" tabName2="PHP" >}} {{< tab tabNum="1" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Html_Stream.cs >}}

{{< /tab >}} {{< tab tabNum="2" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Html_Stream.php >}}

{{< /tab >}} {{< /tabs >}}
