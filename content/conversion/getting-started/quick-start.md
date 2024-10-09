---
id: "quick-start"
url: "conversion/quick-start"
title: "Quick Start"
productName: "GroupDocs.Conversion Cloud"
weight: 3
description: ""
keywords: ""
toc: True
---

## Create an account

Creating an account is very simple. Go to [Dashboard](https://dashboard.groupdocs.cloud) to create a free account.\
We're using Single Sign On across our websites, therefore, if you already have an account with our services, you can use it to also acccess the [Dashboard](https://dashboard.groupdocs.cloud).

## Create an API client app

Before you can make any requests to GroupDocs Cloud API you need to get a **Client Id** and a **Client Secret**.
This will will be used to invoke GroupDocs Cloud API. You can get it by creating a new [Application](https://dashboard.groupdocs.cloud/applications).

## Install the SDK of your choice

GroupDocs Cloud SDK is written in different languages, all you need to get started is adding our [SDK]({{< ref "conversion/getting-started/available-sdks.md" >}}) to your existing project.

## Make an API request from the SDK of your choice

Use the the **Client Id** and the **Client Secret** from the API app client you created in step one and replace it in the corresponding code. Below is an example demonstrating using the Formats API to get all supported file formats in GroupDocs.Conversion Cloud.

{{< alert style="info" >}}
The GitHub repository for [GroupDocs.Conversion Cloud](https://github.com/groupdocs-conversion-cloud) has a complete set of examples, demonstrating our API capabilities.
{{< /alert >}}

{{< tabs "example1">}} {{< tab "C#" >}}

```csharp
using System;
using GroupDocs.Conversion.Cloud.Sdk.Api;
using GroupDocs.Conversion.Cloud.Sdk.Client;
using GroupDocs.Conversion.Cloud.Sdk.Model.Requests;

namespace GroupDocs.Conversion.Cloud.Examples.CSharp
{
    // Get All Supported Formats
    class Get_All_Supported_Formats
    {
        public static void Run()
        {
            var configuration = new Configuration(Common.MyAppSid, Common.MyAppKey);

            var apiInstance = new InfoApi(configuration);

            try
            {
                // Get supported file formats
                var response = apiInstance.GetSupportedConversionTypes(new GetSupportedConversionTypesRequest());

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

    $request = new GroupDocs\Conversion\Model\Requests\GetSupportedConversionTypesRequest();
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
  def self.Conversion_Ruby_Get_All_Supported_Formats()

    # Getting instance of the API
    api = Common_Utilities.Get_InfoApi_Instance()

    $request = GroupDocsConversionCloud::GetSupportedConversionTypesRequest.new()

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
class Conversion_Node_Get_All_Supported_Formats {
    static Run() {
        // retrieve supported file-formats
        var request = new groupdocs_conversion_cloud_1.GetSupportedConversionTypesRequest();
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
module.exports = Conversion_Node_Get_All_Supported_Formats;
```

{{< /tab >}} {{< tab "Python" >}}

```python
# Import modules
import groupdocs_conversion_cloud
from Common_Utilities.Utils import Common_Utilities

class Conversion_Python_Get_All_Supported_Formats:
    
    @classmethod
    def Run(self):
        # Create instance of the API
        api = Common_Utilities.Get_InfoApi_Instance()
        
        try:
            # Retrieve supported conversion types
            request = groupdocs_conversion_cloud.GetSupportedConversionTypesRequest()
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
//  For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples
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
