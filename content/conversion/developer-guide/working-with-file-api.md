---
id: "working-with-file-api"
url: "conversion/working-with-file-api"
title: "Working with File Api"
productName: "GroupDocs.Conversion Cloud"
weight: 3
description: ""
keywords: ""
---






# Download File API #

This API allows you to download a file from [GroupDocs Cloud Storage](https://dashboard.groupdocs.cloud).
|---|---

## API Explorer ##

[GroupDocs.Conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/#/) lets you to try out [Download a File API](https://apireference.groupdocs.cloud/conversion/#/File/DownloadFile) right away in your browser! It allows you to effortlessly interact and try out every single operation our APIs exposes.
|---|---|---|---

### Request parameters ###

|Parameter|Description
|---|---
|**Path**|Path of the file including file name and extension e.g. /Folder1/file.ext

 Required. Can be passed as query string parameter or as part of the URL
|storageName|Name of the storage. If not set, then default storage used
|versionId|File version id


## cURL Example ##





 Request

```html 
curl -X GET "https://api.groupdocs.cloud/v2.0/conversion/storage/file/one-page.docx?storageName#MyStorage" -H  "accept: multipart/form-data" -H  "authorization: Bearer [Access Token]"
    
 ```




 Response

```html 
{
  "Code": 200,
  "Status": "OK"
}
 ```






## SDKs ##

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [File API](https://apireference.groupdocs.cloud/conversion/#/) calls and lets you use GroupDocs Cloud features in a native way for your preferred language.
|---|---|---|---|---|---

### SDK Examples ###





 C#




{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Download_File.cs >}}







 PHP




{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Download_File.php >}}







 Java




{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Download_File.java >}}







 Ruby




{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Download_File.rb >}}







 Node.Js




{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Download_File.js >}}







 Python




{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Download_File.py >}}









#  Upload File API #

This API allows you to upload files to the [GroupDocs Cloud Storage](https://dashboard.groupdocs.cloud/).
|---|---

## API Explorer ##

[GroupDocs.Conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/#/) lets you try out [Upload a File API](https://apireference.groupdocs.cloud/conversion/#/File/UploadFile) right away in your browser! It allows you to effortlessly interact and try out every single operation our APIs exposes.
|---|---|---|---


### Request Body parameters ###

|Parameter|Description
|---|---
|**path**|Path of the file including file name and extension e.g. /Folder1/file.ext

 Required. Can be passed as query string parameter or as part of the URL
|storageName|Name of the storage. If not set, then default storage used
|File|File content


## cURL Example ##





 Request

```html 
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion/storage/file/conversiondocs%2Fone-page2.docx?storageName#MyStorage" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"

 ```




 Response

```html 
Http status code: 200 (Returns OK and list of errors, which is empty if success.)
{
  "Uploaded": [
    "string"
  ],
  "Errors": [
    {
      "Code": "string",
      "Message": "string",
      "Description": "string",
      "InnerError": {
        "RequestId": "string",
        "Date": "2019-02-27T06:10:08.884Z"
      }
    }
  ]
}


 ```






## SDKs ##

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [File API](https://apireference.groupdocs.cloud/conversion/#/File) calls and lets you use GroupDocs for Cloud features in a native way for your preferred language.
|---|---|---|---|---|---

### SDK Examples ###





 C#




{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Upload_File.cs >}}







 PHP




{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Upload_File.php >}}







 Java




{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Upload_File.java >}}







 Ruby




{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Upload_File.rb >}}







 Node.Js




{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Upload_File.js >}}







 Python




{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Upload_File.py >}}









# Delete File API #

This API allows you to delete specific file from [GroupDocs Cloud Storage](https://dashboard.groupdocs.cloud/).
|---|---

## API Explorer ##

[GroupDocs.Conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/#/) lets you to try out [Delete a File](https://apireference.groupdocs.cloud/viewer/#/File/DeleteFile) right away in your browser! It allows you to effortlessly interact and try out every single operation our APIs exposes.
|---|---|---|---


### Request parameters ###

|Parameter|Description
|---|---
|**path**|Path of the file including file name and extension e.g. /Folder1/file.ext

 Required. Can be passed as query string parameter or as part of the URL
|storageName|Name of the storage. If not set, then default storage used
|versionId|File version id


## cURL Example ##





 Request

```html 
curl -X DELETE "https://api.groupdocs.cloud/v2.0/conversion/storage/file/conversiondocs1%2Fone-page1.docx?storageName#MyStorage" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"

 ```




 Response

```html 
{
  "Code": 200,
  "Status": "OK"
}
 ```






## SDKs ##

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [File API](https://apireference.groupdocs.cloud/conversion/#/File) calls and lets you use GroupDocs Cloud features in a native way for your preferred language.
|---|---|---|---|---|---

### SDK Examples ###





 C#




{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Delete_File.cs >}}







 PHP




{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Delete_File.php >}}







 Java




{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Delete_File.java >}}







 Ruby




