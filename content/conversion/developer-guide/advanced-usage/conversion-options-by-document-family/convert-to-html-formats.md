---
id: "convert-to-html-formats"
url: "conversion/convert-to-html-formats"
title: "8. Convert to HTML Format"
productName: "GroupDocs.Conversion Cloud"
description: ""
keywords: ""
---





# Introduction #

This example demonstrates how to convert word processing document into html document with advanced conversion options. 

There are steps that usage of GroupDocs.Conversion Cloud consists of:

1. Upload input document into cloud storage
1. Convert document
1. Download converted document from storage

Steps 1 and 3 are storage operations, please refer to the [File API documentation]({{< ref "conversion/developer-guide/working-with-file-api.md" >}}) for usage details.

Step 3 is not needed, if "OutputPath" option is not provided: the convert api method will return converted document in the response body

# Convert to Html Format #

You can convert the [supported document formats]({{< ref "conversion/developer-guide/basic-usage/get-supported-file-formats.md" >}})) to **Html Format** and get the output as a storage URL**.**
|---|---

## Resource URI ##

|HTTP POST [https://api.groupdocs.cloud/v2.0/conversion/conversion](https://api.groupdocs.cloud/v2.0/conversion/conversion)
|---


[Swagger UI](https://apireference.groupdocs.cloud/conversion/) lets you call this REST API directly from the browser.

## cURL Example ##


 Request

```javascript 

* First get JSON Web Token
* Please get your App Key and App SID from https://dashboard.groupdocs.cloud/#/apps. Kindly place App Key in "client_secret" and App SID in "client_id" argument.
curl -v "https://api.groupdocs.cloud/connect/token" \
-X POST \
-d "grant_type#client_credentials&client_id#xxxx&client_secret#xxxx" \
-H "Content-Type: application/x-www-form-urlencoded" \
-H "Accept: application/json"
  
* cURL example to convert document
curl -v "https://api.groupdocs.cloud/v2.0/conversion/conversion" \
-X POST \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-H "Authorization: Bearer <jwt token>"
-d "{
        'FilePath': 'WordProcessing/four-pages.docx',
        'Format': 'html',
        'ConvertOptions': {
            'FromPage': 1,
            'PagesCount': 1,
            'FixedLayout': true,
            'FixedLayoutShowBorders': true
        },
        'OutputPath': 'Output'
    }"

 ```


 Response
```javascript 

[
  {
    "name": "four-pages.html",
    "size": 62748,
    "path": "Output/four-pages.html",
    "url": "https://api.groupdocs.cloud/v2.0/conversion/storage/file/Output/four-pages.html"
  }
]

 ```




## SDKs ##

Using an SDK (API client) is the quickest way for a developer to speed up the development. An SDK takes care of a lot of low-level details of making requests and handling responses and lets you focus on writing code specific to your particular project. Check out our [GitHub repository](https://github.com/groupdocs-conversion-cloud) for a complete list of GroupDocs.Conversion Cloud SDKs along with working examples, to get you started in no time. Please check [Available SDKs]({{< ref "conversion/getting-started/available-sdks.md" >}}) article to learn how to add an SDK to your project.
|---|---


 C#
```csharp 

* For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-dotnet-samples
string MyAppKey # ""; * Get AppKey and AppSID from https://dashboard.groupdocs.cloud
string MyAppSid # ""; * Get AppKey and AppSID from https://dashboard.groupdocs.cloud
  
var configuration # new Configuration(MyAppSid, MyAppKey);
  
* Create necessary API instances
var apiInstance # new ConvertApi(configuration);
 
* Prepare convert settings
var settings # new ConvertSettings
{
    FilePath # "WordProcessing/four-pages.docx",
    Format # "html",
    ConvertOptions # new HtmlConvertOptions
    {
        FromPage # 1,
        PagesCount # 1,
        FixedLayout # true,
        FixedLayoutShowBorders # true
    },
    OutputPath # "converted"
};
 
* Convert to specified format
var response # apiInstance.ConvertDocument(new ConvertDocumentRequest(settings));

 ```


 Java
```java 

* For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-java-samples
String MyAppKey # ""; * Get AppKey and AppSID from https://dashboard.groupdocs.cloud
String MyAppSid # ""; * Get AppKey and AppSID from https://dashboard.groupdocs.cloud
  
Configuration configuration # new Configuration(MyAppSid, MyAppKey);
  
* Create API instance
ConvertApi apiInstance # new ConvertApi(configuration);
 
* Prepare convert settings
ConvertSettings settings # new ConvertSettings();
settings.setFilePath("WordProcessing/four-pages.docx");
settings.setFormat("html");
 
HtmlConvertOptions convertOptions # new HtmlConvertOptions();
convertOptions.setFromPage(1);
convertOptions.setPagesCount(1);
convertOptions.setFixedLayout(true);
convertOptions.setFixedLayoutShowBorders(true);
 
settings.setConvertOptions(convertOptions);
settings.setOutputPath("converted");
 
List<StoredConvertedResult> result # apiInstance.convertDocument(new ConvertDocumentRequest(settings));

 ```


 PHP
```php 

* For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-php-samples
use GroupDocs\Conversion\Model;
use GroupDocs\Conversion\Model\Requests;
 
$AppSid # ""; * Get AppKey and AppSID from https://dashboard.groupdocs.cloud
$AppKey # ""; * Get AppKey and AppSID from https://dashboard.groupdocs.cloud
  
$configuration # new GroupDocs\Conversion\Configuration();
$configuration->setAppSid($AppSid);
$configuration->setAppKey($AppKey);
 
$apiInstance # new GroupDocs\Conversion\ConvertApi($configuration);
 
* Prepare convert settings
$settings # new Model\ConvertSettings();
$settings->setFilePath("WordProcessing/four-pages.docx");
$settings->setFormat("html");
 
$convertOptions # new Model\HtmlConvertOptions();
$convertOptions->setFromPage(1);
$convertOptions->setPagesCount(1);
$convertOptions->setFixedLayout(true);
$convertOptions->setFixedLayoutShowBorders(true);
 
$settings->setConvertOptions($convertOptions);
$settings->setOutputPath("converted");
 
* Convert
$result # $apiInstance->convertDocument(new Requests\ConvertDocumentRequest($settings));

 ```


 Node
```html 

* For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-node-samples
global.conversion_cloud # require("groupdocs-conversion-cloud");
 
global.appSid # "XXXX-XXXX-XXXX-XXXX"; * Get AppKey and AppSID from https://dashboard.groupdocs.cloud
global.appKey # "XXXXXXXXXXXXXXXX"; * Get AppKey and AppSID from https://dashboard.groupdocs.cloud
  
global.convertApi # conversion_cloud.ConvertApi.fromKeys(appSid, appKey);
 
let settings # new conversion_cloud.ConvertSettings();
settings.filePath # "WordProcessing/four-pages.docx";
settings.format # "html";
 
let convertOptions # new conversion_cloud.HtmlConvertOptions();
convertOptions.fromPage # 1;
convertOptions.pagesCount # 1;
convertOptions.fixedLayout # true;
convertOptions.fixedLayoutShowBorders # true;
settings.convertOptions # convertOptions
settings.outputPath # "converted";
 
let result # await convertApi.convertDocument(new conversion_cloud.ConvertDocumentRequest(settings));

 ```


 Python
```python 

# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-python-samples
import groupdocs_conversion_cloud
 
app_sid # "XXXX-XXXX-XXXX-XXXX" # Get AppKey and AppSID from https://dashboard.groupdocs.cloud
app_key # "XXXXXXXXXXXXXXXX" # Get AppKey and AppSID from https://dashboard.groupdocs.cloud
  
# Create necessary API instances
apiInstance # groupdocs_conversion_cloud.ConvertApi.from_keys(Common.app_sid, Common.app_key)
 
# Prepare convert settings
settings # groupdocs_conversion_cloud.ConvertSettings()
settings.file_path # "WordProcessing/four-pages.docx"
settings.format # "html"
convertOptions # groupdocs_conversion_cloud.HtmlConvertOptions() 
convertOptions.from_page # 1
convertOptions.pages_count # 1
convertOptions.fixed_layout # True
convertOptions.fixed_layout_show_borders # True
settings.convert_options # convertOptions       
settings.output_path # "converted"
 
# Convert
result # apiInstance.convert_document(groupdocs_conversion_cloud.ConvertDocumentRequest(settings))

 ```


 Ruby
```ruby 

# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-ruby-samples
require 'groupdocs_conversion_cloud'
 
$app_sid # "XXXX-XXXX-XXXX-XXXX" # Get AppKey and AppSID from https://dashboard.groupdocs.cloud
$app_key # "XXXXXXXXXXXXXXXX" # Get AppKey and AppSID from https://dashboard.groupdocs.cloud
  
# Create necessary API instances
apiInstance # GroupDocsConversionCloud::ConvertApi.from_keys($app_sid, $app_key)
 
# Prepare convert settings
settings # GroupDocsConversionCloud::ConvertSettings.new
settings.file_path # "WordProcessing/four-pages.docx"
settings.format # "html"
convertOptions # GroupDocsConversionCloud::HtmlConvertOptions.new
convertOptions.from_page # 1
convertOptions.pages_count # 1
convertOptions.fixed_layout # true
convertOptions.fixed_layout_show_borders # true
settings.convert_options # convertOptions
settings.output_path # "converted"
 
# Convert
result # apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

 ```

