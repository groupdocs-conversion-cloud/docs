---
id: "convert-document-async"
url: "conversion/convert-document-async"
title: "Convert document async"
productName: "GroupDocs.Conversion Cloud"
description: ""
keywords: ""
toc: True
---

This example demonstrates how to convert word processing document into pdf document asyncronously. There are steps that usage of GroupDocs.Conversion Cloud consists of:

1. Upload input document into cloud storage
1. Start convert operation and get operation ID
1. Get operation status
1. After get "Finished" status, download converted document from storage

Steps 1 and 4 are storage operations, please refer to this  for usage details.

## Resource URI

```HTTP POST ~/conversion/async```

[Swagger UI](https://reference.groupdocs.cloud/conversion/#/Async/StartConvertAndSave) lets you call this REST API directly from the browser.

## cURL example

{{< tabs "example1">}} {{< tab "Request" >}}

```bash
// First get JSON Web Token
// Please get your Client Id and Client Secret from https://dashboard.groupdocs.cloud/applications. Kindly place Client Id in "client_id" and Client Secret in "client_secret" argument.
curl -v "https://api.groupdocs.cloud/connect/token" \
-X POST \
-d "grant_type#client_credentials&client_id#xxxx&client_secret#xxxx" \
-H "Content-Type: application/x-www-form-urlencoded" \
-H "Accept: application/json"

// cURL example to convert document
curl -v "https://api.groupdocs.cloud/v2.0/conversion/async" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-H "Authorization: Bearer <jwt token>"
-d "{
        'FilePath': 'WordProcessing/four-pages.docx',
        'Format': 'pdf',
        'OutputPath': 'Output'
    }"
```

{{< /tab >}} {{< tab "Response" >}}

```json
"ecbfa56b-3545-4620-86a0-4c500c8ac38e"
```

{{< /tab >}} {{< /tabs >}}

## SDK examples

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us.

{{< tabs "example2">}} {{< tab "C#" >}}

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-dotnet-samples
string MyClientSecret = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
string MyClientId = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

var configuration = new Configuration(MyClientId, MyClientSecret);

// Create necessary API instances
var apiInstance = new AsyncApi(configuration);

// Prepare convert settings
var settings = new ConvertSettings
{
    FilePath = "WordProcessing/four-pages.docx",
    Format = "pdf",
    OutputPath = "converted"
};

// Convert to specified format
var operationId = apiInstance.StartConvertAndSave(new StartConvertAndSaveRequest(settings));

Console.WriteLine("Operation ID: " + operationId);

while (true) {
    Thread.Sleep(1000);
    var result = apiInstance.GetOperationStatus(new GetOperationStatusRequest(operationId));
    if (result.Status == OperationResult.StatusEnum.Finished)
    {
        Console.WriteLine("Document converted successfully: " + result.Result[0].Url);
        break;
    }
    else if (result.Status == OperationResult.StatusEnum.Failed) {
        Console.WriteLine("Document converted failed: " + result.Error);
        break;
    }
    else
    {
        Console.WriteLine("Operation status: " + result.Status);
    }
}
```

{{< /tab >}} {{< tab "Java" >}}

```java
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-java-samples
String MyClientSecret = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
String MyClientId = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

Configuration configuration = new Configuration(MyClientId, MyClientSecret);

// Create API instance
AsyncApi apiInstance = new AsyncApi(configuration);

// Prepare convert settings
ConvertSettings settings = new ConvertSettings();
settings.setFilePath("WordProcessing/four-pages.docx");
settings.setFormat("pdf");
settings.setOutputPath("converted");

String operationId = apiInstance.startConvertAndSave(new StartConvertAndSaveRequest(settings));

System.out.println("Operation ID: " + operationId);

while(true) {
  Thread.sleep(1000);
  OperationResult result = apiInstance.getOperationStatus(new GetOperationStatusRequest(operationId));
  if (result.getStatus() == StatusEnum.FINISHED)
  {
    System.out.println("Document converted successfully: " + result.getResult().get(0).getUrl());
    break;
  }
  else if (result.getStatus() == StatusEnum.FAILED) {
    System.out.println("Document converted failed: " + result.getError());
    break;
  }
  else
  {
    System.out.println("Operation status: " + result.getStatus());
  }
}
```

{{< /tab >}} {{< tab "Node.js" >}}

```JavaScript

// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-node-samples
global.merger_cloud = require("groupdocs-conversion-cloud");

global.clientId = "XXXX-XXXX-XXXX-XXXX"; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
global.clientSecret = "XXXXXXXXXXXXXXXX"; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

global.asyncApi = conversion_cloud.AsyncApi.fromKeys(clientId, clientSecret);

let settings = new conversion_cloud.ConvertSettings();
settings.filePath = "WordProcessing/four-pages.docx";
settings.format = "pdf";

let operationId = await asyncApi.startConvertAndSave(new conversion_cloud.StartConvertAndSaveRequest(settings));

console.log("Operaion ID: " + operationId);

while (true) {
  await (async function() {
    const sleep = ms => new Promise(resolve => setTimeout(resolve, ms))
    await sleep(1000)
    })()
  let result = await asyncApi.getOperationStatus(new conversion_cloud.GetOperationStatusRequest(operationId));
  if (result.status == conversion_cloud.OperationResult.StatusEnum.Finished)
  {
    console.log("Document converted successfully: " + result.result[0].url);
    break;
  }
  else if (result.status == conversion_cloud.OperationResult.StatusEnum.Failed) {
    console.log("Document converted failed: " + result.error);
    break;
  }
  else
  {
    console.log("Operation status: " + result.status);
  }
}

```

{{< /tab >}} {{< tab "PHP" >}}

```php
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-php-samples
use GroupDocs\Conversion\Model;
use GroupDocs\Conversion\Model\Requests;

$ClientId = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
$ClientSecret = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

$configuration = new GroupDocs\Conversion\Configuration();
$configuration->setAppSid($ClientId);
$configuration->setAppKey($ClientSecret);

$apiInstance = new GroupDocs\Conversion\AsyncApi($configuration);

// Prepare convert settings
$settings = new Model\ConvertSettings();
$settings->setFilePath("WordProcessing/four-pages.docx");
$settings->setFormat("pdf");
$settings->setOutputPath("converted");

// Convert
$operationId = $apiInstance->startConvertAndSave(new Requests\StartConvertAndSaveRequest($settings));
$operationId = trim($operationId, '"');
echo "Operaion ID: " . $operationId;
echo "\n";

while (true) {
    sleep(1);

    $result = $apiInstance->getOperationStatus(new Requests\GetOperationStatusRequest($operationId));
    if ($result->getStatus() == Model\OperationResult::STATUS_FINISHED)
    {
        echo "Document converted successfully: " . $result->getResult()[0]->getUrl();
        echo "\n";
        break;
    }
    else if ($result->getStatus() == Model\OperationResult::STATUS_FAILED) {
        echo "Document converted failed: " . $result->getError();
        echo "\n";
        break;
    }
    else
    {
        echo "Operation status: " . $result.getStatus();
    }
}
```

{{< /tab >}} {{< tab "Python" >}}

```python
# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-python-samples
import groupdocs_conversion_cloud

client_id = "XXXX-XXXX-XXXX-XXXX" = Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
client_secret = "XXXXXXXXXXXXXXXX" = Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

# Create necessary API instances
apiInstance = groupdocs_conversion_cloud.AsyncApi.from_keys(Common.client_id, Common.client_secret)

# Prepare convert settings
settings = groupdocs_conversion_cloud.ConvertSettings()
settings.file_path = "WordProcessing/four-pages.docx"
settings.format = "pdf"
settings.output_path = "converted"

# Convert
operation_id = apiInstance.start_convert_and_save(groupdocs_conversion_cloud.StartConvertAndSaveRequest(settings))
print("Operaion ID: " + operation_id)

while (True):
    time.sleep(1)
    result = apiInstance.get_operation_status(groupdocs_conversion_cloud.GetOperationStatusRequest(operation_id))
    if (result.status == "Finished"):
        print("Document converted: " + result.result[0].url)
        break
    elif (result.status == "Failed"):
        print("Operation failed: " + result.error)
        break
    else:
        print("Operation status: " + result.status)
```

{{< /tab >}} {{< tab "Ruby" >}}

```ruby

# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-ruby-samples
require 'groupdocs_conversion_cloud'

$client_id = "XXXX-XXXX-XXXX-XXXX" = Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
$client_secret = "XXXXXXXXXXXXXXXX" = Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

# Create necessary API instances
apiInstance = GroupDocsConversionCloud::AsyncApi.from_keys($client_id, $client_secret)

# Prepare convert settings
settings = GroupDocsConversionCloud::ConvertSettings.new
settings.file_path = "WordProcessing/four-pages.docx"
settings.format = "pdf"
settings.output_path = "converted"

# Convert
operation_id = apiInstance.start_convert_and_save(GroupDocsConversionCloud::StartConvertAndSaveRequest.new(settings))  
operation_id = operation_id.delete_prefix('"').delete_suffix('"')      
puts("Operation ID: " + operation_id)
while true
    sleep(1)
    result = apiInstance.get_operation_status(GroupDocsConversionCloud::GetOperationStatusRequest.new(operation_id))
    if result.status == "Finished"
        puts("Document converted: " + result.result[0].url)
        break
    elsif result.status == "Failed"
        puts("Operation failed: " + result.error)
        break
    else
        puts("Operation status: " + result.status)
    end
end
```

{{< /tab >}} {{< tab "Go" >}}

```go
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples
package async

import (
 "fmt"
 "time"

 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go/models"
)

func ConvertToPdfAsync() {

 settings := models.ConvertSettings{
  Format:     "pdf",
  FilePath:   "WordProcessing/password-protected.docx",
  OutputPath: "converted",
  LoadOptions: &models.WordProcessingLoadOptions{
   Password: "password",
  },
  ConvertOptions: &models.PdfConvertOptions{
   CenterWindow:         true,
   CompressImages:       false,
   DisplayDocTitle:      true,
   Dpi:                  1024,
   FitWindow:            false,
   FromPage:             1,
   Grayscale:            false,
   ImageQuality:         100,
   Linearize:            false,
   MarginTop:            5,
   MarginLeft:           5,
   Password:             "password",
   UnembedFonts:         true,
   RemoveUnusedStreams:  true,
   RemoveUnusedObjects:  true,
   RemovePdfaCompliance: false,
  },
 }

 operationId, _, err := config.Client.AsyncApi.StartConvertAndSave(config.Ctx, settings)

 if err != nil {
  fmt.Printf("ConvertToPdfAsync error: %v\n", err)
  return
 }

 fmt.Printf("Operation ID: %v\n", operationId)

 for {
  time.Sleep(1 * time.Second)
  result, _, err := config.Client.AsyncApi.GetOperationStatus(config.Ctx, operationId)
  if err != nil {
   fmt.Printf("ConvertToPdfAsync error: %v\n", err)
   return
  }
  if result.Status == models.StatusEnumFinished {
   fmt.Printf("Document converted successfully: %v\n", result.Result[0].Url)
   break
  }
  if result.Status == models.StatusEnumFailed {
   fmt.Printf("Document converted failed: %v\n", result.Error_)
   break
  }
  fmt.Printf("Operation status: %v\n", result.Status)
 }
}
```

{{< /tab >}} {{< /tabs >}}
