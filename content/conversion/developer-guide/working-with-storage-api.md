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

```csharp
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;
using System;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Is Storage Exist
    class Storage_Exist
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);
            var apiInstance = new StorageApi(configuration);

            try
            {
                var request = new StorageExistsRequest(Common.MyStorage);

                var response = apiInstance.StorageExists(request);
                Console.WriteLine("Expected response type is StorageExist: " + response.Exists.Value.ToString());
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception while calling StorageApi: " + e.Message);
            }
        }
    }
}
```

{{< /tab >}} {{< tab "PHP" >}}

```php
<?php

include(dirname(__DIR__) . '\CommonUtils.php');

try {
    $apiInstance = CommonUtils::GetStorageApiInstance();

    $request = new GroupDocs\Conversion\Model\Requests\StorageExistsRequest(CommonUtils::$MyStorage);
        $response = $apiInstance->storageExists($request);
        
        echo "Expected response type is StorageExist: ", $response;
} catch (Exception $e) {
    echo "Something went wrong: ", $e->getMessage(), "\n";
}
?>
```

{{< /tab >}} {{< tab "Java" >}}

```java
package examples.Working_With_Storage;

import com.groupdocs.cloud.conversion.api.*;
import com.groupdocs.cloud.conversion.client.ApiException;
import com.groupdocs.cloud.conversion.model.*;
import com.groupdocs.cloud.conversion.model.requests.*;
import examples.Utils;

public class Conversion_Java_Storage_Exist {

    public static void main(String[] args) {

        StorageApi apiInstance = new StorageApi(Utils.AppSID, Utils.AppKey);
        try {
            StorageExistsRequest request = new StorageExistsRequest(Utils.MYStorage);
            StorageExist response = apiInstance.storageExists(request);
            System.out.println("Expected response type is StorageExist: " + response.getExists());
        } catch (ApiException e) {
            System.err.println("Exception while calling StorageApi:");
            e.printStackTrace();
        }
    }
}
```

{{< /tab >}} {{< tab "Ruby" >}}

```ruby
# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Storage
  def self.Conversion_Ruby_Storage_Exist()

    # Getting instance of the API
    $api = Common_Utilities.Get_StorageApi_Instance()
    
    $request = GroupDocsConversionCloud::StorageExistsRequest.new($myStorage)
    $response = $api.storage_exists($request)

    puts("Expected response type is StorageExist: " + ($response).to_s)
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Node_Storage_Exist {
    static Run() {
        // retrieve supported file-formats
        var request = new groupdocs_conversion_cloud_1.StorageExistsRequest(myStorage);
        storageApi.storageExists(request)
            .then(function (response) {
                console.log("Expected response type is StorageExist: " + response.exists);
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Node_Storage_Exist;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities

class Conversion_Python_Storage_Exist:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_StorageApi_Instance()
        
        try:
            request = groupdocs_conversion_cloud.StorageExistsRequest(Common_Utilities.myStorage)
            response = api.storage_exists(request)
            
            print("Expected response type is StorageExist: " + str(response))
        except groupdocs_conversion_cloud.ApiException as e:
            print("Exception while calling API: {0}".format(e.message))
```

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

```csharp
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;
using System;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Is Object Exists
    class Object_Exists
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);
            var apiInstance = new StorageApi(configuration);

            try
            {
                var request = new ObjectExistsRequest("conversions/one-page.docx", Common.MyStorage);

                var response = apiInstance.ObjectExists(request);
                Console.WriteLine("Expected response type is ObjectExist: " + response.Exists.Value.ToString());
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception while calling StorageApi: " + e.Message);
            }
        }
    }
}
```

{{< /tab >}} {{< tab "PHP" >}}

```php
<?php

include(dirname(__DIR__) . '\CommonUtils.php');

    try {
        $apiInstance = CommonUtils::GetStorageApiInstance();

        $request = new GroupDocs\Conversion\Model\Requests\ObjectExistsRequest("conversions\one-page.docx", CommonUtils::$MyStorage);
        $response = $apiInstance->objectExists($request);
        
        echo "Expected response type is ObjectExist: ", $response;
    } catch (Exception $e) {
        echo "Something went wrong: ", $e->getMessage(), "\n";
    }
?>
```

{{< /tab >}} {{< tab "Java" >}}

