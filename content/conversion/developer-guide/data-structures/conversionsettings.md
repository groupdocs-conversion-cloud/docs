---
id: "conversionsettings"
url: "conversion/conversionsettings"
title: "ConversionSettings"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
---

ConversionSettings data structure used as input parameters for  [Document Conversion API]({{< ref "conversion/developer-guide/conversion-api.md" >}}).

## ConversionSettings example

```json
{
  "Format": "string",
  "FilePath": "string",
  "Storage": "string",
  "LoadOptions": {
    "Password": "string",
  },
  "ConvertOptions": {
    "FromPage": "integer",
    "PagesCount": "integer"
  },
  "OutputPath": "string"
}

```

## ConversionSettings fields

|Name|Description
|---|---
|Format|Specifies target conversion format. **Required.**
|FilePath|The path of the document, located in the storage. **Required.**
|StorageName|Storage name
|LoadOptions|Format specific  [LoadOptions]({{< ref "conversion/developer-guide/data-structures/loadoptions.md" >}}).
|ConvertOptions|Format specific  [ConvertOptions]({{< ref "conversion/developer-guide/data-structures/convertoptions.md" >}}).
|OutputPath|Path to store conversion result.
