---
id: "convert-document-direct"
url: "conversion/convert-document-direct"
title: "Convert document without storage"
productName: "GroupDocs.Conversion Cloud"
description: ""
keywords: ""
---
### Introduction ###

This example demonstrates how to convert document without using cloud storage. Use this method to directly convert any document, using conversion options.

Method parameters:

|Name|Type|Description|Comment
|---|---|---|---
|format|string|Requested conversion format|Required.
|File|binary|Input file to convert|Form data, Required
|fromPage|integer|Page start conversion from|Default value : 1
|pagesCount|integer|Number of pages to convert|Default value : 0 (all pages)
|loadOptions|LoadOptions|Input file loading options|Form data
|convertOptions|ConvertOptions|Conversion options|Form data

## Resource URI ##

```HTTP PUT ~/conversion```

[Swagger UI](https://apireference-qa.groupdocs.cloud/v2/conversion/#/Convert/ConvertDocumentDirect) lets you call this REST API directly from the browser.

## cURL Example ##

{{< tabs tabTotal="2" tabID="1" tabName1="Request" tabName2="Response" >}} {{< tab tabNum="1" >}}

```html
// First get JSON Web Token
// Please get your Client Id and Client Secret from https://dashboard.groupdocs.cloud/applications. Kindly place Client Id in "client_id" and Client Secret in "client_secret" argument.
curl -v "https://api.groupdocs.cloud/connect/token" \
-X POST \
-d "grant_type=client_credentials&client_id=xxxx&client_secret=xxxx" \
-H "Content-Type: application/x-www-form-urlencoded" \
-H "Accept: application/json"
  
// cURL example to convert document
curl -v "https://api.groupdocs.cloud/v2.0/conversion/conversion" \
-X PUT \
-H "Content-Type: multipart/form-data" \
-H "Accept: application/json" \
-H "Authorization: Bearer <jwt token>"
--data-binary "@path/to/file"
```

{{< /tab >}} {{< tab tabNum="2" >}}

```html
Code 200
<binary file>
```

{{< /tab >}} {{< /tabs >}}

## SDKs ##

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us.

### SDK Examples ###

{{< tabs tabTotal="6" tabID="10" tabName1="C#" tabName2="Java" tabName3="PHP" tabName4="Node.js" tabName5="Python" tabName6="Ruby" >}} {{< tab tabNum="1" >}}

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

{{< /tab >}} {{< tab tabNum="2" >}}

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

{{< /tab >}} {{< tab tabNum="3" >}}

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

{{< /tab >}} {{< tab tabNum="4" >}}

```node
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

{{< /tab >}} {{< tab tabNum="5" >}}

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

{{< /tab >}} {{< tab tabNum="6" >}}

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

{{< /tab >}} {{< /tabs >}}
