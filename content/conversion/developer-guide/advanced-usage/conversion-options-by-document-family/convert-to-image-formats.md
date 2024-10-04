---
id: "convert-to-image-formats"
url: "conversion/convert-to-image-formats"
title: "4. Convert to Image Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 4
description: ""
keywords: ""
toc: True
---

GroupDocs.Conversion Cloud REST API allows to convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}}) to **Image Formats** and returns the output document **storage URL** and also support to get result as a **array of stream**.

## Convert to Images Formats

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}}) to **Images Formats** and get the output as storage URL.

### Resource

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to Images format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.

### cURL example

{{< tabs "example1">}} {{< tab "Request" >}}

```bash
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/sample.docx\",  \"Format\": \"jpg\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"\"}},\"ConvertOptions\": {\"JpegConvertOptions\": {\"Grayscale\": \"false\", \"FromPage\": \"1\", \"PagesCount\": \"2\", \"Quality\": \"100\",\"RotateAngle\": \"90\", \"UsePdf\": \"false\" }},  \"OutputPath\": \"converted/topjpg\"}"
```

{{< /tab >}} {{< tab "Response" >}}

```json
  {
    "name": "sample-page-1.jpg",
    "size": 107611,
    "url": "MyStorage:converted/topjpg/sample-page-1.jpg"
  },
  {
    "name": "sample-page-2.jpg",
    "size": 45075,
    "url": "MyStorage:converted/topjpg/sample-page-2.jpg"
  }
```

{{< /tab >}} {{< /tabs >}}

### SDK examples

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

{{< tabs "example2">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Images.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Images.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Images.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Images.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Images.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Images.py >}}

{{< /tab >}} {{< tab "Go" >}}

```go
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples
package convert

import (
 "fmt"

 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go/models"
)

func ConvertToImage() {

 settings := models.ConvertSettings{
  Format:     "jpg",
  FilePath:   "WordProcessing/four-pages.docx",
  OutputPath: "converted",
  ConvertOptions: &models.ImageConvertOptions{
   FromPage:   1,
   PagesCount: 2,
  },
 }

 result, _, err := config.Client.ConvertApi.ConvertDocument(config.Ctx, settings)

 if err != nil {
  fmt.Printf("ConvertToImage error: %v\n", err)
  return
 }

 fmt.Printf("Document converted successfully: %v\n", result[0].Url)
}
```

{{< /tab >}} {{< /tabs >}}

## Convert to Image Formats with Stream Output

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}}) to **Images Formats** and get the output as Stream.

### Resource

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to Images format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.

### cURL example

{{< tabs "example3">}} {{< tab "Request" >}}

```bash
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/sample.docx\",  \"Format\": \"jpg\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"\"}},\"ConvertOptions\": {\"JpegConvertOptions\": {\"Grayscale\": \"false\", \"FromPage\": \"1\", \"PagesCount\": \"2\", \"Quality\": \"100\",\"RotateAngle\": \"90\", \"UsePdf\": \"false\" }},  \"OutputPath\": \""}"

```

{{< /tab >}} {{< tab "Response" >}}

```log
File contents
```

{{< /tab >}} {{< /tabs >}}

### SDK examples

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

{{< tabs "example4">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Images_Stream.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Images_Stream.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Images_Stream.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Images_Stream.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Images_Stream.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Images_Stream.py >}}

{{< /tab >}} {{< tab "Go" >}}

```go
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples
package convert

import (
 "fmt"
 "os"

 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go/models"
)

func ConvertToImage() {

 settings := models.ConvertSettings{
  Format:     "jpg",
  FilePath:   "WordProcessing/four-pages.docx",
 }

 result, _, err := config.Client.ConvertApi.ConvertDocument(config.Ctx, settings)

 if err != nil {
  fmt.Printf("ConvertToImage error: %v\n", err)
  return
 }

 // Get file info
 fileInfo, errInfo := result.Stat()
 if errInfo != nil {
  t.Error(errInfo)
 }

 // Get the size of the file
 fileSize := fileInfo.Size()
}
```

{{< /tab >}} {{< /tabs >}}

## Convert to Images with Advanced Options

This example demonstrates how to convert word processing documents into a image with advanced conversion options.

There are steps that usage of GroupDocs.Conversion Cloud consists of:

1. Upload input document into cloud storage
2. Convert document
3. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this [GroupDocs.Conversion Cloud Storage Operations]({{< ref "conversion/developer-guide/working-with-storage-api.md" >}}) for usage details.

Step 3 is not needed if the "OutputPath" option is not provided: the convert API method will return the converted document in the response body.

### Resource

HTTP POST ~/conversion

[Swagger UI](https://apireference.groupdocs.cloud/conversion/) lets you call this REST API directly from the browser.

### cURL example

{{< tabs "example5">}} {{< tab "Request" >}}

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
        'Format': 'jpg',
        'ConvertOptions': {
            'FromPage': 1,
            'PagesCount': 2
        },
        'OutputPath': 'Output'
    }"

```

{{< /tab >}} {{< tab "Response" >}}

```json

[
  {
    "name": "four-pages-page-1.jpg",
    "size": 53874,
    "path": "Output/four-pages-page-1.jpg",
    "url": "https://api-qa.groupdocs.cloud/v2.0/conversion/storage/file/Output/four-pages-page-1.jpg"
  },
  {
    "name": "four-pages-page-2.jpg",
    "size": 66465,
    "path": "Output/four-pages-page-2.jpg",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/four-pages-page-2.jpg"
  }
]
```

{{< /tab >}} {{< /tabs >}}

### SDK examples

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

{{< tabs "example6">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Advance_Options_Images.cs >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Advance_Options_Images.java >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Advance_Options_Images.php >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Advance_Options_Images.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Advance_Options_Images.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Advance_Options_Images.py >}}
{{< /tab >}} {{< tab "Go" >}}

```go
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples
package convert

import (
 "fmt"

 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go/models"
)

func ConvertToImage() {

 settings := models.ConvertSettings{
  Format:     "jpg",
  FilePath:   "WordProcessing/four-pages.docx",
  OutputPath: "converted",
  ConvertOptions: &models.JpegConvertOptions{
   Grayscale: false,
   FromPage:   1,
   PagesCount: 2,
   Quality: 100,
   RotateAngle: 90,
   UsePdf: false,
  },
 }

 result, _, err := config.Client.ConvertApi.ConvertDocument(config.Ctx, settings)

 if err != nil {
  fmt.Printf("ConvertToImage error: %v\n", err)
  return
 }

 fmt.Printf("Document converted successfully: %v\n", result[0].Url)
}
```

{{< /tab >}} {{< /tabs >}}
