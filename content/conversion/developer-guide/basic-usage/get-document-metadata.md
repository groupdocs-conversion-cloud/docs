---
id: "get-document-metadata"
url: "conversion/get-document-metadata"
title: "Get Document Metadata"
productName: "GroupDocs.Conversion Cloud"
weight: 16
description: ""
keywords: ""
toc: True
---
GroupDocs.Conversion Cloud REST APIs support document conversion tools to convert files from 65+ supported formats to get high-quality output in quickly and reliably. To get a Metadata of supported formats, You can use the below API.

## Resource

The following GroupDocs.Conversion Cloud REST API resource has been used in the [Document Metadata](https://apireference.groupdocs.cloud/conversion/#/Conversion/GetSupportedConversionTypes) example.

## cURL example

{{< tabs "example1">}} {{< tab "Request" >}}

```bash
curl -X GET "https://api.groupdocs.cloud/v2.0/conversion/info?FilePath#words/four-pages.docx" -H "accept: application/json" -H "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
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
```
{{< /tab >}} {{< /tabs >}}

## SDK examples

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

{{< tabs "example2">}} {{< tab "C#" >}}

```csharp
using System;
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Get Document Information / Docuement Metada
    class Get_Document_Information
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);

            var apiInstance = new InfoApi(configuration);

            try
            {
                // get document info/metadata request
                var request = new GetDocumentMetadataRequest
                {
                    StorageName = Common.MyStorage,
                    FilePath = "conversions/password-protected.docx"
                };

                // Execute api method to get response.
                var response = apiInstance.GetDocumentMetadata(request);
                Console.WriteLine("Expected response type is DocumentMetadata: " + response.ToString());
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception when calling InfoApi: " + e.Message);
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
    $infoApi = CommonUtils::GetInfoApiInstance();

    $request = new GroupDocs\Conversion\Model\Requests\GetDocumentMetadataRequest();
    $request->setStorageName(CommonUtils::$MyStorage);
    $request->setFilePath("conversions\\sample.docx");
        
    $response = $infoApi->getDocumentMetadata($request);

    echo "Expected response type is DocumentMetadata: ", $response[0]->getPageCount();
} catch (Exception $e) {
    echo "Something went wrong: ", $e->getMessage(), "\n";
}
```

{{< /tab >}} {{< tab "Java" >}}

```java
package examples.Supported_File_Formats;

import com.groupdocs.cloud.conversion.client.*;
import com.groupdocs.cloud.conversion.model.*;
import com.groupdocs.cloud.conversion.model.requests.*;
import java.util.List;

import com.groupdocs.cloud.conversion.api.*;
import examples.Utils;

public class Conversion_Java_Get_Document_Information {

    public static void main(String[] args) {

        InfoApi apiInstance = new InfoApi(Utils.AppSID, Utils.AppKey);
        try {
            GetDocumentMetadataRequest request = new GetDocumentMetadataRequest();
            request.setStorageName(Utils.MYStorage);
            request.setFilePath("conversions\\sample.docx");
            
            DocumentMetadata response = apiInstance.getDocumentMetadata(request);

            System.out.println("Expected response type is DocumentMetadata: " + response.getPageCount());
        } catch (ApiException e) {
            System.err.println("Exception while calling InfoApi:");
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

class Document_Information
  def self.Conversion_Ruby_Get_Document_Information()

    # Getting instance of the API
    api = Common_Utilities.Get_InfoApi_Instance()

    $request = GroupDocsConversionCloud::GetDocumentMetadataRequest.new()
    $request.storage_name = $myStorage;
    $request.file_path = "conversions/sample.docx"
    
    $response = api.get_document_metadata($request)

    puts("Expected response type is DocumentMetadata: " + ($response).to_s)
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Node_Get_Document_Information {
    static Run() {

        var request = new groupdocs_conversion_cloud_1.GetDocumentMetadataRequest();
        request.storageName = myStorage;
        request.filePath = "conversions/password-protected.docx";

        infoApi.getDocumentMetadata(request)
            .then(function (response) {
                console.log("Expected response type is DocumentMetadata: : " + response);
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Node_Get_Document_Information;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities

class Conversion_Python_Get_Document_Information:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_InfoApi_Instance()
        
        try:
            request = groupdocs_conversion_cloud.GetDocumentMetadataRequest()
            request.storage_name = Common_Utilities.myStorage;
            request.file_path = "conversions\\password-protected.docx"
            
            response = api.get_document_metadata(request)

            print("Expected response type is DocumentMetadata: " + str(len(response)))
        except groupdocs_conversion_cloud.ApiException as e:
            print("Exception while calling API: {0}".format(e.message))
```

{{< /tab >}} {{< tab "Go" >}}

```go
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples
package info

import (
 "fmt"

 "github.com/antihax/optional"
 conversion "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
)

func GetDocumentInformation() {

 opts := &conversion.InfoApiGetDocumentMetadataOpts{
  FilePath: optional.NewString("WordProcessing/four-pages.docx"),
 }

 info, _, err := config.Client.InfoApi.GetDocumentMetadata(config.Ctx, opts)

 if err != nil {
  fmt.Printf("GetDocumentInformation error: %v\n", err)
  return
 }

 fmt.Printf("InfoResult.Pages.Count: %v\n", info.PageCount)
}

```

{{< /tab >}} {{< /tabs >}}