{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Delete_File.rb >}}







 Node.Js




{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Delete_File.js >}}







 Python




{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Delete_File.py >}}









# File Copy API #

This API allows you to copy specific file from [GroupDocs Cloud Storage](https://dashboard.groupdocs.cloud/).
|---|---

## API Explorer ##

[GroupDocs.Conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/#/) lets you to try out [Copy File](https://apireference.groupdocs.cloud/conversion/#/File/CopyFile) right away in your browser! It allows you to effortlessly interact and try out every single operation our APIs exposes. 
|---|---|---|---

###  Request parameters ###

|Parameter|Description
|---|---
|**srcPath**|Path of the source file including file name and extension e.g. /Folder1/file.ext

Required. Can be passed as query string parameter or as part of the URL
|**destPath**|Path of the destination file. Required.
|srcStorageName|Name of the storage of source file. If not set, then default storage used
|destStorageName|Name of the storage of destination file. If not set, then default storage used
|versionId|Source file version id


## cURL Example ##





 Request

```html 
curl -X PUT "https://api.groupdocs.cloud/v2.0/conversion/storage/file/copy/conversiondocs%2Fone-page1.docx?destPath#conversiondocs1%2Fone-page1.docx'&#x26;srcStorageName#MyStorage&#x26;destStorageName#MyStorage" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
    
 ```




 Response

```html 
{
  "Code": 200,
  "Status": "OK"
}
 ```






## SDKs ##

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [File API](https://apireference.groupdocs.cloud/conversion/#/File) calls and lets you use GroupDocs Cloud features in a native way for your preferred language.
|---|---|---|---|---|---

### SDK Examples ###





 C#




{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Copy_File.cs >}}







 PHP




{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Copy_File.php >}}







 Java




{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Copy_File.java >}}







 Ruby




{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Copy_File.rb >}}







 Node.Js




{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Copy_File.js >}}







 Python




{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Copy_File.py >}}









# File Move API #

This API allows you to copy specific file from [GroupDocs Cloud Storage](https://dashboard.groupdocs.cloud/).
|---|---

## API Explorer ##

[GroupDocs.Conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/#/) lets you to try out [Move File](https://apireference.groupdocs.cloud/conversion/#/File/MoveFile) right away in your browser! It allows you to effortlessly interact and try out every single operation our APIs exposes. 
|---|---|---|---

###  Request parameters ###

|Parameter|Description
|---|---
|**srcPath**|Path of the source file including file name and extension e.g. /Folder1/file.ext

Required. Can be passed as query string parameter or as part of the URL
|**destPath**|Path of the destination file. Required.
|srcStorageName|Name of the storage of source file. If not set, then default storage used
|destStorageName|Name of the storage of destination file. If not set, then default storage used
|versionId|Source file version id


## cURL Example ##





 Request

```html 
curl -X PUT "https://api.groupdocs.cloud/v2.0/conversion/storage/file/move/conversiondocs%2Fone-page1.docx?destPath#conversiondocs1%2Fone-page1.docx'&#x26;srcStorageName#MyStorage&#x26;destStorageName#MyStorage" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
    
 ```




 Response

```html 
{
  "Code": 200,
  "Status": "OK"
}
 ```






## SDKs ##

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [File API](https://apireference.groupdocs.cloud/conversion/#/File) calls and lets you use GroupDocs for Cloud features in a native way for your preferred language.
|---|---|---|---|---|---

### SDK Examples ###





 C#




{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Move_File.cs >}}







 PHP




{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Move_File.php >}}







 Java




{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Move_File.java >}}







 Ruby




{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Move_File.rb >}}







 Node.Js




{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Move_File.js >}}







 Python




{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Move_File.py >}}







