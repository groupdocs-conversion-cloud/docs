---
id: "working-with-folder-api"
url: "conversion/working-with-folder-api"
title: "Working with Folder API"
productName: "GroupDocs.Conversion Cloud"
weight: 4
description: ""
keywords: ""
toc: True
---

## Get the File Listing of a Specific Folder

This API allows you to get a list of all files of a specific folder from the specified Cloud Storage. If you do not pass storage name API will find folder in GroupDocs Cloud Storage.

### API Explorer

[GroupDocs.conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/) lets you to try out [List Files in a Folder API](https://apireference.groupdocs.cloud/conversion/#/Folder/GetFilesList) right away in your browser. It allows you to effortlessly interact and try out every single operation that our APIs exposes.

### Request parameters

|Parameter|Description
|---|---
|**path**|Path of the file including file name and extension e.g. /Folder1/file.ext. Required. Can be passed as query string parameter or as part of the URL
|storageName|Name of the storage. If not set, then default storage used

### cURL example

{{< tabs "example1">}} {{< tab "Request" >}}

```bash
curl -X GET "https://api.groupdocs.cloud/v2.0/conversion/storage/folder/conversiondocs?storageName#MyStorage" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
{
  "value": [
    {
      "name": "four-pages.docx",
      "isFolder": false,
      "modifiedDate": "2019-03-20T12:35:38+00:00",
      "size": 8651,
      "path": "/conversiondocs/four-pages.docx"
    },
    {
      "name": "one-page.docx",
      "isFolder": false,
      "modifiedDate": "2019-03-20T12:17:34+00:00",
      "size": 351348,
      "path": "/conversiondocs/one-page.docx"
    },
    {
      "name": "password-protected.docx",
      "isFolder": false,
      "modifiedDate": "2019-03-20T12:35:40+00:00",
      "size": 10240,
      "path": "/conversiondocs/password-protected.docx"
    },
    {
      "name": "sample.mpp",
      "isFolder": false,
      "modifiedDate": "2019-03-20T12:29:10+00:00",
      "size": 289792,
      "path": "/conversiondocs/sample.mpp"
    },
    {
      "name": "three-layouts.dwf",
      "isFolder": false,
      "modifiedDate": "2019-03-20T12:26:42+00:00",
      "size": 15433,
      "path": "/conversiondocs/three-layouts.dwf"
    },
    {
      "name": "two-hidden-pages.vsd",
      "isFolder": false,
      "modifiedDate": "2019-03-20T12:17:36+00:00",
      "size": 457728,
      "path": "/conversiondocs/two-hidden-pages.vsd"
    },
    {
      "name": "uses-custom-font.pptx",
      "isFolder": false,
      "modifiedDate": "2019-03-20T12:32:30+00:00",
      "size": 39823,
      "path": "/conversiondocs/uses-custom-font.pptx"
    },
    {
      "name": "with-hidden-rows-and-columns.xlsx",
      "isFolder": false,
      "modifiedDate": "2019-03-20T12:17:37+00:00",
      "size": 15986,
      "path": "/conversiondocs/with-hidden-rows-and-columns.xlsx"
    }
  ]
}
```
{{< /tab >}} {{< /tabs >}}

### SDK examples

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [Folder API](https://apireference.groupdocs.cloud/conversion/#/Folder) calls and lets you use GroupDocs Cloud features in a native way for your preferred language.

{{< tabs "example2">}} {{< tab "C#" >}}

```csharp
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;
using System;
using GroupDocs.Conversion.Cloud.Sdk.Model;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Get Files List
    class Get_Files_List
    {
        public static void Run(string path)
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);
            var apiInstance = new FolderApi(configuration);

            try
            {
                var request = new GetFilesListRequest(path, Common.MyStorage);

                var response = apiInstance.GetFilesList(request);
                foreach (StorageFile storageFile in response.Value)
                {
                    Console.WriteLine("Expected response type is FilesList: " + storageFile.Path);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception while calling FolderApi: " + e.Message);
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
        $apiInstance = CommonUtils::GetFolderApiInstance();

        $request = new GroupDocs\Conversion\Model\Requests\GetFilesListRequest("conversions", CommonUtils::$MyStorage);
        $response = $apiInstance->getFilesList($request);
        
        echo "Expected response type is FilesList.", "<br />";

        foreach($response->getValue() as $storageFile) {
          echo "Files: ", $storageFile->getPath(), "<br />";
        }
    } catch (Exception $e) {
        echo "Something went wrong: ", $e->getMessage(), "\n";
    }
?>
```

{{< /tab >}} {{< tab "Java" >}}

```java
package examples.Working_With_Folder;

import com.groupdocs.cloud.conversion.api.*;
import com.groupdocs.cloud.conversion.client.ApiException;
import com.groupdocs.cloud.conversion.model.FilesList;
import com.groupdocs.cloud.conversion.model.*;
import com.groupdocs.cloud.conversion.model.requests.*;
import examples.Utils;

public class Conversion_Java_Get_Files_List {

    public static void main(String[] args) {

        FolderApi apiInstance = new FolderApi(Utils.AppSID, Utils.AppKey);
        try {
            GetFilesListRequest request = new GetFilesListRequest("conversions", Utils.MYStorage);
            FilesList response = apiInstance.getFilesList(request);
            System.out.println("Expected response type is FilesList.");
            for (StorageFile storageFile : response.getValue()) {
                System.out.println("Files: " + storageFile.getPath());
            }
        } catch (ApiException e) {
            System.err.println("Exception while calling FolderApi:");
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

class Working_With_Folder
  def self.Conversion_Ruby_Get_Files_List()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsConversionCloud::GetFilesListRequest.new("conversions/sample.docx", $myStorage)
    $response = $api.get_files_list($request)

    puts("Expected response type is FilesList: " + ($response).to_s)
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Node_Get_Files_List {
    static Run() {
        // retrieve supported file-formats
        var request = new groupdocs_conversion_cloud_1.GetFilesListRequest("conversions/sample.docx", myStorage);
        folderApi.getFilesList(request)
            .then(function (response) {
                console.log("Expected response type is FilesList: " + response.value.length);
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Node_Get_Files_List;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities

class Conversion_Python_Get_Files_List:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_FolderApi_Instance()
        
        try:
            request = groupdocs_conversion_cloud.GetFilesListRequest("conversions\\sample.docx", Common_Utilities.myStorage)
            response = api.get_files_list(request)
            
            print("Expected response type is FilesList: " + str(response))
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

func GetFilesList() {
    path := "WordProcessing"
    filesList, _, err := client.FolderApi.GetFilesList(ctx, path, nil)
    if err != nil {
      fmt.Printf("Failed to get files list: %v", err)
    }

    // Act & Assert
    if len(filesList.Value) == 0 {
      fmt.Printf("Expected files in directory, found none")
    }
}
```

{{< /tab >}} {{< /tabs >}}

## Create a New Folder

This API allows you to create a new Folder in the specified Cloud Storage. If you do not pass storage name API will create new Folder in default Cloud Storage.

### API Explorer

[GroupDocs.conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/) lets you to try out [Create Folder API](https://apireference.groupdocs.cloud/conversion/#/Folder/CreateFolder) right away in your browser. It allows you to effortlessly interact and try out every single operation that our APIs exposes.

### Request parameters

|Parameter|Description
|---|---
|**path**|Target folder’s path e.g. *Folder1/Folder2/*. The folders will be created recursively. Required. Can be passed as query string parameter or as part of the URL
|storageName|Name of the storage. If not set, then default storage used

### cURL example

{{< tabs "example3">}} {{< tab "Request" >}}

```bash
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion/storage/folder/conversiondocs3?storageName#MyStorage" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
{
  "code": 200,
  "status": "OK"
}
```
{{< /tab >}} {{< /tabs >}}

### SDK examples

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [Folder API](https://apireference.groupdocs.cloud/conversion/#/Folder/) calls and lets you use GroupDocs for Cloud features in a native way for your preferred language.

{{< tabs "example4">}} {{< tab "C#" >}}

```csharp
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;
using System;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Create Folder
    class Create_Folder
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);
            var apiInstance = new FolderApi(configuration);

            try
            {
                var request = new CreateFolderRequest("conversions", Common.MyStorage);

                apiInstance.CreateFolder(request);
                Console.WriteLine("Expected response type is Void: 'conversions' folder created.");
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception while calling FolderApi: " + e.Message);
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
        $apiInstance = CommonUtils::GetFolderApiInstance();

        $request = new GroupDocs\Conversion\Model\Requests\CreateFolderRequest("conversions", CommonUtils::$MyStorage);
        $apiInstance->createFolder($request);
        
        echo "Expected response type is Void: 'conversions' folder created.", "<br />";
    } catch (Exception $e) {
        echo "Something went wrong: ", $e->getMessage(), "\n";
    }
?>
```

{{< /tab >}} {{< tab "Java" >}}

```java
package examples.Working_With_Folder;

import com.groupdocs.cloud.conversion.api.*;
import com.groupdocs.cloud.conversion.client.ApiException;
import com.groupdocs.cloud.conversion.model.requests.*;
import examples.Utils;

public class Conversion_Java_Create_Folder {

    public static void main(String[] args) {

        FolderApi apiInstance = new FolderApi(Utils.AppSID, Utils.AppKey);
        try {
            CreateFolderRequest request = new CreateFolderRequest("conversions", Utils.MYStorage);
            apiInstance.createFolder(request);
            System.out.println("Expected response type is Void: 'conversions' folder created.");
        } catch (ApiException e) {
            System.err.println("Exception while calling FolderApi:");
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

class Working_With_Folder
  def self.Conversion_Ruby_Create_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsConversionCloud::CreateFolderRequest.new("conversions", $myStorage)
    $response = $api.create_folder($request)

    puts("Expected response type is Void: 'conversions' folder created.")
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Node_Create_Folder {
    static Run() {
        // retrieve supported file-formats
        var request = new groupdocs_conversion_cloud_1.CreateFolderRequest("conversions", myStorage);
        folderApi.createFolder(request)
            .then(function () {
                console.log("Expected response type is Void: 'conversions' folder created.");
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Node_Create_Folder;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities

class Conversion_Python_Create_Folder:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_FolderApi_Instance()
        
        try:
            request = groupdocs_conversion_cloud.CreateFolderRequest("conversions", Common_Utilities.myStorage)
            api.create_folder(request)
            
            print("Expected response type is Void: 'conversions' folder created.")
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

func CreateFolder() {
    // Create temp folder
    _, err := client.FolderApi.CreateFolder(ctx, "temp", nil)
    if err != nil {
      fmt.Printf("Failed to create temp folder: %v", err)
    }
}
```

{{< /tab >}} {{< /tabs >}}

## Delete a Particular Folder

This API allows you to delete a particular Folder in the specified Cloud Storage. If you do not pass storage name API will create new Folder in default Cloud Storage. To remove recursively inner folder/files you need to pass true value to recursive parameter in Request. If it is set to false and folder contains data then API throws the exception.

### API Explorer

[GroupDocs.conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/#/) lets you to try out [Delete a Particular Folder API](https://apireference.groupdocs.cloud/conversion/#/Folder/DeleteFolder) right away in your browser. It allows you to effortlessly interact and try out every single operation that our APIs exposes.

### Request parameters

|Parameter|Description
|---|---
|**path**|Folder path e.g. */Folder1*. Required. Can be passed as query string parameter or as part of the URL
|storageName|Name of the storage. If not set, then default storage used

### cURL example

{{< tabs "example5">}} {{< tab "Request" >}}

```bash
curl -X DELETE "https://api.groupdocs.cloud/v2.0/conversion/storage/folder/conversiondocs3?storageName#MyStorage&#x26;recursive#true" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
{
  "code": 200,
  "status": "OK"
}
```

{{< /tab >}} {{< /tabs >}}

### SDK examples

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [Delete Folder API](https://apireference.groupdocs.cloud/conversion/#/Folder/DeleteFolder) calls and lets you use GroupDocs for Cloud features in a native way for your preferred language.


{{< tabs "example6">}} {{< tab "C#" >}}

```csharp
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;
using System;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Delete Folder
    class Delete_Folder
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);
            var apiInstance = new FolderApi(configuration);

            try
            {
                var request = new DeleteFolderRequest("conversions/conversions1", Common.MyStorage, true);

                apiInstance.DeleteFolder(request);
                Console.WriteLine("Expected response type is Void: 'conversions/conversions1' folder deleted recusrsively.");
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception while calling FolderApi: " + e.Message);
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
        $apiInstance = CommonUtils::GetFolderApiInstance();

        $request = new GroupDocs\Conversion\Model\Requests\DeleteFolderRequest("conversions1\\conversions1", CommonUtils::$MyStorage, true);
        $apiInstance->deleteFolder($request);
        
        echo "Expected response type is Void: 'conversions1/conversions' folder deleted recusrsively.", "<br />";
    } catch (Exception $e) {
        echo "Something went wrong: ", $e->getMessage(), "\n";
    }
?>
```

{{< /tab >}} {{< tab "Java" >}}

```java
package examples.Working_With_Folder;

import com.groupdocs.cloud.conversion.api.*;
import com.groupdocs.cloud.conversion.client.ApiException;
import com.groupdocs.cloud.conversion.model.requests.*;
import examples.Utils;

public class Conversion_Java_Delete_Folder {

    public static void main(String[] args) {

        FolderApi apiInstance = new FolderApi(Utils.AppSID, Utils.AppKey);
        try {
            DeleteFolderRequest request = new DeleteFolderRequest("conversions\\conversions1", Utils.MYStorage, true);
            apiInstance.deleteFolder(request);
            System.out
                    .println("Expected response type is Void: 'conversions/conversions1' folder deleted recusrsively.");
        } catch (ApiException e) {
            System.err.println("Exception while calling FolderApi:");
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

class Working_With_Folder
  def self.Conversion_Ruby_Delete_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsConversionCloud::DeleteFolderRequest.new("conversions1", $myStorage, true)
    $response = $api.delete_folder($request)

    puts("Expected response type is Void: 'conversions/conversions1' folder deleted recursively.")
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Node_Delete_Folder {
    static Run() {
        // retrieve supported file-formats
        var request = new groupdocs_conversion_cloud_1.DeleteFolderRequest("conversions/conversions1", myStorage, true);
        folderApi.deleteFolder(request)
            .then(function () {
                console.log("Expected response type is Void: 'conversions/conversions1' folder deleted recursively.");
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Node_Delete_Folder;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities

class Conversion_Python_Delete_Folder:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_FolderApi_Instance()
        
        try:
            request = groupdocs_conversion_cloud.DeleteFolderRequest("conversions\\conversions1", Common_Utilities.myStorage, True)
            api.delete_folder(request)
            
            print("Expected response type is Void: 'conversions/conversions1' folder deleted recursively.")
        except groupdocs_conversion_cloud.ApiException as e:
            print("Exception while calling API: {0}".format(e.message))
```

{{< /tab >}} {{< tab "Go" >}}

```go
package main

import (
 "fmt"

"github.com/antihax/optional"
 conversion "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
)

func DeleteFolder() {
    opts := &conversion.FolderApiDeleteFolderOpts{
      Recursive: optional.NewBool(true),
    }
    _, err = client.FolderApi.DeleteFolder(ctx, "temp", opts)
    if err != nil {
      fmt.Printf("Failed to delete temp folder: %v", err)
    }
}
```

{{< /tab >}} {{< /tabs >}}

## Copy  Specific Folder

This API allows you to copy a Folder to another location in the GroupDocs Cloud Storage. If you do not pass source and destination storage names API will copy Folder within default Cloud Storage.

### API Explorer

[GroupDocs.conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/#/) lets you to try out [Copy Folder API](https://apireference.groupdocs.cloud/conversion/#/Folder/CopyFolder) right away in your browser. It allows you to effortlessly interact and try out every single operation that our APIs exposes.

### Request parameters

|Parameter|Description
|---|---
|**srcPath**|Source folder path e.g. */Folder1*. Required. Can be passed as query string parameter or as part of the URL
|**destPath**|Destination folder path. Required
|srcStorageName|Name of the storage of source folder. If not set, then default storage used
|destStorageName|Name of the storage of destination folder. If not set, then default storage used

### cURL example

{{< tabs "example7">}} {{< tab "Request" >}}

```bash
curl -X PUT "https://api.groupdocs.cloud/v2.0/conversion/storage/folder/copy/conversiondocs?destPath#conversiondocs1&#x26;srcStorageName#MyStorage&#x26;destStorageName#MyStorage" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
{
  "code": 200,
  "status": "OK"
}
```
{{< /tab >}} {{< /tabs >}}

### SDK examples

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [Copy Folder API](https://apireference.groupdocs.cloud/conversion/#/Folder/CopyFolder) calls and lets you use GroupDocs Cloud features in a native way for your preferred language.


{{< tabs "example8">}} {{< tab "C#" >}}

```csharp
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;
using System;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Copy Folder
    class Copy_Folder
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);
            var apiInstance = new FolderApi(configuration);

            try
            {
                var request = new CopyFolderRequest("conversions", "conversions1", Common.MyStorage, Common.MyStorage);

                apiInstance.CopyFolder(request);
                Console.WriteLine("Expected response type is Void: 'conversions' folder copied as 'conversions1'.");
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception while calling FolderApi: " + e.Message);
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
        $apiInstance = CommonUtils::GetFolderApiInstance();

        $request = new GroupDocs\Conversion\Model\Requests\CopyFolderRequest("conversions", "conversions1", CommonUtils::$MyStorage, CommonUtils::$MyStorage);
        $apiInstance->copyFolder($request);
        
        echo "Expected response type is Void: 'conversions' folder copied as 'conversions1'.", "<br />";
    } catch (Exception $e) {
        echo "Something went wrong: ", $e->getMessage(), "\n";
    }
?>
```

{{< /tab >}} {{< tab "Java" >}}

```java
package examples.Working_With_Folder;

import com.groupdocs.cloud.conversion.api.*;
import com.groupdocs.cloud.conversion.client.ApiException;
import com.groupdocs.cloud.conversion.model.requests.*;
import examples.Utils;

public class Conversion_Java_Copy_Folder {

    public static void main(String[] args) {

        FolderApi apiInstance = new FolderApi(Utils.AppSID, Utils.AppKey);
        try {
            CopyFolderRequest request = new CopyFolderRequest("conversions", "conversions1", Utils.MYStorage,
                    Utils.MYStorage);
            apiInstance.copyFolder(request);
            System.out.println("Expected response type is Void: 'conversions' folder copied as 'conversions1'.");
        } catch (ApiException e) {
            System.err.println("Exception while calling FolderApi:");
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

class Working_With_Folder
  def self.Conversion_Ruby_Copy_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsConversionCloud::CopyFolderRequest.new("conversions", "conversions1", $myStorage, $myStorage)
    $response = $api.copy_folder($request)

    puts("Expected response type is Void: 'conversions' folder copied as 'conversions1'.")
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Node_Copy_Folder {
    static Run() {
        // retrieve supported file-formats
        var request = new groupdocs_conversion_cloud_1.CopyFolderRequest("conversions", "conversions1", myStorage, myStorage);
        folderApi.copyFolder(request)
            .then(function () {
                console.log("Expected response type is Void: 'conversions' folder copied as 'conversions1'.");
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Node_Copy_Folder;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities

class Conversion_Python_Copy_Folder:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_FolderApi_Instance()
        
        try:
            request = groupdocs_conversion_cloud.CopyFolderRequest("conversions", "conversions1", Common_Utilities.myStorage, Common_Utilities.myStorage)
            api.copy_folder(request)
            
            print("Expected response type is Void: 'conversions' folder copied as 'conversions1'.")
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

func CopyFolder() {
    _, err = client.FolderApi.CopyFolder(ctx, "temp", "temp1", nil)
    if err != nil {
      t.Errorf("Failed to copy folder: %v", err)
    }
}
```

{{< /tab >}} {{< /tabs >}}

## Move a Specific Folder

This API allows you to move a Folder to another location in the GroupDocs Cloud Storage. If you do not pass source and destination storage names API will move Folder within default Cloud Storage.

### API Explorer

[GroupDocs.conversion Cloud API Reference](https://apireference.groupdocs.cloud/conversion/#/) lets you to try out [Move a Folder API](https://apireference.groupdocs.cloud/conversion/#/Folder/MoveFolder) right away in your browser. It allows you to effortlessly interact and try out every single operation that our APIs exposes.

### Request parameters

|Parameter|Description
|---|---
|**srcPath**|Source folder path e.g. */Folder1*. Required. Can be passed as query string parameter or as part of the URL
|**destPath**|Destination folder path. Required
|srcStorageName|Name of the storage of source folder. If not set, then default storage used
|destStorageName|Name of the storage of destination folder. If not set, then default storage used

### cURL example

{{< tabs "example9">}} {{< tab "Request" >}}

```bash
curl -X PUT "https://api.groupdocs.cloud/v2.0/conversion/storage/folder/move/conversiondocs?destPath#conversiondocs1&#x26;srcStorageName#MyStorage&#x26;destStorageName#MyStorage" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
{
  "code": 200,
  "status": "OK"
}
```

{{< /tab >}} {{< /tabs >}}

### SDK examples

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. If you use [SDK](https://github.com/groupdocs-conversion-cloud), it hides the [Move Folder API](https://apireference.groupdocs.cloud/conversion/#/Folder/MoveFolder) calls and lets you use GroupDocs Cloud features in a native way for your preferred language.

{{< tabs "example10">}} {{< tab "C#" >}}

```csharp
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;
using System;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Move Folder
    class Move_Folder
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);
            var apiInstance = new FolderApi(configuration);

            try
            {
                var request = new MoveFolderRequest("conversions1", "conversions/conversions1", Common.MyStorage, Common.MyStorage);

                apiInstance.MoveFolder(request);
                Console.WriteLine("Expected response type is Void: 'conversions1' folder moved to 'conversions/conversions1'.");
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception while calling FolderApi: " + e.Message);
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
        $apiInstance = CommonUtils::GetFolderApiInstance();

        $request = new GroupDocs\Conversion\Model\Requests\MoveFolderRequest("conversions1", "conversions1\\conversions1", CommonUtils::$MyStorage, CommonUtils::$MyStorage, true);
        $apiInstance->moveFolder($request);
        
        echo "Expected response type is Void: 'conversions1' folder moved to 'conversions/conversions1'.", "<br />";
    } catch (Exception $e) {
        echo "Something went wrong: ", $e->getMessage(), "\n";
    }
?>
```

{{< /tab >}} {{< tab "Java" >}}

```java
package examples.Working_With_Folder;

import com.groupdocs.cloud.conversion.api.*;
import com.groupdocs.cloud.conversion.client.ApiException;
import com.groupdocs.cloud.conversion.model.requests.*;
import examples.Utils;

public class Conversion_Java_Move_Folder {

    public static void main(String[] args) {

        FolderApi apiInstance = new FolderApi(Utils.AppSID, Utils.AppKey);
        try {
            MoveFolderRequest request = new MoveFolderRequest("conversions1", "conversions\\conversions1",
                    Utils.MYStorage, Utils.MYStorage);
            apiInstance.moveFolder(request);
            System.out.println(
                    "Expected response type is Void: 'conversions1' folder moved to 'conversions/conversions1'.");
        } catch (ApiException e) {
            System.err.println("Exception while calling FolderApi:");
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

class Working_With_Folder
  def self.Conversion_Ruby_Move_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()

    $request = GroupDocsConversionCloud::MoveFolderRequest.new("conversions1", "conversions/conversions1", $myStorage, $myStorage)
    $response = $api.move_folder($request)

    puts("Expected response type is Void: 'conversions1' folder moved to 'conversions/conversions1'.")
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Node_Move_Folder {
    static Run() {
        // retrieve supported file-formats
        var request = new groupdocs_conversion_cloud_1.MoveFolderRequest("conversions1", "conversions/conversions1", myStorage, myStorage);
        folderApi.moveFolder(request)
            .then(function () {
                console.log("Expected response type is Void: 'conversions1' folder moved to 'conversions/conversions1'.");
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Node_Move_Folder;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities

class Conversion_Python_Move_Folder:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_FolderApi_Instance()
        
        try:
            request = groupdocs_conversion_cloud.MoveFolderRequest("conversions1", "conversions1\\conversions", Common_Utilities.myStorage, Common_Utilities.myStorage)
            api.move_folder(request)
            
            print("Expected response type is Void: 'conversions1' folder moved to 'conversions/conversions1'.")
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

func MoveFolder() {
    _, err = client.FolderApi.MoveFolder(ctx, "temp1", "temp2", nil)
    if err != nil {
      t.Errorf("Failed to move folder: %v", err)
    }
}
```

{{< /tab >}} {{< /tabs >}}
