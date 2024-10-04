---
id: "convert-using-custom-font"
url: "conversion/convert-using-custom-font"
title: "Convert document using custom font"
productName: "GroupDocs.Conversion Cloud"
description: ""
keywords: ""
toc: True
---

This example demonstrates how to convert document that use custom font, or non-standard font. Fonts should be uploaded into cloud storage before conversion. Then put path to fonts into conversion options.

There are steps that usage of GroupDocs.Conversion Cloud consists of:

1. Upload input document and fonts into cloud storage
1. Convert document
1. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this GroupDocs.Storage Cloud documentation for usage details.

Step 3 is not needed, if "OutputPath" option is not provided: the convert api method will return converted document in the response body.

## Resource URI

```HTTP POST ~/conversion```

[Swagger UI](https://apireference.groupdocs.cloud/watermark/#/Info/GetInfo) lets you call this REST API directly from the browser.

## cURL example

{{< tabs "example1">}} {{< tab "Request" >}}

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
        'FilePath': 'Presentation/uses-custom-font.pptx',
        'Format': 'pdf',        
        'OutputPath': 'Output',
        'FontsPath': 'font/ttf'
    }"

```

{{< /tab >}} {{< tab "Response" >}}

```json
[
  {
    "name": "uses-custom-font.pdf",
    "size": 76532,
    "path": "Output/uses-custom-font.pdf",
    "url": "https://api-qa.groupdocs.cloud/v2.0/conversion/storage/file/Output/uses-custom-font.pdf"
  }
]
```

{{< /tab >}} {{< /tabs >}}

## SDK examples

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us. 

{{< tabs "example2">}} {{< tab "C#" >}}

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
    StorageName = Constants.MyStorage,
    FilePath = "Presentation/uses-custom-font.pptx",
    Format = "pdf",
    OutputPath = "converted",
    FontsPath = "font/ttf"
};
 
// Convert to specified format
var response = apiInstance.ConvertDocument(new ConvertDocumentRequest(settings));
Console.WriteLine("Document converted successfully: " + response[0].Url);
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
settings.setFilePath("Presentation/uses-custom-font.pptx");
settings.setFormat("pdf");
settings.setOutputPath("converted");
settings.setFontsPath("font/ttf");
 
List<StoredConvertedResult> result = apiInstance.convertDocument(new ConvertDocumentRequest(settings));
 
System.out.println("Document converted: " + result.get(0).getUrl());
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
$settings->setStorageName(Utils::$MyStorage);
$settings->setFilePath("Presentation/uses-custom-font.pptx");
$settings->setFormat("pdf");
$settings->setOutputPath("converted");
$settings->setFontsPath("font/ttf");
 
// Convert
$result = $apiInstance->convertDocument(new Requests\ConvertDocumentRequest($settings));
 
// Done
echo "Document converted: " . $result[0]->getUrl();
echo "\n";
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-node-samples
global.conversion_cloud = require("groupdocs-conversion-cloud");
 
global.appSid = "XXXX-XXXX-XXXX-XXXX"; // Get AppKey and AppSID from https://dashboard.groupdocs.cloud
global.appKey = "XXXXXXXXXXXXXXXX"; // Get AppKey and AppSID from https://dashboard.groupdocs.cloud
  
global.convertApi = conversion_cloud.ConvertApi.fromKeys(appSid, appKey);
 
let settings = new conversion_cloud.ConvertSettings();
settings.filePath = "Presentation/uses-custom-font.pptx";
settings.format = "pdf";
settings.outputPath = "converted";
settings.fontsPath = "font/ttf";
 
let result = await convertApi.convertDocument(new conversion_cloud.ConvertDocumentRequest(settings));
 
console.log("Document converted: " + result[0].url);
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
settings.file_path = "Presentation/uses-custom-font.pptx"
settings.format = "pdf"       
settings.output_path = "converted"
settings.fonts_path = "font/ttf"
 
# Convert
result = apiInstance.convert_document(groupdocs_conversion_cloud.ConvertDocumentRequest(settings))
 
print("Document converted: " + result[0].url)
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
settings.file_path = "Presentation/uses-custom-font.pptx"
settings.format = "pdf"       
settings.output_path = "converted"
settings.fonts_path = "font/ttf"
 
# Convert
result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))
 
puts("Document converted: " + result[0].url)
```

{{< /tab >}} {{< tab "Go" >}}

```go
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples
package common

import (
 "fmt"

 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go/models"
)

func ConvertUsingCustomFont() {

 settings := models.ConvertSettings{
  Format:     "pdf",
  FilePath:   "Presentation/uses-custom-font.pptx",
  OutputPath: "converted",
  FontsPath:  "font/ttf",
 }

 result, _, err := config.Client.ConvertApi.ConvertDocument(config.Ctx, settings)

 if err != nil {
  fmt.Printf("ConvertUsingCustomFont error: %v\n", err)
  return
 }

 fmt.Printf("Document converted successfully: %v\n", result[0].Url)
}
```

{{< /tab >}} {{< /tabs >}}
