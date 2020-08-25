---
id: "conversion-api"
url: "conversion/conversion-api"
title: "Working with Conversion API"
productName: "GroupDocs.Conversion Cloud"
weight: 5
description: ""
keywords: ""
---
This API intended for convert the document to specified target format.

#### URI ####

```html
~/
```

#### HTTP POST ####

#### Example 2 (Convert document) ####

Takes  as input and returns.

##### Example URL #####

```html
https://api.groupdocs.cloud/v2.0/conversion
```

{{< tabs tabTotal="2" tabID="2" tabName1="Request" tabName2="Response" >}} {{< tab tabNum="1" >}}

```html
{
  "FilePath": "/words/docx/one-page.docx",
  "Format": "pdf",
  "OutputPath": "converted"
}
```

{{< /tab >}} {{< tab tabNum="2" >}}

```html
[
  {
    "name": "one-page.pdf",
    "size": 17958,
    "url": "converted/one-page.pdf"
  }
]
```

{{< /tab >}} {{< /tabs >}}
