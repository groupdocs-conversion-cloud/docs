---
id: "convert-to-spreadsheet-document-formats"
url: "conversion/convert-to-spreadsheet-document-formats"
title: "2. Convert to Spreadsheet Document Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 2
description: ""
keywords: ""
---

GroupDocs.Conversion Cloud REST API allows us to convert the [supported document formats]({{< ref "conversion/getting-started/supported-document-formats.md" >}}) to **Spreadsheet Document Formats** and returns the output document **storage URL** and also support to get the result as a **stream**.

## Convert to Spreadsheet Formats

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}}) to **Spreadsheet** Formats and returns the output document **storage URL**

### Resource

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to spreadsheet Format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.

### cURL example

{{< tabs "example1">}} {{< tab "Request" >}}

```bash
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/password-protected.docx\",  \"Format\": \"xlsx\",  \"LoadOptions\": {\"Password\": \"password\"},  \"ConvertOptions\": {     \"FromPage\": \"1\",     \"PagesCount\": \"1\",     \"UsePdf\": \"false\"  },  \"OutputPath\": \"converted/tocells\"}"

```

{{< /tab >}} {{< tab "Response" >}}

```json
  {
    "name": "password-protected.xlsx",
    "size": 7265,
    "url": "MyStorage:converted/tocells/password-protected.xlsx"
  }
```

{{< /tab >}} {{< /tabs >}}

### SDK examples

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

{{< tabs "example2">}} {{< tab "C#" >}}

```csharp
using System;
using System.Collections.Generic;
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Convert to Cells with load and save options
    class Convert_To_Cells
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);

            var apiInstance = new ConvertApi(configuration);

            try
            {
                // convert settings
                var settings = new ConvertSettings
                {
                    StorageName = Common.MyStorage,
                    FilePath = "conversions/password-protected.docx",
                    Format = "xlsx",
                    LoadOptions = new DocxLoadOptions() { Password = "password" },
                    ConvertOptions = new XlsxConvertOptions() { FromPage = 1, PagesCount = 1, Password = "password", UsePdf = false },
                    OutputPath = "converted/tocells"
                };

                // convert to specified format
                List<StoredConvertedResult> response = apiInstance.ConvertDocument(new ConvertDocumentRequest(settings));
                Console.WriteLine("Document conveted successfully: " + response[0].Url);
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception when calling ConvertApi: " + e.Message);
            }
        }
    }
}
```

{{< /tab >}} {{< tab "PHP" >}}

```php
<?php

include(dirname(__DIR__) . '\CommonUtils.php');

    $convertApi = CommonUtils::GetConvertApiInstance();

    try 
    {
        $settings = new GroupDocs\Conversion\Model\ConvertSettings();

        $settings->setStorageName(CommonUtils::$MyStorage);
        $settings->setFilePath("conversions\\sample.docx");
        $settings->setFormat("xlsx");

        $loadOptions = new GroupDocs\Conversion\Model\DocxLoadOptions();
        $loadOptions->setPassword("");
        $loadOptions->setHideWordTrackedChanges(true);

        $settings->setLoadOptions($loadOptions);

        $convertOptions = new GroupDocs\Conversion\Model\XlsxConvertOptions();
        $convertOptions->setFromPage(1);
        $convertOptions->setFromPage(1);
        $settings->setConvertOptions($convertOptions);

        $settings->setOutputPath("converted\\tocells");
        
        $request = new GroupDocs\Conversion\Model\Requests\ConvertDocumentRequest($settings);

        $response = $convertApi->convertDocument($request);
        echo "Document converted successfully: ", $response[0]->getUrl();
    } 
    catch (Exception $e) 
    {
        echo  "Something went wrong: ",  $e->getMessage(), "<br />";
        PHP_EOL;
    }
?>
```

{{< /tab >}} {{< tab "Java" >}}

