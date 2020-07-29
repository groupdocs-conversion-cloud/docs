---
id: "conversionresult"
url: "conversion/conversionresult"
title: "4. ConversionResult"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
---

# ConversionResult #

ConversionResult data structure returned by  [Document Conversion API]({{< ref "conversion/developer-guide/conversion-api.md" >}})) as output result
|---|---

##### ConversionResult example #####

```html 

[
  {
    "name": "one-page.pdf",
    "size": 17958,
    "url": "converted/one-page.pdf"
  },
  ...
]

 ```

##### ViewResult fields #####

|Name|Description
|---|---
|name|Name of the converted document
|size|Size of the converted document
|url|Page file path in the cloud storage. Use this value to download page using [ File API]({{< ref "conversion/developer-guide/working-with-file-api.md" >}}))

