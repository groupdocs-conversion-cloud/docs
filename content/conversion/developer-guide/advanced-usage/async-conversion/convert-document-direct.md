---
id: "convert-document-direct-async"
url: "conversion/convert-document-direct-async"
title: "Convert document direct async"
productName: "GroupDocs.Conversion Cloud"
description: ""
keywords: ""
toc: True
---

This example demonstrates how to convert word processing document into pdf document asyncronously without using cloud storage. There are steps that usage of GroupDocs.Conversion Cloud consists of:

1. Start convert operation and get operation ID
1. Get operation status
1. Get operation result (converted document)

## Resource URI

```HTTP PUT ~/conversion/async```

[Swagger UI](https://reference.groupdocs.cloud/conversion/#/Async/StartConvert) lets you call this REST API directly from the browser.

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
-X PUT \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-H "Authorization: Bearer <jwt token>"
--data-binary "@path/to/file"
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

var fileStream = File.Open("four-pages.docx", FileMode.Open);
var request = new StartConvertRequest("pdf", fileStream);

// Convert to specified format
var operationId = apiInstance.StartConvert(request);

Console.WriteLine("Operation ID: " + operationId);

while (true) {
    Thread.Sleep(1000);
    var result = apiInstance.GetOperationStatus(new GetOperationStatusRequest(operationId));
    if (result.Status == OperationResult.StatusEnum.Finished)
    {
        var response = apiInstance.GetOperationResult(new GetOperationResultRequest(operationId));
        Console.WriteLine("Document converted successfully: " + response.Length);
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

File file = new File("four-pages.docx");

String operationId = apiInstance.startConvert(new StartConvertRequest("pdf", file, 1, 0));

System.out.println("Operation ID: " + operationId);

while(true) {
  Thread.sleep(1000);
  OperationResult result = apiInstance.getOperationStatus(new GetOperationStatusRequest(operationId));
  if (result.getStatus() == StatusEnum.FINISHED)
  {
    File convertedFile = apiInstance.getOperationResult(new GetOperationResultRequest(operationId));
    System.out.println("Document converted: " + convertedFile.length());
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

let file = fs.readFileSync('four-pages.docx');

let request = new conversion_cloud.StartConvertRequest("pdf", file);

let operationId = await asyncApi.startConvert(request);

console.log("Operaion ID: " + operationId);

while (true) {
  await (async function() {
    const sleep = ms => new Promise(resolve => setTimeout(resolve, ms))
    await sleep(1000)
    })()
  let result = await asyncApi.getOperationStatus(new conversion_cloud.GetOperationStatusRequest(operationId));
  if (result.status == conversion_cloud.OperationResult.StatusEnum.Finished)
  {
    var response = await asyncApi.getOperationResult(new conversion_cloud.GetOperationResultRequest(operationId));
    console.log("Document converted successfully: " + response.length);
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

// Prepare request
$filePath = dirname(realpath(__DIR__)) . 'four-pages.docx';
$request = new Requests\StartConvertRequest("pdf", $filePath);

// Convert
$operationId = $apiInstance->startConvert($request);
$operationId = trim($operationId, '"');
echo "Operaion ID: " . $operationId;
echo "\n";

while (true) {
    sleep(1);

    $result = $apiInstance->getOperationStatus(new Requests\GetOperationStatusRequest($operationId));
    if ($result->getStatus() == Model\OperationResult::STATUS_FINISHED)
    {
        $result = $apiInstance->getOperationResult(new Requests\GetOperationResultRequest($operationId));
        echo "Document converted successfully: " . $result->getSize();
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

# Prepare request
request = groupdocs_conversion_cloud.StartConvertRequest("pdf", "four-pages.docx")

# Convert
operation_id = apiInstance.start_convert(request)
print("Operaion ID: " + operation_id)

while (True):
    time.sleep(1)
    result = apiInstance.get_operation_status(groupdocs_conversion_cloud.GetOperationStatusRequest(operation_id))
    if (result.status == "Finished"):
        response = apiInstance.get_operation_result(groupdocs_conversion_cloud.GetOperationResultRequest(operation_id))
        print("Document converted: " + response)
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

# Prepare request
file = File.open("four-pages.docx", "r")
request = GroupDocsConversionCloud::StartConvertRequest.new("pdf", file)

# Convert
operation_id = apiInstance.start_convert(request)
operation_id = operation_id.delete_prefix('"').delete_suffix('"')      
puts("Operation ID: " + operation_id)
while true
    sleep(1)
    result = apiInstance.get_operation_status(GroupDocsConversionCloud::GetOperationStatusRequest.new(operation_id))
    if result.status == "Finished"
        response = apiInstance.get_operation_result(GroupDocsConversionCloud::GetOperationResultRequest.new(operation_id))
        puts("Document converted: " + (response.length).to_s)
        break
    elsif result.status == "Failed"
        puts("Operation failed: " + result.error)
        break
    else
        puts("Operation status: " + result.status)
    end
end
```

{{< /tab >}} {{< /tabs >}}