```java
package examples.Working_With_Conversions;

import com.groupdocs.cloud.conversion.api.*;
import com.groupdocs.cloud.conversion.client.ApiException;
import com.groupdocs.cloud.conversion.model.*;
import com.groupdocs.cloud.conversion.model.requests.*;
import examples.Utils;
import java.util.List;

public class Conversion_Java_Convert_To_Cells {

    public static void main(String[] args) {

        ConvertApi apiInstance = new ConvertApi(Utils.AppSID, Utils.AppKey);
        try {

            ConvertSettings settings = new ConvertSettings();

            settings.setStorageName(Utils.MYStorage);
            settings.setFilePath("conversions\\password-protected.docx");
            settings.setFormat("xlsx");

            DocxLoadOptions loadOptions = new DocxLoadOptions();
            loadOptions.setPassword("password");
            loadOptions.setHideWordTrackedChanges(true);
            loadOptions.setDefaultFont("Arial");

            settings.setLoadOptions(loadOptions);

            XlsxConvertOptions convertOptions = new XlsxConvertOptions();
            convertOptions.setFromPage(1);
            convertOptions.setPagesCount(2);
            convertOptions.setFromPage(1);
            convertOptions.setPassword("password");
            convertOptions.setUsePdf(true);
            settings.setConvertOptions(convertOptions);

            settings.setOutputPath("converted\\tocells");

            // convert to specified format
            List<StoredConvertedResult> response = apiInstance.convertDocument(new ConvertDocumentRequest(convertSettings));
            System.out.println("Document converted successfully: " + response.size());
        } catch (ApiException e) {
            System.err.println("Exception while calling ConvertApi:");
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

class Working_With_Conversions
  def self.Conversion_Ruby_Convert_To_Cells()

    # Getting instance of the API
    api = Common_Utilities.Get_ConvertApi_Instance()

    $settings = GroupDocsConversionCloud::ConvertSettings.new()
    $settings.storage_name = $myStorage;
    $settings.file_path = "conversions/password-protected.docx"
    $settings.format = "xlsx"

    $loadOptions = GroupDocsConversionCloud::DocxLoadOptions.new()
    $loadOptions.password = "password"

    $settings.load_options = $loadOptions;

    $convertOptions = GroupDocsConversionCloud::XlsxConvertOptions.new()
    $convertOptions.from_page = 1
    $convertOptions.pages_count = 1
    $convertOptions.password = "password"
    $convertOptions.use_pdf = false

    $settings.convert_options = $convertOptions
    $settings.output_path = "converted/tocells"

    $request = GroupDocsConversionCloud::ConvertDocumentRequest.new($settings)

    $response = api.convert_document($request)
    puts("Document converted successfully: " + ($response).to_s)
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Node_Convert_To_Cells {
    static Run() {

        var settings = new groupdocs_conversion_cloud_1.ConvertSettings();
        settings.storageName = myStorage;
        settings.filePath = "conversions/password-protected.docx";
        settings.format = "xlsx";

        var loadOptions = new groupdocs_conversion_cloud_1.DocxLoadOptions();
        loadOptions.password = "password";

        settings.loadOptions = loadOptions;

        var convertOptions = new groupdocs_conversion_cloud_1.XlsxConvertOptions();
        convertOptions.fromPage = 1;
        convertOptions.pagesCount = 1;
        convertOptions.password = "password";
        convertOptions.usePdf = false;

        settings.convertOptions = convertOptions;
        settings.outputPath = "converted/tocells";

        var request = new groupdocs_conversion_cloud_1.ConvertDocumentRequest(settings);
        convertApi.convertDocument(request)
            .then(function (response) {
                console.log("Document converted successfully: " + response[0].url);
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Node_Convert_To_Cells;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities


class Conversion_Python_Convert_To_Cells:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_ConvertApi_Instance()
        
        try:
            settings = groupdocs_conversion_cloud.ConvertSettings()
            settings.storage_name = Common_Utilities.myStorage;
            settings.file_path = "conversions\\password-protected.docx"
            settings.format = "xlsx"
            
            loadOptions = groupdocs_conversion_cloud.DocxLoadOptions()
            loadOptions.password = "password"
            
            settings.load_options = loadOptions;
            
            convertOptions = groupdocs_conversion_cloud.XlsxConvertOptions()
            convertOptions.from_page = 1
            convertOptions.pages_count = 1
            convertOptions.password = "password"
            convertOptions.use_pdf = False
            
            settings.convert_options = convertOptions
            settings.output_path = "converted\\tocells"
            
            request = groupdocs_conversion_cloud.ConvertDocumentRequest(settings)
            response = api.convert_document(request)

            print("Document converted successfully: " + str(response))
        except groupdocs_conversion_cloud.ApiException as e:
            print("Exception while calling API: {0}".format(e.message))
```

