---
id: "convert-to-any-format"
url: "conversion/convert-to-any-format"
title: "1. Convert to Any Format"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
toc: True
---

GroupDocs.Conversion Cloud REST API allows to convert [supported document formats]({{< ref "/conversion/getting-started/supported-document-formats.md" >}}) to **any Supported Document Formats** and returns the output document **storage URL** and also support to get result as a **stream**.

## Convert to Any Format

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}}) to **Any Format Format** and get Output as Storage URL.

## Resource

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to Any Format format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.

## cURL example

{{< tabs "example1">}} {{< tab "Request" >}}

```bash
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
-H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/sample.docx\",  \"Format\": \"txt\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"\", \"HideWordTrackedChanges\": \"true\",  \"DefaultFont\": \"Arial\"}},\"ConvertOptions\": {\"TxtConvertOptions\": {\"FromPage\": \"1\", \"PagesCount\": \"2\",  }},  \"OutputPath\": \"converted/topAny Format\"}"
```
{{< /tab >}} {{< tab "Response" >}}

```json
  {
    "name": "sample.txt",
    "size": 2141,
    "url": "MyStorage:converted/topAny Format/sample.txt"
  }
```
{{< /tab >}} {{< /tabs >}}

## SDK examples

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Convert to Any Format Example

{{< tabs "example2">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Any_Format.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Any_Format.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Any_Format.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Any_Format.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Any_Format.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Any_Format.py >}}

{{< /tab >}} {{< /tabs >}}

### Convert to Any Format with Stream Output

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}}) to **Any Format Format** and get Output as Stream.

## Resource

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to Any Format format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.

## cURL example

{{< tabs "example3">}} {{< tab "Request" >}}

```bash
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
-H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/sample.docx\",  \"Format\": \"txt\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"\", \"HideWordTrackedChanges\": \"true\",  \"DefaultFont\": \"Arial\"}},\"ConvertOptions\": {\"TxtConvertOptions\": {\"FromPage\": \"1\", \"PagesCount\": \"2\",  }},  \"OutputPath\": \""}"

```

{{< /tab >}} {{< tab "Response" >}}

```log
File content
```
{{< /tab >}} {{< /tabs >}}

## SDK examples

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Convert to Any Format with Stream Output

{{< tabs "example4">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Any_Format_Stream.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Any_Format_Stream.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Any_Format_Stream.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Any_Format_Stream.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Any_Format_Stream.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Any_Format_Stream.py >}}

{{< /tab >}} {{< /tabs >}}
