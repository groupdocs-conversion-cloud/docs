---
id: "license-information"
url: "conversion/license-information"
title: "Getting metered license-information"
productName: "GroupDocs.Conversion Cloud"
description: ""
keywords: ""
---
### Introduction ###

{{< alert style="info" >}}
This example related to Self-hosted version of GroupDocs.Conversion-Cloud only
{{< /alert >}}

The metered license can be used in Self-hosted version of GroupDocs.Conversion-Cloud.
Here is an example how to retrieve metered license information.

You can find more information about Self-hosted version at [How to self-host GroupDocs.Conversion Cloud with Docker]({{< ref "conversion/getting-started/self-host-with-docker.md" >}})

## Resource URI ##

```HTTP GET ~/conversion/license```

## cURL Example ##

{{< tabs tabTotal="2" tabID="1" tabName1="Request" tabName2="Response" >}} {{< tab tabNum="1" >}}

```html

* cURL example to get metered license information
curl -v "http://<base url>/v2.0/conversion/license" \
-X GET \
-H "Accept: application/json" \
-H "Authorization: Bearer <jwt token>"
```

{{< /tab >}} {{< tab tabNum="2" >}}

```html
{
  "isLicensed": true
}
{{< /tab >}} {{< /tabs >}}

## Response ##

The response structure contains metered license information:

| Name | Type | Comment
|---|---|---
|isLicensed|bool|True, if metered license is set and active, false when license switched to trial mode or not applied.

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
var apiInstance = new LicenseApi(configuration);

var response = apiInstance.GetLicenseInfo();

Console.WriteLine($"Is licensed: {response.IsLicensed}");
```

{{< /tab >}} {{< tab tabNum="2" >}}

```java
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-java-samples
String MyClientSecret = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
String MyClientId = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
Configuration configuration = new Configuration(MyClientId, MyClientSecret);
  
// Create API instance
LicenseApi apiInstance = new LicenseApi(configuration);

LicenseInfo response = apiInstance.getLicenseInfo();
System.out.println("Is licensed: " + response.getIsLicensed());
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

$apiInstance = new GroupDocs\Conversion\LicenseApi($configuration);

// Get info
$result = $apiInstance->getLicenseInfo();

// Done
echo "Is licensed: " . $result->is_licensed();
```

{{< /tab >}} {{< tab tabNum="4" >}}

```node
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-node-samples
global.conversion_cloud = require("groupdocs-conversion-cloud");

global.clientId = "XXXX-XXXX-XXXX-XXXX"; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
global.clientSecret = "XXXXXXXXXXXXXXXX"; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
global.licenseApi = conversion_cloud.LicenseApi.fromKeys(clientId, clientSecret);

let response = await licenseApi.getLicenseInfo();
console.log("isLicensed = " + response.isLicensed);
```

{{< /tab >}} {{< tab tabNum="5" >}}

```python
# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-python-samples
import groupdocs_conversion_cloud

client_id = "XXXX-XXXX-XXXX-XXXX" # Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
client_secret = "XXXXXXXXXXXXXXXX" # Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
# Create necessary API instances
apiInstance = groupdocs_conversion_cloud.LicenseApi.from_keys(Common.client_id, Common.client_secret)

# Get info
result = apiInstance.get_license_info()

print("isLicensed: " + result.isLicensed)
```

{{< /tab >}} {{< tab tabNum="6" >}}

```ruby
# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-ruby-samples
require 'groupdocs_conversion_cloud'

$client_id = "XXXX-XXXX-XXXX-XXXX" # Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
$client_secret = "XXXXXXXXXXXXXXXX" # Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
# Create necessary API instances
apiInstance = GroupDocsConversionCloud::LicenseApi.from_keys($client_id, $client_secret)

# Get info
result = apiInstance.get_license_info()

puts("isLicensed: " + result.isLicensed)
```

{{< /tab >}} {{< /tabs >}}
