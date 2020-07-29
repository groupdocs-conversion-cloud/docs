---
id: "convert-specific-pages"
url: "conversion/convert-specific-pages"
title: "Convert Specific Pages"
productName: "GroupDocs.Conversion Cloud"
description: ""
keywords: ""
---





# Introduction #

This example demonstrates how to convert specific pages from word processing documents into pdf documents.

There are steps that usage of GroupDocs.Conversion Cloud consists of:

1. Upload input document into cloud storage
1. Convert document
1. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this for usage details.

Step 3 is not needed if the "OutputPath" option is not provided: the convert API method will return the converted document in the response body.

|#Name|#Description|#Comment
|FileInfo.FilePath|The path of the document, located in the storage.|Required.
|FileInfo.StorageName|Storage name|It could be omitted for default storage.
|FileInfo.Password|The password to open file|It should be specified only for password-protected documents.

## Resource URI ##



HTTP POST ~~/conversion


[Swagger UI](https://apireference.groupdocs.cloud/watermark/#/Info/GetInfo) lets you call this REST API directly from the browser. 

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
        'FilePath': 'WordProcessing/four-pages.docx',
        'Format': 'pdf',
        'ConvertOptions': {
            'Pages': [1, 3]
        },
        'OutputPath': 'Output/two-pages.pdf'
    }"

 ```


 Response

```html 

[
  {
    "name": "two-pages.pdf",
    "size": 51598,
    "path": "Output/two-pages.pdf",
    "url": "https://api-qa.groupdocs.cloud/v2.0/conversion/storage/file/Output/two-pages.pdf"
  }
]



## SDKs ##

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-watermark-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-watermark-cloud), it shows [document information](https://apireference.groupdocs.cloud/watermark/#/Info/GetInfo) API calls and lets you use GroupDocs Cloud features in a native way for your preferred language.

### SDK Examples ###


 C#

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Common_Specific_Pages.cs >}}




 PHP

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Common_Specific_Pages.php >}}




 Java

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Common_Specific_Pages.java >}}




 Ruby

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Common_Specific_Pages.rb >}}




 Node.Js

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Common_Specific_Pages.js >}}




 Python

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Common_Specific_Pages.py >}}