{{< /tab >}} {{< tab "Go" >}}

```go
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples
package convert

import (
 "fmt"
 "os"

 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go/models"
)

func ConvertToSpreadsheet() {

 settings := models.ConvertSettings{
  Format:     "xlsx",
  FilePath:   "WordProcessing/four-pages.docx",
  OutputPath: "converted",
 }

 result, _, err := config.Client.ConvertApi.ConvertDocument(config.Ctx, settings)

 if err != nil {
  fmt.Printf("ConvertToSpreadsheet error: %v\n", err)
  return
 }
}
```

{{< /tab >}} {{< /tabs >}}

## Convert to Spreadsheet Document Formats with Stream Output

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}}) to **Spreadsheet** Formats and get the output document as **Stream**

### Resource

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to spreadsheet Format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.

### cURL example

{{< tabs "example3">}} {{< tab "Request" >}}

```bash
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]" -H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/password-protected.docx\",  \"Format\": \"xlsx\",  \"LoadOptions\": {\"Password\": \"password\"},  \"ConvertOptions\": {     \"FromPage\": \"1\",     \"PagesCount\": \"1\",     \"UsePdf\": \"false\"  },  \"OutputPath\": \""}"

```

{{< /tab >}} {{< tab "Response" >}}

```log
File contents
```

{{< /tab >}} {{< /tabs >}}

### SDK examples

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

{{< tabs "example4">}} {{< tab "C#" >}}

```csharp
using System;
using System.Collections.Generic;
using System.IO;
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Convert to Cells with load and save options with output as iostream
    class Convert_To_Cells_Stream
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);

            var apiInstance = new ConvertApi(configuration);

            try
            {
                // convert settings
                var settings = new ConvertSettings
                {
                    StorageName = Common.MyStorage,
                    FilePath = "conversions/password-protected.docx",
                    Format = "xlsx",
                    LoadOptions = new DocxLoadOptions() { Password = "password" },
                    ConvertOptions = new XlsxConvertOptions() { FromPage = 1, PagesCount = 1, Password = "password", UsePdf = false },
                    OutputPath = null // set OutputPath as null will result the output as document IOStream
                };

                // convert to specified format
                Stream response = apiInstance.ConvertDocumentDownload(new ConvertDocumentRequest(settings));
                Console.WriteLine("Document conveted successfully: " + response.Length.ToString());
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception when calling ConvertApi: " + e.Message);
            }
        }
    }
}
```

{{< /tab >}} {{< tab "PHP" >}}

