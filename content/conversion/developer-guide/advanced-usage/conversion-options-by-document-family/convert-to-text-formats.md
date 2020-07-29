---
id: "convert-to-text-formats"
url: "conversion/convert-to-text-formats"
title: "7. Convert to Text Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 8
description: ""
keywords: ""
---





# Introduction #

GroupDocs.Conversion Cloud REST API allows to convert the [supported document formats]({{< ref "conversion/getting-started/supported-document-formats.md" >}})) to  **Text Formats** and returns the output document **storage URL** and also support to get result as a **stream** or **Array of stream**.

# Convert to Text Formats #

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}})) to **Text Formats** and get output as Storage URL.

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to Text format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.

## cURL Example ##



 Request

```html 
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" 
-H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/sample.docx\",  \"Format\": \"txt\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"\", \"HideWordTrackedChanges\": \"true\",  \"DefaultFont\": \"Arial\"}},\"ConvertOptions\": {\"TxtConvertOptions\": {\"FromPage\": \"1\", \"PagesCount\": \"2\",  }},  \"OutputPath\": \"converted/toptext\"}"


 ```


 Response

```html 
  {
    "name": "sample.txt",
    "size": 2141,
    "url": "MyStorage:converted/toptext/sample.txt"
  }

 ```



## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Convert to Text Formats ###



 C#

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Text.cs >}}




 PHP

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Text.php >}}




 Java

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Text.java >}}




 Ruby


{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Text.rb >}}




 Node

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Text.js >}}




 Python

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Text.py >}}






# Convert to Text Formats with Stream Output #

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}})) to **Text Formats** and get output as Stream.

## Resource ##

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to Text format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.

## cURL Example ##



 Request

```html 
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" 
-H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/sample.docx\",  \"Format\": \"txt\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"\", \"HideWordTrackedChanges\": \"true\",  \"DefaultFont\": \"Arial\"}},\"ConvertOptions\": {\"TxtConvertOptions\": {\"FromPage\": \"1\", \"PagesCount\": \"2\",  }},  \"OutputPath\": \""}"


 ```


 Response

```html 
Code : 200
{
Download file
}  
content-type: application/octet-stream


 ```




## SDKs ##

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Convert to Text Formats with Stream Output ###



 C#




{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Convert_To_Text_Stream.cs >}}





 PHP

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Convert_To_Text_Stream.php >}}




 Java

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Convert_To_Text_Stream.java >}}




 Ruby

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Convert_To_Text_Stream.rb >}}




 Node

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Convert_To_Text_Stream.js >}}




 Python

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Convert_To_Text_Stream.py >}}





