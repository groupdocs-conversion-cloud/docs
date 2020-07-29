---
id: "convert-one-note-document-with-load-options"
url: "conversion/convert-one-note-document-with-load-options"
title: "4. Convert One Note Document with Load Options"
productName: "GroupDocs.Conversion Cloud"
weight: 4
description: ""
keywords: ""
---






# Introduction #

This example demonstrates how to convert one note documents into pdf documents with load options. 

There are steps that usage of GroupDocs.Conversion Cloud consists of:

   ~1. Upload input document into cloud storage
   2. Convert document
   3. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this [GroupDocs.Conversion Cloud documentation]({{< ref "conversion/developer-guide/working-with-storage-api.md" >}})) for usage details.

Step 3 is not needed if the "OutputPath" option is not provided: the convert API method will return the converted document in the response body.

## Resource ##

HTTP POST /conversion

Swagger UI lets you call this REST API directly from the browser.  

## cURL Example ##


 Request

```html 

* First get JSON Web Token
* Please get your App Key and App SID from https://dashboard.groupdocs.cloud/#/apps. Kindly place App Key in "client_secret" and App SID in "client_id" argument.
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
        'FilePath': 'Note/sample.one',
        'Format': 'pdf',
        'LoadOptions': {
            'DefaultFont': 'Arial'
        },
        'OutputPath': 'Output'
    }"

 ```


 Response

```html 

[
  {
    "name": "sample.pdf",
    "size": 20072,
    "path": "Output/sample.pdf",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/sample.pdf"
  }
]

 ```




## SDKs ##

Using an SDK (API client) is the quickest way for a developer to speed up the development. An SDK takes care of a lot of low-level details of making requests and handling responses and lets you focus on writing code specific to your particular project. Check out our [GitHub repository](https://github.com/groupdocs-conversion-cloud) for a complete list of GroupDocs.Conversion Cloud SDKs along with working examples, to get you started in no time. Please check [Available SDKs]({{< ref "conversion/getting-started/available-sdks.md" >}}) article to learn how to add an SDK to your project.

###Convert One Note Document with Load Options ###


 C#

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Load_Options_OneNote.cs >}}




 PHP

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Load_Options_OneNote.php >}}




 Java

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Load_Options_OneNote.java >}}




 Ruby

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Load_Options_OneNote.rb >}}




 Node.Js

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Load_Options_OneNote.js >}}




 Python

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Load_Options_OneNote.py >}}




