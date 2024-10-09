---
id: "convert-to-text-formats"
url: "conversion/convert-to-text-formats"
title: "7. Convert to Text Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 7
description: ""
keywords: ""
toc: True
---

GroupDocs.Conversion Cloud REST API allows to convert the [supported document formats]({{< ref "conversion/getting-started/supported-document-formats.md" >}}) to  **Text Formats** and returns the output document **storage URL** and also support to get result as a **stream** or **Array of stream**.

## Convert to Text Formats

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}}) to **Text Formats** and get output as Storage URL.

### Resource

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to Text format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.

### cURL example

{{< tabs "example1">}} {{< tab "Request" >}}

```bash
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
-H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/sample.docx\",  \"Format\": \"txt\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"\", \"HideWordTrackedChanges\": \"true\",  \"DefaultFont\": \"Arial\"}},\"ConvertOptions\": {\"TxtConvertOptions\": {\"FromPage\": \"1\", \"PagesCount\": \"2\",  }},  \"OutputPath\": \"converted/toptext\"}"

```

{{< /tab >}} {{< tab "Response" >}}

```json
  {
    "name": "sample.txt",
    "size": 2141,
    "url": "MyStorage:converted/toptext/sample.txt"
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
    // Convert to Text with load and save options
    class Convert_To_Text
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
                    FilePath = "conversions/sample.docx",
                    Format = "txt",
                    LoadOptions = new DocxLoadOptions() { Password = "", HideWordTrackedChanges = true, DefaultFont = "Arial" },
                    ConvertOptions = new TxtConvertOptions() { FromPage = 1, PagesCount = 2 },
                    OutputPath = "converted/totext"
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
        $settings->setFilePath("conversions\\password-protected.docx");
        $settings->setFormat("txt");

        $loadOptions = new GroupDocs\Conversion\Model\DocxLoadOptions();
        $loadOptions->setPassword("password");
        $loadOptions->setHideWordTrackedChanges(true);
        $loadOptions->setDefaultFont("Arial");

        $settings->setLoadOptions($loadOptions);

        $convertOptions = new GroupDocs\Conversion\Model\TxtConvertOptions();
        $convertOptions->setFromPage(1);
        $convertOptions->setPagesCount(2);
        $settings->setConvertOptions($convertOptions);

        $settings->setOutputPath("converted\\totext");
        
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

public class Conversion_Java_Convert_To_Text {

    public static void main(String[] args) {

        ConvertApi apiInstance = new ConvertApi(Utils.AppSID, Utils.AppKey);
        try {

            ConvertSettings settings = new ConvertSettings();

            settings.setStorageName(Utils.MYStorage);
            settings.setFilePath("conversions\\sample.docx");
            settings.setFormat("txt");

            DocxLoadOptions loadOptions = new DocxLoadOptions();
            loadOptions.setPassword("");
            loadOptions.setHideWordTrackedChanges(true);
            loadOptions.setDefaultFont("Arial");

            settings.setLoadOptions(loadOptions);

            TxtConvertOptions convertOptions = new TxtConvertOptions();
            convertOptions.setFromPage(1);
            convertOptions.setPagesCount(2);
            settings.setConvertOptions(convertOptions);

            settings.setOutputPath("converted\\totext");

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
  def self.Conversion_Ruby_Convert_To_Text()

    # Getting instance of the API
    api = Common_Utilities.Get_ConvertApi_Instance()

    $settings = GroupDocsConversionCloud::ConvertSettings.new()
    $settings.storage_name = $myStorage;
    $settings.file_path = "conversions/sample.docx"
    $settings.format = "txt"

    $loadOptions = GroupDocsConversionCloud::DocxLoadOptions.new()
    $loadOptions.hide_word_tracked_changes = true
    $loadOptions.default_font = "Arial"

    $settings.load_options = $loadOptions

    $convertOptions = GroupDocsConversionCloud::TxtConvertOptions.new()
    $convertOptions.from_page = 1
    $convertOptions.pages_count = 1

    $settings.convert_options = $convertOptions
    $settings.output_path = "converted/totext"

    $request = GroupDocsConversionCloud::ConvertDocumentRequest.new($settings)

    $response = api.convert_document($request)
    puts("Document converted successfully: " + ($response).to_s)
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Node_Convert_To_Text {
    static Run() {

        var settings = new groupdocs_conversion_cloud_1.ConvertSettings();
        settings.storageName = myStorage;
        settings.filePath = "conversions/sample.docx";
        settings.format = "txt";

        var loadOptions = new groupdocs_conversion_cloud_1.DocxLoadOptions();
        loadOptions.hideWordTrackedChanges = true;
        loadOptions.defaultFont = "Arial";

        settings.loadOptions = loadOptions;

        var convertOptions = new groupdocs_conversion_cloud_1.TxtConvertOptions();
        convertOptions.fromPage = 1;
        convertOptions.pagesCount = 1;

        settings.convertOptions = convertOptions;
        settings.outputPath = "converted/totext";

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
module.exports = Conversion_Node_Convert_To_Text;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities


class Conversion_Python_Convert_To_Text:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_ConvertApi_Instance()
        
        try:
            settings = groupdocs_conversion_cloud.ConvertSettings()
            settings.storage_name = Common_Utilities.myStorage;
            settings.file_path = "conversions\\sample.docx"
            settings.format = "txt"
            
            loadOptions = groupdocs_conversion_cloud.DocxLoadOptions()
            loadOptions.hide_word_tracked_changes = True
            loadOptions.default_font = "Arial"
            
            settings.load_options = loadOptions;
            
            convertOptions = groupdocs_conversion_cloud.TxtConvertOptions()
            convertOptions.from_page = 1
            convertOptions.pages_count = 1
    
            settings.convert_options = convertOptions
            settings.output_path = "converted\\totxt"
            
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

func ConvertToTxt() {

 settings := models.ConvertSettings{
  Format:     "txt",
  FilePath:   "WordProcessing/four-pages.docx",
  OutputPath: "converted",
 }

 result, _, err := config.Client.ConvertApi.ConvertDocument(config.Ctx, settings)

 if err != nil {
  fmt.Printf("ConvertToTxt error: %v\n", err)
  return
 }
}
```

