---
id: "convert-document"
url: "conversion/convert-document"
title: "Convert document"
productName: "GroupDocs.Conversion Cloud"
description: ""
keywords: ""
toc: True
---

This example demonstrates how to convert word processing document into pdf document with default options. There are steps that usage of GroupDocs.Conversion Cloud consists of:

1. Upload input document into cloud storage
1. Convert document
1. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this  for usage details.
Step 3 is not needed if the "OutputPath" option is not provided: the convert API method will return the converted document in the response body.

|Name|Description|Comment
|---|---|---
|FileInfo.FilePath|The path of the document, located in the storage.|Required.
|FileInfo.StorageName|Storage name|It could be omitted for default storage.
|FileInfo.Password|The password to open file|It should be specified only for password-protected documents.

## Resource URI

```HTTP POST ~/conversion```

[Swagger UI](https://reference.groupdocs.cloud/conversion/#/Convert/ConvertDocument) lets you call this REST API directly from the browser.

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
curl -v "https://api.groupdocs.cloud/v2.0/conversion/conversion" \
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
[
  {
    "name": "four-pages.pdf",
    "size": 76532,
    "path": "Output/four-pages.pdf",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/four-pages.pdf"
  }
]
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
var apiInstance = new ConvertApi(configuration);

// Prepare convert settings
var settings = new ConvertSettings
{
    FilePath = "WordProcessing/four-pages.docx",
    Format = "pdf",
    OutputPath = "converted"
};

// Convert to specified format
var response = apiInstance.ConvertDocument(new ConvertDocumentRequest(settings));
```

{{< /tab >}} {{< tab "Java" >}}

```java
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-java-samples
String MyClientSecret = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
String MyClientId = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

Configuration configuration = new Configuration(MyClientId, MyClientSecret);

// Create API instance
ConvertApi apiInstance = new ConvertApi(configuration);

// Prepare convert settings
ConvertSettings settings = new ConvertSettings();
settings.setFilePath("WordProcessing/four-pages.docx");
settings.setFormat("pdf");
settings.setOutputPath("converted");

List<StoredConvertedResult> result = apiInstance.convertDocument(new ConvertDocumentRequest(settings));
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

// Prepare convert settings
$settings = new Model\ConvertSettings();
$settings->setFilePath("WordProcessing/four-pages.docx");
$settings->setFormat("pdf");
$settings->setOutputPath("converted");

// Convert
$result = $apiInstance->convertDocument(new Requests\ConvertDocumentRequest($settings));
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-node-samples
global.conversion_cloud = require("groupdocs-conversion-cloud");

global.clientId = "XXXX-XXXX-XXXX-XXXX"; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
global.clientSecret = "XXXXXXXXXXXXXXXX"; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

global.convertApi = conversion_cloud.ConvertApi.fromKeys(clientId, clientSecret);

let settings = new conversion_cloud.ConvertSettings();
settings.filePath = "WordProcessing/four-pages.docx";
settings.format = "pdf";
settings.outputPath = "converted";

let result = await convertApi.convertDocument(new conversion_cloud.ConvertDocumentRequest(settings));
```

{{< /tab >}} {{< tab "Python" >}}

```python
# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-python-samples
import groupdocs_conversion_cloud

client_id = "XXXX-XXXX-XXXX-XXXX" = Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
client_secret = "XXXXXXXXXXXXXXXX" = Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

# Create necessary API instances
apiInstance = groupdocs_conversion_cloud.ConvertApi.from_keys(Common.client_id, Common.client_secret)

# Prepare convert settings
settings = groupdocs_conversion_cloud.ConvertSettings()
settings.file_path = "WordProcessing/four-pages.docx"
settings.format = "pdf"
settings.output_path = "converted"

# Convert
result = apiInstance.convert_document(groupdocs_conversion_cloud.ConvertDocumentRequest(settings))
```

{{< /tab >}} {{< tab "Ruby" >}}

```ruby

# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-ruby-samples
require 'groupdocs_conversion_cloud'

$client_id = "XXXX-XXXX-XXXX-XXXX" = Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
$client_secret = "XXXXXXXXXXXXXXXX" = Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

# Create necessary API instances
apiInstance = GroupDocsConversionCloud::ConvertApi.from_keys($client_id, $client_secret)

# Prepare convert settings
settings = GroupDocsConversionCloud::ConvertSettings.new
settings.file_path = "WordProcessing/four-pages.docx"
settings.format = "pdf"
settings.output_path = "converted"

# Convert
result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))
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

func ConvertToPdf() {

 settings := models.ConvertSettings{
  Format:     "pdf",
  FilePath:   "WordProcessing/four-pages.docx",
  OutputPath: "converted",
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

 result, _, err := config.Client.ConvertApi.ConvertDocument(config.Ctx, settings)

 if err != nil {
  fmt.Printf("ConvertToPdf error: %v\n", err)
  return
 }

 fmt.Printf("Document converted successfully: %v\n", result[0].Url)
}

```

{{< /tab >}} {{< /tabs >}}