```php
<?php

include(dirname(__DIR__) . '\CommonUtils.php');

    $convertApi = CommonUtils::GetConvertApiInstance();

    try 
    {
        $settings = new GroupDocs\Conversion\Model\ConvertSettings();

        $settings->setStorageName(CommonUtils::$MyStorage);
        $settings->setFilePath("conversions\\sample.docx");
        $settings->setFormat("xlsx");

        $loadOptions = new GroupDocs\Conversion\Model\DocxLoadOptions();
        $loadOptions->setPassword("");
        $loadOptions->setHideWordTrackedChanges(true);

        $settings->setLoadOptions($loadOptions);

        $convertOptions = new GroupDocs\Conversion\Model\XlsxConvertOptions();
        $convertOptions->setFromPage(1);
        $convertOptions->setFromPage(1);
        $settings->setConvertOptions($convertOptions);

        // set OutputPath as empty will result the output as document Stream'
        $settings->setOutputPath("");
        
        $request = new GroupDocs\Conversion\Model\Requests\ConvertDocumentRequest($settings);

        $response = $convertApi->convertDocumentDownload($request);
        echo "Document converted successfully: Document Size: ", $response->getSize();
    } 
    catch (Exception $e) 
    {
        echo  "Something went wrong: ",  $e->getMessage(), "<br />";
        PHP_EOL;
    }
?>
```

{{< /tab >}} {{< tab "Java" >}}

```java
package examples.Working_With_Conversions;

import com.groupdocs.cloud.conversion.api.*;
import com.groupdocs.cloud.conversion.client.ApiException;
import com.groupdocs.cloud.conversion.model.*;
import com.groupdocs.cloud.conversion.model.requests.*;
import examples.Utils;
import java.util.stream.*;

public class Conversion_Java_Convert_To_Cells_Stream {

    public static void main(String[] args) {

        ConvertApi apiInstance = new ConvertApi(Utils.AppSID, Utils.AppKey);
        try {

            ConvertSettings settings = new ConvertSettings();

            settings.setStorageName(Utils.MYStorage);
            settings.setFilePath("conversions\\password-protected.docx");
            settings.setFormat("xlsx");

            DocxLoadOptions loadOptions = new DocxLoadOptions();
            loadOptions.setPassword("password");
            loadOptions.setHideWordTrackedChanges(true);
            loadOptions.setDefaultFont("Arial");

            settings.setLoadOptions(loadOptions);

            XlsxConvertOptions convertOptions = new XlsxConvertOptions();
            convertOptions.setFromPage(1);
            convertOptions.setPagesCount(2);
            convertOptions.setFromPage(1);
            convertOptions.setPassword("password");
            convertOptions.setUsePdf(true);
            settings.setConvertOptions(convertOptions);

            // set OutputPath as empty will result the output as document IOStream
            settings.setOutputPath("");

            // convert to specified format
            Stream response = apiInstance.convertDocument(new ConvertDocumentRequest(convertSettings));
            System.out.println("Document converted successfully: " + response);
        } catch (ApiException e) {
            System.err.println("Exception while calling ConvertApi:");
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

class Working_With_Conversions
  def self.Conversion_Ruby_Convert_To_Cells_Stream()

    # Getting instance of the API
    api = Common_Utilities.Get_ConvertApi_Instance()

    $settings = GroupDocsConversionCloud::ConvertSettings.new()
    $settings.storage_name = $myStorage;
    $settings.file_path = "conversions/password-protected.docx"
    $settings.format = "xlsx"

    $loadOptions = GroupDocsConversionCloud::DocxLoadOptions.new()
    $loadOptions.password = "password"

    $settings.load_options = $loadOptions;

    $convertOptions = GroupDocsConversionCloud::XlsxConvertOptions.new()
    $convertOptions.from_page = 1
    $convertOptions.pages_count = 1
    $convertOptions.password = "password"
    $convertOptions.use_pdf = false

    $settings.convert_options = $convertOptions
    # leave OutputPath will result the output as document IOStream

    $request = GroupDocsConversionCloud::ConvertDocumentRequest.new($settings)

    $response = api.convert_document($request)
    puts("Document converted successfully: " + ($response.length).to_s)
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Node_Convert_To_Cells_Stream {
    static Run() {

        var settings = new groupdocs_conversion_cloud_1.ConvertSettings();
        settings.storageName = myStorage;
        settings.filePath = "conversions/password-protected.docx";
        settings.format = "xlsx";

        var loadOptions = new groupdocs_conversion_cloud_1.DocxLoadOptions();
        loadOptions.password = "password";

        settings.loadOptions = loadOptions;

        var convertOptions = new groupdocs_conversion_cloud_1.XlsxConvertOptions();
        convertOptions.fromPage = 1;
        convertOptions.pagesCount = 1;
        convertOptions.password = "password";
        convertOptions.usePdf = false;

        settings.convertOptions = convertOptions;
        settings.outputPath = null; // set OutputPath as null will result the output as document IOStream

        var request = new groupdocs_conversion_cloud_1.ConvertDocumentRequest(settings);
        convertApi.convertDocumentDownload(request)
            .then(function (response) {
                console.log("Document converted successfully: " + response.length);
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Node_Convert_To_Cells_Stream;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities


class Conversion_Python_Convert_To_Cells_Stream:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_ConvertApi_Instance()
        
        try:
            settings = groupdocs_conversion_cloud.ConvertSettings()
            settings.storage_name = Common_Utilities.myStorage;
            settings.file_path = "conversions\\password-protected.docx"
            settings.format = "xlsx"
            
            loadOptions = groupdocs_conversion_cloud.DocxLoadOptions()
            loadOptions.password = "password"
            
            settings.load_options = loadOptions;
            
            convertOptions = groupdocs_conversion_cloud.XlsxConvertOptions()
            convertOptions.from_page = 1
            convertOptions.pages_count = 1
            convertOptions.password = "password"
            convertOptions.use_pdf = False
            
            settings.convert_options = convertOptions
            settings.output_path = None  # leave OutputPath will result the output as document IOStream
            
            request = groupdocs_conversion_cloud.ConvertDocumentRequest(settings)
            response = api.convert_document_download(request)

            print("Document converted successfully: " + str(len(response)))
        except groupdocs_conversion_cloud.ApiException as e:
            print("Exception while calling API: {0}".format(e.message))

```

