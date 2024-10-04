---
id: "working-with-storage-api"
url: "conversion/working-with-storage-api"
title: "Working with Storage API"
productName: "GroupDocs.Conversion Cloud"
weight: 2
description: ""
keywords: ""
toc: True
---

## Storage existence API

This API intended for checking existence of cloud storage with given name from [GroupDocs Cloud Storage](https://dashboard.groupdocs.cloud).

### API Explorer

[GroupDocs.Conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/#/) lets you to try out [Storage existence API](https://apireference.groupdocs.cloud/conversion/#/Storage/StorageExists) right away in your browser! It allows you to effortlessly interact and try out every single operation our APIs exposes.

### Request parameters

|Parameter|Description
|---|---
|**storageName**|Storage name

### cURL example

{{< tabs "example1">}} {{< tab "Request" >}}

```bash
curl -X GET "https://api.groupdocs.cloud/v2.0/conversion/storage/MyStorage/exist" -H  "accept: application/json" -H  "authorization: Bearer  [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
{
  "exists": true
}
```

{{< /tab >}} {{< /tabs >}}

### SDK examples

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [Storage existence](https://apireference.groupdocs.cloud/conversion/#/Storage/StorageExists) calls and lets you use GroupDocs Cloud features in a native way for your preferred language.

{{< tabs "example2">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Storage_Exist.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Storage_Exist.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Storage_Exist.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Storage_Exist.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Storage_Exist.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Storage_Exist.py >}}

{{< /tab >}} {{< tab "Go" >}}

```go
package main

import (
 "fmt"

 conversion "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
)

func StorageExist() {
    response, _, err := client.StorageApi.StorageExists(ctx, StorageName)
    if err != nil {
      fmt.Printf("Failed to check if storage exists: %v", err)
    }

    // Assert
    if !response.Exists {
      fmt.Printf("Storage does not exist")
    }
}
```

{{< /tab >}} {{< /tabs >}}

## Storage object existence API

This API intended for checking existence of file or folder in [GroupDocs Cloud Storage](https://dashboard.groupdocs.cloud).

### API Explorer

[GroupDocs.Conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/#/) lets you to try out [Storage existence API](https://apireference.groupdocs.cloud/conversion/#/Storage/StorageExists) right away in your browser! It allows you to effortlessly interact and try out every single operation our APIs exposes.

### Request parameters

|Parameter|Description
|---|---
|**path**|Path of the file or folder

Required. Can be passed as query string parameter or as part of the URL
|storageName|Name of the storage. If not set, then default storage used
|versionId|File version id

### cURL example

{{< tabs "example3">}} {{< tab "Request" >}}

```bash
curl -X GET "https://api.groupdocs.cloud/v2.0/conversion/storage/exist/conversiondocs?storageName#MyStorage" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
{
  "exists": true,
  "isFolder": true
}
```

{{< /tab >}} {{< /tabs >}}

### SDK examples

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [Storage Object existence](https://apireference.groupdocs.cloud/conversion/#/Storage/ObjectExists) calls and lets you use GroupDocs Cloud features in a native way for your preferred language.

{{< tabs "example4">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Object_Exists.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Object_Exists.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Object_Exists.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Object_Exists.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Object_Exists.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Object_Exists.py >}}

{{< /tab >}} {{< tab "Go" >}}

```go
package main

import (
 "fmt"

 conversion "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
)

func ObjectExist() {
    response, _, err := client.StorageApi.StorageExists(ctx, StorageName)
    if err != nil {
      fmt.Printf("Failed to check if storage exists: %v", err)
    }

    // Assert
    if !response.Exists {
      fmt.Printf("Storage does not exist")
    }
}
```

{{< /tab >}} {{< /tabs >}}

## Storage Space Usage API

This API intended for getting total and used space of the[GroupDocs Cloud Storage](https://dashboard.groupdocs.cloud)

### API Explorer

[GroupDocs.Conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/#/) lets you to try out [storage space usage API](https://apireference.groupdocs.cloud/conversion/#/Storage/GetDiscUsage) right away in your browser! It allows you to effortlessly interact and try out every single operation our APIs exposes.

### Request parameters

|Parameter|Description
|---|---
|storageName|Name of the storage. If not set, then default storage used

### cURL example

{{< tabs "example5">}} {{< tab "Request" >}}

```bash
curl -X GET "https://api.groupdocs.cloud/v2.0/conversion/storage/disc?storageName#MyStorage" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
{
  "usedSize": 31032368,
  "totalSize": 3221225472
}
```

{{< /tab >}} {{< /tabs >}}

### SDK examples

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [storage space usage API](https://apireference.groupdocs.cloud/conversion/#/Storage/GetDiscUsage) calls and lets you use GroupDocs Cloud features in a native way for your preferred language.

{{< tabs "example6">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Get_Disc_Usage.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Get_Disc_Usage.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Get_Disc_Usage.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Get_Disc_Usage.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Object_Exists.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Object_Exists.py >}}

{{< /tab >}} {{< tab "Go" >}}

```go
package main

import (
 "fmt"

 conversion "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
)

func GetDiscUsage() {
    
    response, _, err := client.StorageApi.GetDiscUsage(ctx, nil)
    if err != nil {
      fmt.Printf("Failed to get disk usage: %v", err)
    }

    if response.TotalSize <= 0 {
      fmt.Printf("Total size is not greater than 0")
    }
    if response.UsedSize <= 0 {
      fmt.Printf("Used size is not greater than 0")
    }
}
```

{{< /tab >}} {{< /tabs >}}

## Storage File Versions API

This API intended for getting the list of file versions, stored in the [GroupDocs Cloud Storage](https://dashboard.groupdocs.cloud)

### API Explorer

[GroupDocs.Conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/#/) lets you to try out [Storage File Versions API](https://apireference.groupdocs.cloud/conversion/#/Storage/GetFileVersions) right away in your browser! It allows you to effortlessly interact and try out every single operation our APIs exposes.

### Request parameters

|Parameter|Description
|---|---
|**path**|Path of the file including file name and extension e.g. */Folder1/file.ext*. Required. Can be passed as query string parameter or as part of the URL
|storageName|Name of the storage. If not set, then default storage used

### cURL example

{{< tabs "example7">}} {{< tab "Request" >}}

```bash
curl -X GET "https://api.groupdocs.cloud/v2.0/conversion/storage/version/one-page.docx?storageName#MyStorage" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
{
  "value": [
    {
      "versionId": "null",
      "isLatest": true,
      "name": "one-page.docx",
      "isFolder": false,
      "modifiedDate": "2018-08-16T19:45:05+00:00",
      "size": 347612,
      "path": "/one-page.docx"
    }
  ]
}
```

{{< /tab >}} {{< /tabs >}}

### SDK examples

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [Storage File Versions API](https://apireference.groupdocs.cloud/conversion/#/Storage/GetFileVersions) calls and lets you use GroupDocs Cloud features in a native way for your preferred language.

{{< tabs "example8">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Get_File_Versions.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Get_File_Versions.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Get_Disc_Usage.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Get_Disc_Usage.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Get_Disc_Usage.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Get_Disc_Usage.py >}}

{{< /tab >}} {{< tab "Go" >}}

```go
package main

import (
 "fmt"

 conversion "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
)

func GetFileVersions() {
    testFile := "WordProcessing/one-page.docx"

    response, _, err := client.StorageApi.GetFileVersions(ctx, testFile, nil)
    if err != nil {
      fmt.Printf("Failed to get file versions: %v", err)
    }

    if len(response.Value) == 0 {
      fmt.Printf("Expected file versions, found none")
    }
}
```

{{< /tab >}} {{< /tabs >}}
