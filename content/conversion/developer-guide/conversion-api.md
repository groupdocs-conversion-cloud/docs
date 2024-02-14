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

{{< tabs "example1">}} {{< tab "Request" >}}

```bash
{
  "FilePath": "/words/docx/one-page.docx",
  "Format": "pdf",
  "OutputPath": "converted"
}
```

{{< /tab >}} {{< tab "Response" >}}

```json
[
  {
    "name": "one-page.pdf",
    "size": 17958,
    "url": "converted/one-page.pdf"
  }
]
```

{{< /tab >}} {{< /tabs >}}