{{< /tab >}} {{< tab "Go" >}}

```go
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples
package convert

import (
 "fmt"
 "os"

 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go/models"
)

func ConvertToSpreadsheet() {

 settings := models.ConvertSettings{
  Format:     "xlsx",
  FilePath:   "WordProcessing/four-pages.docx",
 }

 result, _, err := config.Client.ConvertApi.ConvertDocument(config.Ctx, settings)

 if err != nil {
  fmt.Printf("ConvertToSpreadsheet error: %v\n", err)
  return
 }

 // Get file info
 fileInfo, errInfo := result.Stat()
 if errInfo != nil {
  t.Error(errInfo)
 }

 // Get the size of the file
 fileSize := fileInfo.Size()
}
```

{{< /tab >}} {{< /tabs >}}

## Convert to Spreadsheet with Advanced Options

This example demonstrates how to convert word processing documents into a spreadsheet with advanced conversion options.

There are steps that usage of GroupDocs.Conversion Cloud consists of:

1. Upload input document into cloud storage
2. Convert document
3. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this [GroupDocs.Conversion Cloud Storage Operations]({{< ref "conversion/developer-guide/working-with-storage-api.md" >}}) for usage details.

Step 3 is not needed if the "OutputPath" option is not provided: the convert API method will return the converted document in the response body.

## Resource

```js
HTTP POST ~/conversion
```

