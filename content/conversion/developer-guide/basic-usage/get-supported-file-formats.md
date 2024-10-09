---
id: "get-supported-file-formats"
url: "conversion/get-supported-file-formats"
title: "Get Supported File Formats"
productName: "GroupDocs.Conversion Cloud"
weight: 2
description: ""
keywords: ""
toc: True
---
GroupDocs.conversion Cloud REST APIs support document conversion tools to convert files from 65+ supported formats to get high-quality output in quickly and reliably. To get a list of supported formats, You can use the below API.

## Resource

The following GroupDocs.conversion Cloud REST API resource has been used in the [Supported File Formats](https://apireference.groupdocs.cloud/conversion/#/Conversion/GetSupportedConversionTypes) example.

## cURL example

{{< tabs "example1">}} {{< tab "Request" >}}

```curl
curl -X GET "https://api.groupdocs.cloud/v2.0/conversion/formats" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
[
  {
    "sourceFormat": "doc",
    "targetFormats": [
      "ods",
      "xls",
      "xlsx",
      "xlsm",
      "xlsb",
      "csv",
      "xls2003",
      "xltx",
      "xltm",
      "tsv",
      "tiff",
      "tif",
      "jpeg",
      "jpg",
      "png",
      "gif",
      "bmp",
      "ico",
      "psd",
      "svg",
      "webp",
      "jp2",
      "pdf",
      "epub",
      "xps",
      "ppt",
      "pps",
      "pptx",
      "ppsx",
      "odp",
      "otp",
      "potx",
      "potm",
      "pptm",
      "ppsm",
      "doc",
      "docm",
      "docx",
      "dot",
      "dotm",
      "dotx",
      "rtf",
      "txt",
      "odt",
      "ott",
      "html"
    ]
  },
  ...
]
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
    // Get All Supported Formats For Provided Document
    class Get_All_Possible_Conversions_For_Document
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);

            var apiInstance = new InfoApi(configuration);

            try
            {
                // Get supported file formats
                var response = apiInstance.GetSupportedConversionTypes(new GetSupportedConversionTypesRequest("conversions/sample.docx", Common.MyStorage));

                foreach (var entry in response)
                {
                    foreach (var formats in entry.TargetFormats)
                    {
                        Console.WriteLine(string.Format("{0} TO {1}", entry.SourceFormat, string.Join(",", formats)));
                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception while calling InfoApi: " + e.Message);
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

    $request = new GroupDocs\Conversion\Model\Requests\GetSupportedConversionTypesRequest("conversions\\sample.docx", CommonUtils::$MyStorage, null);
    $response = $infoApi->getSupportedConversionTypes($request);

    echo '<b>Supported file formats<br /></b>';
    foreach($response as $key => $format) {
      echo $format->getSourceFormat(), "<br />";
    }
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

public class Conversion_Java_Get_Supported_Formats_For_Document {

    public static void main(String[] args) {

        InfoApi apiInstance = new InfoApi(Utils.AppSID, Utils.AppKey);
        try {
            GetSupportedConversionTypesRequest request = new GetSupportedConversionTypesRequest(
                    "conversions/sample.docx", Utils.MYStorage, null);
            List<SupportedFormat> response = apiInstance.getSupportedConversionTypes(request);

            for (SupportedFormat entry : response) {
                for (String formats : entry.getTargetFormats()) {
                    System.out.println(entry.getSourceFormat() + " TO " + formats);
                }
            }
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

class File_Formats
  def self.Conversion_Ruby_Get_All_Supported_Formats_For_Document()

    # Getting instance of the API
    api = Common_Utilities.Get_InfoApi_Instance()

    $request = GroupDocsConversionCloud::GetSupportedConversionTypesRequest.new("one-page.docx", $myStorage, "")

    # Retrieve supported file-formats
    $response = api.get_supported_conversion_types($request)

    # Print out supported file-formats
    puts("Supported file-formats:")
    $response.each do |format|
      puts("#{format.source_format} to [#{format.target_formats.join(', ')}]")
    end
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Ruby_Get_All_Supported_Formats_For_Document {
    static Run() {
        // retrieve supported file-formats
        var request = new groupdocs_conversion_cloud_1.GetSupportedConversionTypesRequest("conversions/sample.docx", myStorage, "");
        infoApi.getSupportedConversionTypes(request)
            .then(function (response) {
                console.log("Supported file-formats:");
                response.forEach(function (format) {
                    console.log(format.sourceFormat + " - To - " + format.targetFormats + "\n");
                });
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Ruby_Get_All_Supported_Formats_For_Document;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities

class Conversion_Python_Get_All_Supported_Formats_For_Document:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_InfoApi_Instance()
        
        try:
            # Retrieve supported conversion types
            request = groupdocs_conversion_cloud.GetSupportedConversionTypesRequest("conversions\\one-page.docx", Common_Utilities.myStorage, "")
            response = api.get_supported_conversion_types(request)
            
            # Print out supported conversion types
            print("Supported conversion types:")
            for fileformat in response:
                print('{0} to [{1}]'.format(fileformat.source_format, ', '.join(fileformat.target_formats))) 
        except groupdocs_conversion_cloud.ApiException as e:
            print("Exception when calling get_supported_conversion_types: {0}".format(e.message))
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

func GetSupportedConversions() {

 response, _, err := config.Client.InfoApi.GetSupportedConversionTypes(config.Ctx, nil)

 if err != nil {
  fmt.Printf("GetSupportedConversions error: %v\n", err)
  return
 }

 fmt.Printf("response.length: %v\n", len(response))
}

```

{{< /tab >}} {{< /tabs >}}

## Get All Supported Formats For Provided Document Extension

GroupDocs.Conversion Cloud supports functinality to get a list of supported formats from provided document extension, You can use the below API.

## Resource

The following GroupDocs.conversion Cloud REST API resource has been used in the [Supported File Formats](https://apireference.groupdocs.cloud/conversion/#/Conversion/GetSupportedConversionTypes) example.

## cURL example

{{< tabs "example3">}} {{< tab "Request" >}}

```curl
curl -X GET "https://api.groupdocs.cloud/v2.0/conversion/formats?format#docx" -H  "accept: application/json" -H  "authorization: Bearer [Access Token]"
```

{{< /tab >}} {{< tab "Response" >}}

```json
[
  {
    "sourceFormat": "docx",
    "targetFormats": [
      "ods",
      "xls",
      "xlsx",
      "xlsm",
      "xlsb",
      "csv",
      "xls2003",
      "xltx",
      "xltm",
      "tsv",
      "tiff",
      "tif",
      "jpeg",
      "jpg",
      "png",
      "gif",
      "bmp",
      "ico",
      "psd",
      "svg",
      "webp",
      "jp2",
      "pdf",
      "epub",
      "xps",
      "ppt",
      "pps",
      "pptx",
      "ppsx",
      "odp",
      "otp",
      "potx",
      "potm",
      "pptm",
      "ppsm",
      "doc",
      "docm",
      "docx",
      "dot",
      "dotm",
      "dotx",
      "rtf",
      "txt",
      "odt",
      "ott",
      "html"
    ]
  }
]
``` 
{{< /tab >}} {{< /tabs >}}

## SDK examples

The API is completely independent of your operating system, database system or development language. We provide and support API SDKs in many development languages in order to make it even easier to integrate. You can see our available SDKs list [here](https://github.com/groupdocs-conversion-cloud).

### Get All Supported Formats For Provided Document Extension

{{< tabs "example4">}} {{< tab "C#" >}}

```csharp
using System;
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Get All Supported Formats For Provided Extension
    class Get_All_Possible_Conversions_For_Extension
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);

            var apiInstance = new InfoApi(configuration);

            try
            {
                // Get supported file formats
                var response = apiInstance.GetSupportedConversionTypes(new GetSupportedConversionTypesRequest(null, null, "xlsx"));

                foreach (var entry in response)
                {
                    foreach (var formats in entry.TargetFormats)
                    {
                        Console.WriteLine(string.Format("{0} TO {1}", entry.SourceFormat, string.Join(",", formats)));
                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception while calling InfoApi: " + e.Message);
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

    $request = new GroupDocs\Conversion\Model\Requests\GetSupportedConversionTypesRequest(null, null, "xlsx");
    $response = $infoApi->getSupportedConversionTypes($request);

    echo '<b>Supported file formats<br /></b>';
    foreach($response as $key => $format) {
      echo $format->getSourceFormat(), "<br />";
    }
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

public class Conversion_Java_Get_Supported_Formats {

    public static void main(String[] args) {

        InfoApi apiInstance = new InfoApi(Utils.AppSID, Utils.AppKey);
        try {
            GetSupportedConversionTypesRequest request = new GetSupportedConversionTypesRequest();
            List<SupportedFormat> response = apiInstance.getSupportedConversionTypes(request);

            for (SupportedFormat entry : response) {
                for (String formats : entry.getTargetFormats()) {
                    System.out.println(entry.getSourceFormat() + " TO " + formats);
                }
            }
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

class File_Formats
  def self.Conversion_Ruby_Get_All_Supported_Formats_For_Extension()

    # Getting instance of the API
    api = Common_Utilities.Get_InfoApi_Instance()

    $request = GroupDocsConversionCloud::GetSupportedConversionTypesRequest.new("", $myStorage, "xlsx")

    # Retrieve supported file-formats
    $response = api.get_supported_conversion_types($request)

    # Print out supported file-formats
    puts("Supported file-formats:")
    $response.each do |format|
      puts("#{format.source_format} to [#{format.target_formats.join(', ')}]")
    end
  end
end
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
"use strict";
class Conversion_Ruby_Get_All_Supported_Formats_For_Extension {
    static Run() {
        // retrieve supported file-formats
        var request = new groupdocs_conversion_cloud_1.GetSupportedConversionTypesRequest("", myStorage, "xlsx");
        infoApi.getSupportedConversionTypes(request)
            .then(function (response) {
                console.log("Supported file-formats:");
                response.forEach(function (format) {
                    console.log(format.sourceFormat + " - To - " + format.targetFormats + "\n");
                });
            })
            .catch(function (error) {
                console.log("Error: " + error.message);
            });
    }
}
module.exports = Conversion_Ruby_Get_All_Supported_Formats_For_Extension;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities

class Conversion_Python_Get_All_Supported_Formats_For_Extension:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_InfoApi_Instance()
        
        try:
            # Retrieve supported conversion types
            request = groupdocs_conversion_cloud.GetSupportedConversionTypesRequest("", Common_Utilities.myStorage, "xlsx")
            response = api.get_supported_conversion_types(request)
            
            # Print out supported conversion types
            print("Supported conversion types:")
            for fileformat in response:
                print('{0} to [{1}]'.format(fileformat.source_format, ', '.join(fileformat.target_formats))) 
        except groupdocs_conversion_cloud.ApiException as e:
            print("Exception when calling get_supported_conversion_types: {0}".format(e.message))
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

func GetSupportedConversions() {

 opts := &conversion.InfoApiGetSupportedConversionTypesOpts{
  Format: optional.NewString("docx"),
 }

 response, _, err := config.Client.InfoApi.GetSupportedConversionTypes(config.Ctx, opts)

 if err != nil {
  fmt.Printf("GetSupportedConversions error: %v\n", err)
  return
 }

 fmt.Printf("response.length: %v\n", len(response))
}

```

{{< /tab >}} {{< /tabs >}}
