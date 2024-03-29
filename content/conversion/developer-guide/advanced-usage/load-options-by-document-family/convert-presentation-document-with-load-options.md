---
id: "convert-presentation-document-with-load-options"
url: "conversion/convert-presentation-document-with-load-options"
title: "6. Convert Presentation Document with Load Options"
productName: "GroupDocs.Conversion Cloud"
weight: 6
description: ""
keywords: ""
toc: True
---

This example demonstrates how to convert presentation documents into pdf documents with load options.

There are steps that usage of GroupDocs.Conversion Cloud consists of:

   1. Upload input document into cloud storage
   2. Convert document
   3. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this [GroupDocs.Conversion Cloud documentation]({{< ref "conversion/developer-guide/working-with-storage-api.md" >}}) for usage details.

Step 3 is not needed if the "OutputPath" option is not provided: the convert API method will return the converted document in the response body.

## Resource

HTTP POST /conversion

Swagger UI lets you call this REST API directly from the browser.

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
        'FilePath': 'Presentation/with_notes.pptx',
        'Format': 'pdf',
        'LoadOptions': {
            'HideComments': true
        },
        'OutputPath': 'Output'
    }"

```

{{< /tab >}} {{< tab "Response" >}}

```json

[
  {
    "name": "with_notes.pdf",
    "size": 20072,
    "path": "Output/with_notes.pdf",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/with_notes.pdf"
  }
]
```
{{< /tab >}} {{< /tabs >}}

## SDK examples

Using an SDK (API client) is the quickest way for a developer to speed up the development. An SDK takes care of a lot of low-level details of making requests and handling responses and lets you focus on writing code specific to your particular project. Check out our [GitHub repository](https://github.com/groupdocs-conversion-cloud) for a complete list of GroupDocs.Conversion Cloud SDKs along with working examples, to get you started in no time. Please check [Available SDKs]({{< ref "conversion/getting-started/available-sdks.md" >}}) article to learn how to add an SDK to your project.

{{< tabs "example2">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Load_Options_Presentation.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Load_Options_Presentation.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Load_Options_Presentation.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Load_Options_Presentation.rb >}}

 Node.Js

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Load_Options_Presentation.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Load_Options_Presentation.py >}}

{{< /tab >}} {{< /tabs >}}