[Swagger UI](https://apireference.groupdocs.cloud/conversion/) lets you call this REST API directly from the browser.

### cURL example

{{< tabs "example5">}} {{< tab "Request" >}}

```bash

# First get JSON Web Token
# Please get your Client Id and Client Secret from https://dashboard.groupdocs.cloud/applications. Kindly place Client Id in "client_id" and Client Secret in "client_secret" argument.
curl -v "https://api.groupdocs.cloud/connect/token" \
-X POST \
-d "grant_type#client_credentials&client_id#xxxx&client_secret#xxxx" \
-H "Content-Type: application/x-www-form-urlencoded" \
-H "Accept: application/json"

# cURL example to convert document
curl -v "https://api.groupdocs.cloud/v2.0/conversion/conversion" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-H "Authorization: Bearer <jwt token>"
-d "{
        'FilePath': 'WordProcessing/four-pages.docx',
        'Format': 'xlsx',
        'ConvertOptions': {
            'FromPage': 2,
            'PagesCount': 1,
            'Zoom': 150
        },
        'OutputPath': 'Output'
    }"

```

{{< /tab >}} {{< tab "Response" >}}

```json

[
  {
    "name": "four-pages.xlsx",
    "size": 7375,
    "path": "Output/four-pages.xlsx",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/four-pages.xlsx"
  }
]
```

{{< /tab >}} {{< /tabs >}}

### SDK examples

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

{{< tabs "example6">}} {{< tab "C#" >}}

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-dotnet-samples
string MyAppKey = ""; // Get AppKey and AppSID from https://dashboard.groupdocs.cloud
string MyAppSid = ""; // Get AppKey and AppSID from https://dashboard.groupdocs.cloud
  
var configuration = new Configuration(MyAppSid, MyAppKey);
  
// Create necessary API instances
var apiInstance = new ConvertApi(configuration);
 
// Prepare convert settings
var settings = new ConvertSettings
{
    FilePath = "WordProcessing/four-pages.docx",
    Format = "xlsx",
    ConvertOptions = new SpreadsheetConvertOptions()
    {
        FromPage = 2,
        PagesCount = 1,
        Zoom = 150
    },
    OutputPath = "converted"
};
 
// Convert to specified format
var response = apiInstance.ConvertDocument(new ConvertDocumentRequest(settings));
```

{{< /tab >}} {{< tab "Java" >}}

```java
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-java-samples
String MyAppKey = ""; // Get AppKey and AppSID from https://dashboard.groupdocs.cloud
String MyAppSid = ""; // Get AppKey and AppSID from https://dashboard.groupdocs.cloud
  
Configuration configuration = new Configuration(MyAppSid, MyAppKey);
  
// Create API instance
ConvertApi apiInstance = new ConvertApi(configuration);
 
// Prepare convert settings
ConvertSettings settings = new ConvertSettings();
settings.setFilePath("WordProcessing/four-pages.docx");
settings.setFormat("xlsx");
 
SpreadsheetConvertOptions convertOptions = new SpreadsheetConvertOptions();
convertOptions.setFromPage(2);
convertOptions.setPagesCount(1);
convertOptions.setZoom(150);            
 
settings.setConvertOptions(convertOptions);
settings.setOutputPath("converted");
 
List<StoredConvertedResult> result = apiInstance.convertDocument(new ConvertDocumentRequest(settings));
```

{{< /tab >}} {{< tab "PHP" >}}

```php
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-php-samples
use GroupDocs\Conversion\Model;
use GroupDocs\Conversion\Model\Requests;
 
$AppSid = ""; // Get AppKey and AppSID from https://dashboard.groupdocs.cloud
$AppKey = ""; // Get AppKey and AppSID from https://dashboard.groupdocs.cloud
  
$configuration = new GroupDocs\Conversion\Configuration();
$configuration->setAppSid($AppSid);
$configuration->setAppKey($AppKey);
 
$apiInstance = new GroupDocs\Conversion\ConvertApi($configuration);
 
// Prepare convert settings
$settings = new Model\ConvertSettings();
$settings->setFilePath("WordProcessing/four-pages.docx");
$settings->setFormat("xlsx");
 
$convertOptions = new Model\SpreadsheetConvertOptions();
$convertOptions->setFromPage(2);
$convertOptions->setPagesCount(1);
$convertOptions->setZoom(150);
 
$settings->setConvertOptions($convertOptions);
$settings->setOutputPath("converted");
 
// Convert
$result = $apiInstance->convertDocument(new Requests\ConvertDocumentRequest($settings));
```

{{< /tab >}} {{< tab "Ruby" >}}

```ruby
# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-ruby-samples
require 'groupdocs_conversion_cloud'
 
$app_sid = "XXXX-XXXX-XXXX-XXXX" # Get AppKey and AppSID from https://dashboard.groupdocs.cloud
$app_key = "XXXXXXXXXXXXXXXX" # Get AppKey and AppSID from https://dashboard.groupdocs.cloud
  
# Create necessary API instances
apiInstance = GroupDocsConversionCloud::ConvertApi.from_keys($app_sid, $app_key)
 
# Prepare convert settings
settings = GroupDocsConversionCloud::ConvertSettings.new
settings.file_path = "WordProcessing/four-pages.docx"
settings.format = "xlsx"
convertOptions = GroupDocsConversionCloud::SpreadsheetConvertOptions.new
convertOptions.from_page = 2
convertOptions.pages_count = 1
convertOptions.zoom = 150
settings.convert_options = convertOptions
settings.output_path = "converted"
 
# Convert
result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-node-samples
global.conversion_cloud = require("groupdocs-conversion-cloud");
 
global.appSid = "XXXX-XXXX-XXXX-XXXX"; // Get AppKey and AppSID from https://dashboard.groupdocs.cloud
global.appKey = "XXXXXXXXXXXXXXXX"; // Get AppKey and AppSID from https://dashboard.groupdocs.cloud
  
global.convertApi = conversion_cloud.ConvertApi.fromKeys(appSid, appKey);
 
let settings = new conversion_cloud.ConvertSettings();
settings.filePath = "WordProcessing/four-pages.docx";
settings.format = "xlsx";
 
let convertOptions = new conversion_cloud.SpreadsheetConvertOptions();
convertOptions.fromPage = 2;
convertOptions.pagesCount = 1;      
convertOptions.zoom = 150;
 
settings.convertOptions = convertOptions
settings.outputPath = "converted";
 
let result = await convertApi.convertDocument(new conversion_cloud.ConvertDocumentRequest(settings));
```

{{< /tab >}} {{< tab "Python" >}}

```python
# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-python-samples
import groupdocs_conversion_cloud
 
app_sid = "XXXX-XXXX-XXXX-XXXX" # Get AppKey and AppSID from https://dashboard.groupdocs.cloud
app_key = "XXXXXXXXXXXXXXXX" # Get AppKey and AppSID from https://dashboard.groupdocs.cloud
  
# Create necessary API instances
apiInstance = groupdocs_conversion_cloud.ConvertApi.from_keys(Common.app_sid, Common.app_key)
 
# Prepare convert settings
settings = groupdocs_conversion_cloud.ConvertSettings()
settings.file_path = "WordProcessing/four-pages.docx"
settings.format = "xlsx"
settings.convert_options = groupdocs_conversion_cloud.SpreadsheetConvertOptions()        
settings.output_path = "converted"
 
# Convert
result = apiInstance.convert_document(groupdocs_conversion_cloud.ConvertDocumentRequest(settings))
```

{{< /tab >}} {{< tab "Go" >}}

```go
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples
package convert

import (
 "fmt"

 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go/models"
)

func ConvertToSpreadsheet() {

 settings := models.ConvertSettings{
  Format:     "xlsx",
  FilePath:   "WordProcessing/four-pages.docx",
  OutputPath: "converted",
  ConvertOptions: &models.SpreadsheetConvertOptions{
   FromPage:   2,
   PagesCount: 1,
   Zoom:       150,
  },
 }

 result, _, err := config.Client.ConvertApi.ConvertDocument(config.Ctx, settings)

 if err != nil {
  fmt.Printf("ConvertToSpreadsheet error: %v\n", err)
  return
 }

 fmt.Printf("Document converted successfully: %v\n", result[0].Url)
}
```

{{< /tab >}} {{< /tabs >}}
