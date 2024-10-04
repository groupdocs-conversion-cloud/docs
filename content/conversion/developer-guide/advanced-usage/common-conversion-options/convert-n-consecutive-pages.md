---
id: "convert-n-consecutive-pages"
url: "conversion/convert-n-consecutive-pages"
title: " Convert N Consecutive Pages"
productName: "GroupDocs.Conversion Cloud"
description: ""
keywords: ""
toc: True
---


This example demonstrates how to convert consecutive pages from word processing documents into pdf documents.

There are steps that usage of GroupDocs.Conversion Cloud consists of:

1. Upload input document into cloud storage
2. Convert document
3. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this for usage details.
Step 3 is not needed if the "OutputPath" option is not provided: the convert API method will return the converted document in the response body.

| Name | Description | Comment
|---|---|---
|FileInfo.FilePath|The path of the document, located in the storage.|Required.
|FileInfo.StorageName|Storage name|It could be omitted for default storage.
|FileInfo.Password|The password to open file|It should be specified only for password-protected documents.

## Resource URI

```HTTP POST ~/conversion```

[Swagger UI](https://apireference.groupdocs.cloud/watermark/#/Info/GetInfo) lets you call this REST API directly from the browser.

## cURL example

{{< tabs "example1">}} {{< tab "Request" >}}

```bash
# First get JSON Web Token
# Please get your Client Id and Client Secret from https://dashboard.groupdocs.cloud/applications. Kindly place Client Id in "client_id" and Client Secret in "client_secret" argument.
curl -v "https://api.groupdocs.cloud/connect/token" \
-X POST \
-d "grant_type#client_credentials&client_id#xxxx&client_secret#xxxx" \
-H "Content-Type: application/x-www-form-urlencoded" \
-H "Accept: application/json"

# cURL example to convert document
curl -v "https://api.groupdocs.cloud/v2.0/conversion/conversion" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-H "Authorization: Bearer <jwt token>"
-d "{
        'FilePath': 'WordProcessing/four-pages.docx',
        'Format': 'pdf',
        'ConvertOptions': {
            'FromPage': 2,
            'PagesCount': 2
        },
        'OutputPath': 'Output/two-pages.pdf'
    }"

```

{{< /tab >}} {{< tab "Response" >}}

```json
[
  {
    "name": "two-pages.pdf",
    "size": 76532,
    "path": "Output/two-pages.pdf",
    "url": "https://api-qa.groupdocs.cloud/v2.0/conversion/storage/file/Output/two-pages.pdf"
  }
]
```

{{< /tab >}} {{< /tabs >}}

## SDK examples

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us.

{{< tabs "example2">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Common_NPages.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Common_NPages.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Common_NPages.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Common_NPages.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Common_NPages.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Common_NPages.py >}}

{{< /tab >}} {{< tab "Go" >}}

```go
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples
package common

import (
 "fmt"

 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go/models"
)

func ConvertConsecutivePages() {

 settings := models.ConvertSettings{
  Format:     "pdf",
  FilePath:   "WordProcessing/four-pages.docx",
  OutputPath: "converted",
  ConvertOptions: &models.PdfConvertOptions{
   FromPage:   2,
   PagesCount: 2,
  },
 }

 result, _, err := config.Client.ConvertApi.ConvertDocument(config.Ctx, settings)

 if err != nil {
  fmt.Printf("ConvertConsecutivePages error: %v\n", err)
  return
 }

 fmt.Printf("Document converted successfully: %v\n", result[0].Url)
}
```

{{< /tab >}} {{< /tabs >}}
