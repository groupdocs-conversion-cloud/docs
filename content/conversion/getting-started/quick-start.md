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

Use the the **Client Id** and the **Client Secret** from the API app client you created in step one and replace it in the corresponding code. Below is an example demonstrating conversion docx document to pdf.

{{< alert style="info" >}}
The GitHub repository for [GroupDocs.Conversion Cloud](https://github.com/groupdocs-conversion-cloud) has a complete set of examples, demonstrating our API capabilities.
{{< /alert >}}

{{< tabs "example2">}} {{< tab "C#" >}}

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-dotnet-samples
string MyClientSecret = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
string MyClientId = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
var configuration = new Configuration(MyClientId, MyClientSecret);
  
// Create necessary API instances
var apiInstance = new ConvertApi(configuration);

// Prepare request
var fileStream = File.Open("..\\..\\..\\Resources\\WordProcessing\\password-protected.docx", FileMode.Open);
var loadOptions = new DocxLoadOptions();
loadOptions.Format = "docx";
loadOptions.Password = "password";
var request = new ConvertDocumentDirectRequest("pdf", fileStream, null, null, loadOptions);

// Convert to specified format
var response = apiInstance.ConvertDocumentDirect(request);
Console.WriteLine("Document converted successfully: " + response.Length);
```

{{< /tab >}} {{< tab "Java" >}}

```java
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-java-samples
String MyClientSecret = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
String MyClientId = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
Configuration configuration = new Configuration(MyClientId, MyClientSecret);
  
// Create API instance
ConvertApi apiInstance = new ConvertApi(configuration);

File file = new File("examples\\src\\main\\resources\\WordProcessing\\password-protected.docx");
DocxLoadOptions loadOptions = new DocxLoadOptions();
loadOptions.setFormat("docx");
loadOptions.setPassword("password");

ConvertDocumentDirectRequest request = new ConvertDocumentDirectRequest("pdf", file, 1, 0, loadOptions, null); // all pages

File result = apiInstance.convertDocumentDirect(request);

System.out.println("Document converted: " + result.length());
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

$apiInstance = new GroupDocs\Conversion\ConvertApi($configuration);

// Prepare request
$filePath = dirname(realpath(__DIR__)) . '\Resources\WordProcessing\password-protected.docx';
$loadOptions = new Model\DocxLoadOptions();
$loadOptions->setFormat("docx");
$loadOptions->setPassword("password");        
$request = new Requests\ConvertDocumentDirectRequest("pdf", $filePath, null, null, $loadOptions);

// Convert
$result = $apiInstance->convertDocumentDirect($request);

// Done
echo "Document converted: " . $result->getSize();
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-node-samples
global.conversion_cloud = require("groupdocs-conversion-cloud");

global.clientId = "XXXX-XXXX-XXXX-XXXX"; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
global.clientSecret = "XXXXXXXXXXXXXXXX"; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
global.convertApi = conversion_cloud.ConvertApi.fromKeys(clientId, clientSecret);

let file = fs.readFileSync('./Resources/WordProcessing/password-protected.docx');
let loadOptions = new conversion_cloud.DocxLoadOptions();
loadOptions.format = "docx";
loadOptions.password = "password";
let request = new conversion_cloud.ConvertDocumentDirectRequest("pdf", file, undefined, undefined, loadOptions);

let result = await convertApi.convertDocumentDirect(request);

console.log("Document converted: " + result.length);
```

{{< /tab >}} {{< tab "Python" >}}

```python
# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-python-samples
import groupdocs_conversion_cloud

client_id = "XXXX-XXXX-XXXX-XXXX" # Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
client_secret = "XXXXXXXXXXXXXXXX" # Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
# Create necessary API instances
apiInstance = groupdocs_conversion_cloud.ConvertApi.from_keys(Common.client_id, Common.client_secret)

# Prepare request
load_options = groupdocs_conversion_cloud.DocxLoadOptions()
load_options.format = "docx"
load_options.password = "password"
request = groupdocs_conversion_cloud.ConvertDocumentDirectRequest("pdf", "Resources\\WordProcessing\\password-protected.docx", None, None, load_options)

# Convert
result = apiInstance.convert_document_direct(request)

print("Document converted: " + result)
```

{{< /tab >}} {{< tab "Ruby" >}}

```ruby
# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-ruby-samples
require 'groupdocs_conversion_cloud'

$client_id = "XXXX-XXXX-XXXX-XXXX" # Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
$client_secret = "XXXXXXXXXXXXXXXX" # Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
# Create necessary API instances
apiInstance = GroupDocsConversionCloud::ConvertApi.from_keys($client_id, $client_secret)

# Prepare request
file = File.open("Resources\\WordProcessing\\password-protected.docx", "r")
load_options = GroupDocsConversionCloud::DocxLoadOptions.new
load_options.format = "docx"
load_options.password = "password"
request = GroupDocsConversionCloud::ConvertDocumentDirectRequest.new("pdf", file, nil, nil, load_options)

# Convert
result = apiInstance.convert_document_direct(request)

puts("Document converted: " + (result.length).to_s)
```

{{< /tab >}} {{< tab "Go" >}}

```go
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples
package convert

import (
 "fmt"
 "os"

 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
)

func ConvertToPdfDirect() {

 path := "./Resources/WordProcessing/four-pages.docx"
 localFile, err := os.Open(path)
 if err != nil {
  fmt.Printf("Failed to open file %s: %v\n", path, err)
  return
 }
 defer localFile.Close()

 result, _, err := config.Client.ConvertApi.ConvertDocumentDirect(config.Ctx, "pdf", localFile, nil)

 if err != nil {
  fmt.Printf("ConvertToPdfDirect error: %v\n", err)
  return
 }

 fi, _ := result.Stat()

 fmt.Printf("Document converted successfully: %v\n", fi.Size())
}
```

{{< /tab >}} {{< /tabs >}}