```java
package examples.Working_With_Storage;

import com.groupdocs.cloud.conversion.api.*;
import com.groupdocs.cloud.conversion.client.ApiException;
import com.groupdocs.cloud.conversion.model.*;
import com.groupdocs.cloud.conversion.model.requests.*;
import examples.Utils;

public class Conversion_Java_Object_Exists {

    public static void main(String[] args) {

        StorageApi apiInstance = new StorageApi(Utils.AppSID, Utils.AppKey);
        try {
            ObjectExistsRequest request = new ObjectExistsRequest("conversions\\one-page.docx", Utils.MYStorage, null);
            ObjectExist response = apiInstance.objectExists(request);
            System.out.println("Expected response type is ObjectExist: " + response.getExists());
        } catch (ApiException e) {
            System.err.println("Exception while calling StorageApi:");
            e.printStackTrace();
        }
    }
}
```

{{< /tab >}} {{< tab "Ruby" >}}

```ruby
# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Storage
  def self.Conversion_Ruby_Object_Exists()

    # Getting instance of the API
    $api = Common_Utilities.Get_StorageApi_Instance()
    
    $request = GroupDocsConversionCloud::ObjectExistsRequest.new("conversions/one-page.docx", $myStorage)
    $response = $api.object_exists($request)

    puts("Expected response type is ObjectExist: " + ($response).to_s)
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Node_Object_Exists {
    static Run() {
        // retrieve supported file-formats
        var request = new groupdocs_conversion_cloud_1.ObjectExistsRequest("conversions/one-page.docx", myStorage);
        storageApi.objectExists(request)
            .then(function (response) {
                console.log("Expected response type is ObjectExist: " + response.exists);
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Node_Object_Exists;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities

class Conversion_Python_Object_Exists:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_StorageApi_Instance()
        
        try:
            request = groupdocs_conversion_cloud.ObjectExistsRequest("conversions\\one-page.docx", Common_Utilities.myStorage)
            response = api.object_exists(request)
            
            print("Expected response type is ObjectExist: " + str(response))
        except groupdocs_conversion_cloud.ApiException as e:
            print("Exception while calling API: {0}".format(e.message))
```

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

```csharp
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;
using System;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Get Get Disc Usage
    class Get_Disc_Usage
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);
            var apiInstance = new StorageApi(configuration);

            try
            {
                var request = new GetDiscUsageRequest(Common.MyStorage);

                var response = apiInstance.GetDiscUsage(request);
                Console.WriteLine("Expected response type is DiscUsage: " + response.UsedSize.ToString());
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception while calling StorageApi: " + e.Message);
            }
        }
    }
}
```

{{< /tab >}} {{< tab "PHP" >}}

```php
<?php

include(dirname(__DIR__) . '\CommonUtils.php');

    try {
        $apiInstance = CommonUtils::GetStorageApiInstance();

        $request = new GroupDocs\Conversion\Model\Requests\GetDiscUsageRequest(CommonUtils::$MyStorage);
        $response = $apiInstance->getDiscUsage($request);
            
        echo "Expected response type is DiscUsage: ", $response;
    } catch (Exception $e) {
        echo "Something went wrong: ", $e->getMessage(), "\n";
    }
?>
```

{{< /tab >}} {{< tab "Java" >}}

```java
package examples.Working_With_Storage;

import com.groupdocs.cloud.conversion.api.*;
import com.groupdocs.cloud.conversion.client.ApiException;
import com.groupdocs.cloud.conversion.model.*;
import com.groupdocs.cloud.conversion.model.requests.*;
import examples.Utils;

public class Conversion_Java_Get_Disc_Usage {

    public static void main(String[] args) {

        StorageApi apiInstance = new StorageApi(Utils.AppSID, Utils.AppKey);
        try {
            GetDiscUsageRequest request = new GetDiscUsageRequest(Utils.MYStorage);
            DiscUsage response = apiInstance.getDiscUsage(request);
            System.out.println("Expected response type is DiscUsage: " + response.getUsedSize());
        } catch (ApiException e) {
            System.err.println("Exception while calling StorageApi:");
            e.printStackTrace();
        }
    }
}
```

{{< /tab >}} {{< tab "Ruby" >}}

