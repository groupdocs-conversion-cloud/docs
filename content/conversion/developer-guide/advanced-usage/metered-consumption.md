---
id: "metered-consumption"
url: "conversion/metered-consumption"
title: "Getting metered license consumption"
productName: "GroupDocs.Conversion Cloud"
description: ""
keywords: ""
---
### Introduction ###

{{< alert style="info" >}}
This example related to Self-hosted version of GroupDocs.Conversion-Cloud only
{{< /alert >}}

The metered license can be used in Self-hosted version of GroupDocs.Conversion-Cloud.
Here is an example how to retrieve metered license consumption.

You can find more information about Self-hosted version at [How to self-host GroupDocs.Conversion Cloud with Docker]({{< ref "conversion/getting-started/self-host-with-docker.md" >}})

## Resource URI ##

```HTTP GET ~/conversion/consumption```

## cURL Example ##

{{< tabs "example1">}} {{< tab "Request" >}}

```bash

# cURL example to get metered license consumption
curl -v "http://<base url>/v2.0/conversion/consumption" \
-X GET \
-H "Accept: application/json" \
-H "Authorization: Bearer <jwt token>"
```

{{< /tab >}} {{< tab "Response" >}}

```json
{
  "credit": 487848,
  "quantity": 6061570985.37938
}
```
{{< /tab >}} {{< /tabs >}}

## Response ##

The response structure contains metered license consumption information:

| Name | Type | Comment
|---|---|---
|Credit|decimal|Amount of used credits.
|Quantity|decimal|Amount of MBs processed.

## SDKs ##

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API [SDKs](https://github.com/groupdocs-conversion-cloud) in many development languages in order to make it easier to integrate with us.

### SDK Examples ###

{{< tabs "example2">}} {{< tab "C#" >}}

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-dotnet-samples
string MyClientSecret = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
string MyClientId = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
var configuration = new Configuration(MyClientId, MyClientSecret);
  
// Create necessary API instances
var apiInstance = new LicenseApi(configuration);

var response = apiInstance.GetConsumptionCredit();

Console.WriteLine($"Credits: {response.Credit}");
Console.WriteLine($"Quantity: {response.Quantity}");
```

{{< /tab >}} {{< tab "Java" >}}

```java
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-java-samples
String MyClientSecret = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
String MyClientId = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
Configuration configuration = new Configuration(MyClientId, MyClientSecret);
  
// Create API instance
LicenseApi apiInstance = new LicenseApi(configuration);

ConsumptionResult response = apiInstance.getConsumptionCredit();
System.out.println("Credit: " + response.getCredit());
System.out.println("Quantity: " + response.getQuantity());
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

$apiInstance = new GroupDocs\Conversion\LicenseApi($configuration);

// Get consumption
$result = $apiInstance->getConsumptionCredit();

// Done
echo "Credit: " . $result->getCredit();
```

{{< /tab >}} {{< tab "Node.js" >}}

```js
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-node-samples
global.conversion_cloud = require("groupdocs-conversion-cloud");

global.clientId = "XXXX-XXXX-XXXX-XXXX"; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
global.clientSecret = "XXXXXXXXXXXXXXXX"; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
global.licenseApi = conversion_cloud.LicenseApi.fromKeys(clientId, clientSecret);

let response = await licenseApi.getConsumptionCredit();
console.log("GetLicenseConsumption: Credit = " + response.credit);
```

{{< /tab >}} {{< tab "Python" >}}

```python
# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-python-samples
import groupdocs_conversion_cloud

client_id = "XXXX-XXXX-XXXX-XXXX" # Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
client_secret = "XXXXXXXXXXXXXXXX" # Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
# Create necessary API instances
apiInstance = groupdocs_conversion_cloud.LicenseApi.from_keys(Common.client_id, Common.client_secret)

# Get consumption
result = apiInstance.get_consumption_credit()

print("Credit: " + result.credit)
```

{{< /tab >}} {{< tab "Ruby" >}}

```ruby
# For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-ruby-samples
require 'groupdocs_conversion_cloud'

$client_id = "XXXX-XXXX-XXXX-XXXX" # Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
$client_secret = "XXXXXXXXXXXXXXXX" # Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
  
# Create necessary API instances
apiInstance = GroupDocsConversionCloud::LicenseApi.from_keys($client_id, $client_secret)

# Get consumption
result = apiInstance.get_consumption_credit()

puts("Credit: " + result.credit)
```

{{< /tab >}} {{< /tabs >}}
