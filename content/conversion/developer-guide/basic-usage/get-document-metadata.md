---
id: "get-document-metadata"
url: "conversion/get-document-metadata"
title: "Get Document Metadata"
productName: "GroupDocs.Conversion Cloud"
weight: 16
description: ""
keywords: ""
---
GroupDocs.Conversion Cloud REST APIs support document conversion tools to convert files from 65+ supported formats to get high-quality output in quickly and reliably. To get a Metadata of supported formats, You can use the below API.

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [Document Metadata](https://apireference.groupdocs.cloud/conversion/#/Conversion/GetSupportedConversionTypes) example.

## cURL Example ##

{{< tabs tabTotal="2" tabID="1" tabName1="Request" tabName2="Response" >}} {{< tab tabNum="1" >}}

```html
curl -X GET "https://api.groupdocs.cloud/v2.0/conversion/info?FilePath#words/four-pages.docx" -H "accept: application/json" -H "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab tabNum="2" >}}

```html
Content-type: application/json
{
  "fileType": "docx",
  "pageCount": 4,
  "size": 8651,
  "width": 0,
  "height": 0,
  "horizontalResolution": 0,
  "verticalResolution": 0,
  "bitsPerPixel": 0,
  "title": "",
  "author": "",
  "createdDate": "2016-05-18T00:00:00Z",
  "modifiedDate": "0001-01-01T00:00:00",
  "layers": null,
  "isPasswordProtected": false
}
{{< /tab >}} {{< /tabs >}}

## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Get Document Metadata ###

{{< tabs tabTotal="6" tabID="10" tabName1="C#" tabName2="Java" tabName3="PHP" tabName4="Node.js" tabName5="Python" tabName6="Ruby" >}} {{< tab tabNum="1" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Get_Document_Information.cs >}}

{{< /tab >}} {{< tab tabNum="3" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Get_Document_Information.php >}}

{{< /tab >}} {{< tab tabNum="2" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Get_Document_Information.java >}}

{{< /tab >}} {{< tab tabNum="6" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Get_Document_Information.rb >}}

{{< /tab >}} {{< tab tabNum="4" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Get_Document_Information.js >}}

{{< /tab >}} {{< tab tabNum="5" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Get_Document_Information.py >}}

{{< /tab >}} {{< /tabs >}}