{{< /tab >}} {{< /tabs >}}

## Convert to Text Formats with Stream Output

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}}) to **Text Formats** and get output as Stream.

### Resource

The following GroupDocs.Conversion Cloud REST API resource has been used in the [convert to Text format](https://apireference.groupdocs.cloud/conversion/#/Conversion/ConvertDocument) example.

### cURL example

{{< tabs "example3">}} {{< tab "Request" >}}

```bash
curl -X POST "https://api.groupdocs.cloud/v2.0/conversion" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
-H  "Content-Type: application/json" -d "{  \"Storage\": \"MyStorage\",  \"FilePath\": \"conversions/sample.docx\",  \"Format\": \"txt\",  \"LoadOptions\": {\"DocxLoadOptions\": {\"Password\": \"\", \"HideWordTrackedChanges\": \"true\",  \"DefaultFont\": \"Arial\"}},\"ConvertOptions\": {\"TxtConvertOptions\": {\"FromPage\": \"1\", \"PagesCount\": \"2\",  }},  \"OutputPath\": \""}"
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
    // Convert to Text with load and save options with output as iostream
    class Convert_To_Text_Stream
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
                    FilePath = "conversions/sample.docx",
                    Format = "txt",
                    LoadOptions = new DocxLoadOptions() { Password = "", HideWordTrackedChanges = true, DefaultFont = "Arial" },
                    ConvertOptions = new TxtConvertOptions() { FromPage = 1, PagesCount = 2 },
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
        $settings->setFilePath("conversions\\password-protected.docx");
        $settings->setFormat("txt");

        $loadOptions = new GroupDocs\Conversion\Model\DocxLoadOptions();
        $loadOptions->setPassword("password");
        $loadOptions->setHideWordTrackedChanges(true);
        $loadOptions->setDefaultFont("Arial");

        $settings->setLoadOptions($loadOptions);

        $convertOptions = new GroupDocs\Conversion\Model\TxtConvertOptions();
        $convertOptions->setFromPage(1);
        $convertOptions->setPagesCount(2);
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

public class Conversion_Java_Convert_To_Text_Stream {

    public static void main(String[] args) {

        ConvertApi apiInstance = new ConvertApi(Utils.AppSID, Utils.AppKey);
        try {

            ConvertSettings settings = new ConvertSettings();

            settings.setStorageName(Utils.MYStorage);
            settings.setFilePath("conversions\\sample.docx");
            settings.setFormat("txt");

            DocxLoadOptions loadOptions = new DocxLoadOptions();
            loadOptions.setPassword("");
            loadOptions.setHideWordTrackedChanges(true);
            loadOptions.setDefaultFont("Arial");

            settings.setLoadOptions(loadOptions);

            TxtConvertOptions convertOptions = new TxtConvertOptions();
            convertOptions.setFromPage(1);
            convertOptions.setPagesCount(2);
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
  def self.Conversion_Ruby_Convert_To_Text_Stream()

    # Getting instance of the API
    api = Common_Utilities.Get_ConvertApi_Instance()

    $settings = GroupDocsConversionCloud::ConvertSettings.new()
    $settings.storage_name = $myStorage;
    $settings.file_path = "conversions/sample.docx"
    $settings.format = "txt"

    $loadOptions = GroupDocsConversionCloud::DocxLoadOptions.new()
    $loadOptions.hide_word_tracked_changes = true
    $loadOptions.default_font = "Arial"

    $settings.load_options = $loadOptions

    $convertOptions = GroupDocsConversionCloud::TxtConvertOptions.new()
    $convertOptions.from_page = 1
    $convertOptions.pages_count = 1

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
class Conversion_Node_Convert_To_Text_Stream {
    static Run() {

        var settings = new groupdocs_conversion_cloud_1.ConvertSettings();
        settings.storageName = myStorage;
        settings.filePath = "conversions/sample.docx";
        settings.format = "txt";

        var loadOptions = new groupdocs_conversion_cloud_1.DocxLoadOptions();
        loadOptions.hideWordTrackedChanges = true;
        loadOptions.defaultFont = "Arial";

        settings.loadOptions = loadOptions;

        var convertOptions = new groupdocs_conversion_cloud_1.TxtConvertOptions();
        convertOptions.fromPage = 1;
        convertOptions.pagesCount = 1;

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
module.exports = Conversion_Node_Convert_To_Text_Stream;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities


class Conversion_Python_Convert_To_Text_Stream:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_ConvertApi_Instance()
        
        try:
            settings = groupdocs_conversion_cloud.ConvertSettings()
            settings.storage_name = Common_Utilities.myStorage;
            settings.file_path = "conversions\\sample.docx"
            settings.format = "txt"
            
            loadOptions = groupdocs_conversion_cloud.DocxLoadOptions()
            loadOptions.hide_word_tracked_changes = True
            loadOptions.default_font = "Arial"
            
            settings.load_options = loadOptions;
            
            convertOptions = groupdocs_conversion_cloud.TxtConvertOptions()
            convertOptions.from_page = 1
            convertOptions.pages_count = 1
    
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

func ConvertToTxt() {

 settings := models.ConvertSettings{
  Format:     "txt",
  FilePath:   "WordProcessing/four-pages.docx",
 }

 result, _, err := config.Client.ConvertApi.ConvertDocument(config.Ctx, settings)

 if err != nil {
  fmt.Printf("ConvertToTxt error: %v\n", err)
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