```ruby
# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Storage
  def self.Conversion_Ruby_Get_Disc_Usage()

    # Getting instance of the API
    $api = Common_Utilities.Get_StorageApi_Instance()
    
    $request = GroupDocsConversionCloud::GetDiscUsageRequest.new($myStorage)
    $response = $api.get_disc_usage($request)

    puts("Expected response type is DiscUsage: " + ($response).to_s)
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Node_Object_Exists {
    static Run() {
        // retrieve supported file-formats
        var request = new groupdocs_conversion_cloud_1.ObjectExistsRequest("conversions/one-page.docx", myStorage);
        storageApi.objectExists(request)
            .then(function (response) {
                console.log("Expected response type is ObjectExist: " + response.exists);
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Node_Object_Exists;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities

class Conversion_Python_Object_Exists:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_StorageApi_Instance()
        
        try:
            request = groupdocs_conversion_cloud.ObjectExistsRequest("conversions\\one-page.docx", Common_Utilities.myStorage)
            response = api.object_exists(request)
            
            print("Expected response type is ObjectExist: " + str(response))
        except groupdocs_conversion_cloud.ApiException as e:
            print("Exception while calling API: {0}".format(e.message))
```

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

```csharp
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;
using System;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Get File Versions
    class Get_File_Versions
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);
            var apiInstance = new StorageApi(configuration);

            try
            {
                var request = new GetFileVersionsRequest("conversions/one-page.docx", Common.MyStorage);

                var response = apiInstance.GetFileVersions(request);
                Console.WriteLine("Expected response type is FileVersions: " + response.Value.Count.ToString());
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception while calling StorageApi: " + e.Message);
            }
        }
    }
}
```

{{< /tab >}} {{< tab "PHP" >}}

```php
<?php

include(dirname(__DIR__) . '\CommonUtils.php');

    try {
        $apiInstance = CommonUtils::GetStorageApiInstance();

        $request = new GroupDocs\Conversion\Model\Requests\GetFileVersionsRequest("conversions\one-page.docx", CommonUtils::$MyStorage);
        $response = $apiInstance->getFileVersions($request);
        
        echo "Expected response type is FileVersions: ", $response;
    } catch (Exception $e) {
        echo "Something went wrong: ", $e->getMessage(), "\n";
    }
?>
```

{{< /tab >}} {{< tab "Java" >}}

```java
package examples.Working_With_Storage;

import com.groupdocs.cloud.conversion.api.*;
import com.groupdocs.cloud.conversion.client.ApiException;
import com.groupdocs.cloud.conversion.model.*;
import com.groupdocs.cloud.conversion.model.requests.*;
import examples.Utils;

public class Conversion_Java_Get_Disc_Usage {

    public static void main(String[] args) {

        StorageApi apiInstance = new StorageApi(Utils.AppSID, Utils.AppKey);
        try {
            GetDiscUsageRequest request = new GetDiscUsageRequest(Utils.MYStorage);
            DiscUsage response = apiInstance.getDiscUsage(request);
            System.out.println("Expected response type is DiscUsage: " + response.getUsedSize());
        } catch (ApiException e) {
            System.err.println("Exception while calling StorageApi:");
            e.printStackTrace();
        }
    }
}
```

{{< /tab >}} {{< tab "Ruby" >}}

```ruby
# Load the gem
require 'groupdocs_conversion_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Storage
  def self.Conversion_Ruby_Get_Disc_Usage()

    # Getting instance of the API
    $api = Common_Utilities.Get_StorageApi_Instance()
    
    $request = GroupDocsConversionCloud::GetDiscUsageRequest.new($myStorage)
    $response = $api.get_disc_usage($request)

    puts("Expected response type is DiscUsage: " + ($response).to_s)
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Node_Get_Disc_Usage {
    static Run() {
        // retrieve supported file-formats
        var request = new groupdocs_conversion_cloud_1.GetDiscUsageRequest(myStorage);
        storageApi.getDiscUsage(request)
            .then(function (response) {
                console.log("Expected response type is DiscUsage: " + response.usedSize);
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Node_Get_Disc_Usage;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities

class Conversion_Python_Get_Disc_Usage:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_StorageApi_Instance()
        
        try:
            request = groupdocs_conversion_cloud.GetDiscUsageRequest(Common_Utilities.myStorage)
            response = api.get_disc_usage(request)
            
            print("Expected response type is DiscUsage: " + str(response))
        except groupdocs_conversion_cloud.ApiException as e:
            print("Exception while calling API: {0}".format(e.message))
```

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
