---
id: "convert-cad-document-with-load-options"
url: "conversion/convert-cad-document-with-load-options"
title: "1. Convert CAD Document with Load Options"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
---

## Introduction ##

This example demonstrates how to convert cad document into pdf document with load options.

There are steps that usage of GroupDocs.Conversion Cloud consists of:

   1. Upload input document into cloud storage
   2. Convert document
   3. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this [GroupDocs.Conversion Cloud documentation]({{< ref "conversion/developer-guide/working-with-storage-api.md" >}}) for usage details.

Step 3 is not needed if the "OutputPath" option is not provided: the convert API method will return the converted document in the response body.

## Resource ##

HTTP POST /conversion

Swagger UI lets you call this REST API directly from the browser. 

## cURL Example ##

{{< tabs tabTotal="2" tabID="1" tabName1="Request" tabName2="Response" >}} {{< tab tabNum="1" >}}

```html
* First get JSON Web Token
* Please get your Client Id and Client Secret from https://dashboard.groupdocs.cloud/applications. Kindly place Client Id in "client_id" and Client Secret in "client_secret" argument.
curl -v "https://api.groupdocs.cloud/connect/token" \
-X POST \
-d "grant_type#client_credentials&client_id#xxxx&client_secret#xxxx" \
-H "Content-Type: application/x-www-form-urlencoded" \
-H "Accept: application/json"

* cURL example to convert document
curl -v "https://api.groupdocs.cloud/v2.0/conversion/conversion" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-H "Authorization: Bearer <jwt token>"
-d "{
        'FilePath': 'Cad/Sample.dwg',
        'Format': 'pdf',
        'LoadOptions': {
            'Width': 1920,
            'Height': 1080
        },
        'OutputPath': 'Output'
    }"

```

{{< /tab >}} {{< tab tabNum="2" >}}

```html
[
  {
    "name": "Sample.pdf",
    "size": 20072,
    "path": "Output/Sample.pdf",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/Sample.pdf"
  }
]

{{< /tab >}} {{< /tabs >}}

## SDKs ##

Using an SDK (API client) is the quickest way for a developer to speed up the development. An SDK takes care of a lot of low-level details of making requests and handling responses and lets you focus on writing code specific to your particular project. Check out our [GitHub repository](https://github.com/groupdocs-conversion-cloud) for a complete list of GroupDocs.Conversion Cloud SDKs along with working examples, to get you started in no time. Please check [Available SDKs]({{< ref "conversion/getting-started/available-sdks.md" >}}) article to learn how to add an SDK to your project.

### Convert CAD Document with Load Options ###

{{< tabs tabTotal="6" tabID="10" tabName1="C#" tabName2="Java" tabName3="PHP" tabName4="Node.js" tabName5="Python" tabName6="Ruby" >}} {{< tab tabNum="1" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Load_Options_CAD.cs >}}

{{< /tab >}} {{< tab tabNum="3" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Load_Options_CAD.php >}}

{{< /tab >}} {{< tab tabNum="2" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Load_Options_CAD.java >}}

{{< /tab >}} {{< tab tabNum="6" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Load_Options_CAD.rb >}}

 Node.Js

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Load_Options_CAD.js >}}

{{< /tab >}} {{< tab tabNum="5" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Load_Options_CAD.py >}}

{{< /tab >}} {{< /tabs >}}
