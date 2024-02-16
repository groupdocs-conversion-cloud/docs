---
id: "convert-nsf-document-to-eml"
url: "conversion/convert-nsf-document-to-eml"
title: "11. Convert nsf storage to eml documents"
productName: "GroupDocs.Conversion Cloud"
weight: 11
description: ""
keywords: ""
toc: True
---

This example demonstrates how to convert nsf storage into set of eml documents with load options.

There are steps that usage of GroupDocs.Conversion Cloud consists of:

   1. Upload input document into cloud storage
   2. Convert document
   3. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to this [GroupDocs.Conversion Cloud documentation]({{< ref "conversion/developer-guide/working-with-storage-api.md" >}}) for usage details.

Step 3 is not needed if the "OutputPath" option is not provided: the convert API method will return the converted document in the response body.

## Resource

|HTTP POST /conversion
|---

Swagger UI lets you call this REST API directly from the browser.

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
  'FilePath': 'sample.nsf',
  'Format': 'eml',
  'LoadOptions': {
    'Folder': 'Inbox',
    'Depth': 2
  },
  'OutputPath': 'Output'
}"

```

{{< /tab >}} {{< tab "Response" >}}

```json

[
  {
    "name": "sample_1.eml",
    "size": 55674,
    "path": "Output/sample_1.eml",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/sample_1.eml"
  },
  {
    "name": "sample_2.eml",
    "size": 53816,
    "path": "Output/sample_2.eml",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/sample_2.eml"
  }
  ...
]
```
{{< /tab >}} {{< /tabs >}}

## SDK examples

Using an SDK (API client) is the quickest way for a developer to speed up the development. An SDK takes care of a lot of low-level details of making requests and handling responses and lets you focus on writing code specific to your particular project. Check out our [GitHub repository](https://github.com/groupdocs-conversion-cloud) for a complete list of GroupDocs.Conversion Cloud SDKs along with working examples, to get you started in no time. Please check [Available SDKs]({{< ref "conversion/getting-started/available-sdks.md" >}}) article to learn how to add an SDK to your project.

{{< tabs "example2">}} {{< tab "C#" >}}

```csharp

// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-dotnet-samples
string MyClientSecret = ""; * Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
string MyClientId = ""; * Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

var configuration = new Configuration(MyClientId, MyClientSecret);

* Create necessary API instances
var apiInstance = new ConvertApi(configuration);

* Prepare convert settings
var settings = new ConvertSettings
{
    StorageName = Constants.MyStorage,
    FilePath = "sample.nsf",
    Format = "eml",
    LoadOptions = new PersonalStorageLoadOptions
    {
        Folder = "Inbox"
    },
    OutputPath = "converted"
};

* Convert to specified format
var response = apiInstance.ConvertDocument(new ConvertDocumentRequest(settings));

```

{{< /tab >}} {{< tab "Java" >}}

```java

// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-java-samples
String MyClientSecret = ""; * Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
String MyClientId = ""; * Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

Configuration configuration = new Configuration(MyClientId, MyClientSecret);

* Create API instance
ConvertApi apiInstance = new ConvertApi(configuration);

* Prepare convert settings
ConvertSettings settings = new ConvertSettings();
settings.setFilePath("sample.nsf");
settings.setFormat("eml");

PersonalStorageLoadOptions loadOptions = new PersonalStorageLoadOptions();
loadOptions.setFolder("Inbox");

settings.setLoadOptions(loadOptions);
settings.setOutputPath("converted");

List<StoredConvertedResult> result = apiInstance.convertDocument(new ConvertDocumentRequest(settings));

```

{{< /tab >}} {{< tab "PHP" >}}

```php

// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-php-samples
use GroupDocs\Conversion\Model;
use GroupDocs\Conversion\Model\Requests;

$ClientId = ""; * Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
$ClientSecret = ""; * Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

$configuration = new GroupDocs\Conversion\Configuration();
$configuration->setAppSid($ClientId);
$configuration->setAppKey($ClientSecret);

$apiInstance = new GroupDocs\Conversion\ConvertApi($configuration);

* Prepare convert settings
$settings = new Model\ConvertSettings();
$settings->setStorageName(Utils::$MyStorage);
$settings->setFilePath("sample.nsf");
$settings->setFormat("eml");

$loadOptions = new Model\PersonalStorageLoadOptions();
$loadOptions->setFolder("Inbox");

$settings->setLoadOptions($loadOptions);
$settings->setOutputPath("converted");

* Convert
$result = $apiInstance->convertDocument(new Requests\ConvertDocumentRequest($settings));

```

{{< /tab >}} {{< tab "Node.js" >}}

```json

// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-node-samples
global.conversion_cloud = require("groupdocs-conversion-cloud");

global.clientId = "XXXX-XXXX-XXXX-XXXX"; * Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
global.clientSecret = "XXXXXXXXXXXXXXXX"; * Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

global.convertApi = conversion_cloud.ConvertApi.fromKeys(clientId, clientSecret);

let settings = new conversion_cloud.ConvertSettings();
settings.filePath = "sample.nsf";
settings.format = "eml";

let loadOptions = new conversion_cloud.PersonalStorageLoadOptions();
loadOptions.folder = "Inbox";

settings.loadOptions = loadOptions;
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
settings.file_path = "sample.nsf"
settings.format = "eml"

loadOptions = groupdocs_conversion_cloud.PersonalStorageLoadOptions()
loadOptions.folder = "Inbox"

settings.load_options = loadOptions
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
settings.file_path = "sample.nsf"
settings.format = "eml"

loadOptions = GroupDocsConversionCloud::PersonalStorageLoadOptions.new
loadOptions.folder = "Inbox"

settings.load_options = loadOptions
settings.output_path = "converted"

# Convert
result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

```

{{< /tab >}} {{< /tabs >}}
