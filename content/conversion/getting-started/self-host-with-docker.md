---
id: "self-host-with-docker"
url: "conversion/self-host-with-docker"
title: "How to self-host GroupDocs.Conversion Cloud with Docker"
productName: "GroupDocs.Conversion Cloud"
weight: 9
description: ""
keywords: ""
toc: True
---

[Docker](https://docs.docker.com/get-started/overview/) is an open platform that effectively solves three main tasks development, deployment, and running the applications. With Docker, you can isolate your applications from the infrastructure that simplifies software development and delivery. The main building blocs are images and containers. The image includes everything you need to run the application: code or binaries, runtime dependencies, file system. The container is an isolated process with additional features that you can interact with. The use of containers to deploy applications is called *containerization*.

[Docker Hub](https://hub.docker.com/) is a repository or library of the container images where you can share and find images.

## Self-hosting

The GroupDocs.Conversion Cloud Container Image available at [https://hub.docker.com/r/groupdocs/conversion-cloud](https://hub.docker.com/r/groupdocs/conversion-cloud) and enables users to self-host GroupDocs.Conversion Cloud.

To run the GroupDocs.Conversion Cloud in Docker the Docker itself should be installed on your machine.

### Install Docker

Check [Get Started](https://www.docker.com/get-started) section for Docker installation for your platform. After you installed and started Docker on your local machine we can run the container.

{{< alert style="info" >}}
When running Docker on Windows make sure to switch to Linux containers by clicking on Docker icon in the tray and selecting "Switch to Linux containers..." (see [https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers) for more details.)
{{< /alert >}}

### Run Container

Before running the container you can create two optional folders with files to process and custom fonts that we'll be mounted and available to GroupDocs.Conversion Cloud service when we start the container.

To run GroupDocs.Conversion Cloud in Docker type one of the following commands:

{{< alert style="info" >}}
In case you don't have license keys you can omit LICENSE_PUBLIC_KEY and LICENSE_PRIVATE_KEY parameters. Without license GroupDocs.Conversion will work in evaluation mode.
{{< /alert >}}

{{< tabs "example1">}} {{< tab "Windows (PowerShell)" >}}

```powershell

docker run `
      -p 8080:80 `
      -v "${pwd}/data:/data" `
      -e "LICENSE_PUBLIC_KEY#public_key" `
      -e "LICENSE_PRIVATE_KEY#private_key" `
      --name conversion_cloud `
      groupdocs/conversion-cloud

```

{{< /tab >}} {{< tab "Linux (bash)" >}}

```bash

docker run \
        -p 8080:80 \
        -v $(pwd)/data:/data \
        -e LICENSE_PUBLIC_KEY#public_key \
        -e LICENSE_PRIVATE_KEY#private_key \
        --name conversion_cloud \
        groupdocs/conversion-cloud

```

{{< /tab >}} {{< /tabs >}}

The Docker would download GroupDocs.Conversion Cloud image from Docker Hub and start a container. 

{{< alert style="info" >}}
I'm running Docker on Windows and will be using PowerShell to run the commands but the experience would be the same in case you're on Linux.
{{< /alert >}}

After the container is started you'll see the following messages that indicate that GroupDocs.Conversion Cloud service up and running.

![Docker container started](/conversion/images/start.png)

Now you can work with GroupDocs.Conversion Cloud which is hosted on your machine.

### Health-check

When the container and GroupDocs.Conversion Cloud started you can check service status by calling GET [http://localhost:8080/](http://localhost:8080/). The successful response status (200) will indicate that the service is up and running.

{{< tabs "example2">}} {{< tab "Windows (PowerShell)" >}}

```powershell
Invoke-WebRequest -Uri http://localhost:8080/
```

{{< /tab >}} {{< tab "Linux (bash)" >}}

```bash
curl -i http://localhost:8080/
```

{{< /tab >}} {{< /tabs >}}

At the following screenshot, I'm calling [http://localhost:8080/](http://localhost:8080/) in a separate Powershell window and response indicates that service is alive:

![Health check](/conversion/images/invoke.png)

### Using UI

After starting, you can use Swagger UI at [http://localhost:8080/swagger/](http://localhost:8080/swagger/) and explore the API. With Swagger UI you can call API methods in your browser.

![Swagger UI](/conversion/images/UI.png)

### Using SDK

We generate our SDKs in different languages so you may check if yours is available at [GitHub](https://github.com/groupdocs-conversion-cloud). SDKs require authentication, so predefined CLIENT_ID/CLIENT_SECRET parameters must be set.

{{< alert style="info" >}}
If you don't find your language in the SDK list, feel free to request for it on our [Support Forums](https://forum.groupdocs.cloud/c/conversion), or use raw REST API requests as you can find it [here](https://products.groupdocs.cloud/conversion/curl).
{{< /alert >}}

The authentication is required in case you're going to use SDK. To enable authentication set CLIENT_ID/CLIENT_SECRET parameters as it shown below.

{{< tabs "example3">}} {{< tab "Windows (PowerShell)" >}}

```powershell
docker run `
        -p 8080:80 `
        -v "${pwd}/data:/data" `
        -e "LICENSE_PUBLIC_KEY#public_key" `
        -e "LICENSE_PRIVATE_KEY#private_key" `
        -e "client_id=client_id" `
        -e "client_secret=client_secret" `
        --name conversion_cloud `
        groupdocs/conversion-cloud
```

{{< /tab >}} {{< tab "Linux (bash)" >}}

```bash
docker run \
        -p 8080:80 \
        -v $(pwd)/data:/data \
        -e LICENSE_PUBLIC_KEY#public_key \
        -e LICENSE_PRIVATE_KEY#private_key \
        -e client_id=client_id \
        -e client_secret=client_secret \
        --name conversion_cloud \
        groupdocs/conversion-cloud
```

{{< /tab >}} {{< /tabs >}}

Then, when using SDK, setup the api base url, as shown in examples below:

{{< tabs "example4">}} {{< tab "C#" >}}

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-dotnet-samples
string MyClientSecret = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
string MyClientId = ""; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

var configuration = new Configuration(MyClientId, MyClientSecret)
{
    ApiBaseUrl = "http://localhost:8080"
};

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

configuration.setApiBaseUrl("http://localhost:8080");

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
$configuration->setApiBaseUrl("http://localhost:8080");

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

const clientId = "XXXX-XXXX-XXXX-XXXX"; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
const clientSecret = "XXXXXXXXXXXXXXXX"; // Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
const config = new Configuration(clientId, clientSecret);
config.apiBaseUrl = "http://localhost:8080";

global.convertApi = conversion_cloud.ConvertApi.fromConfig(config);

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

configuration = Configuration(client_id, client_secret)
configuration.api_base_url = "http://localhost:8080"

# Create necessary API instances
apiInstance = groupdocs_conversion_cloud.ConvertApi.from_config(configuration)

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

client_id = "XXXX-XXXX-XXXX-XXXX" = Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud
client_secret = "XXXXXXXXXXXXXXXX" = Get ClientId and ClientSecret from https://dashboard.groupdocs.cloud

config = Configuration.new(client_id, client_secret)
config.api_base_url = "http://localhost:8080"

# Create necessary API instances
apiInstance = GroupDocsConversionCloud::ConvertApi.from_config(config)

# Prepare convert settings
settings = GroupDocsConversionCloud::ConvertSettings.new
settings.file_path = "WordProcessing/four-pages.docx"
settings.format = "pdf"
settings.output_path = "converted"

# Convert
result = apiInstance.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))
```

{{< /tab >}} {{< /tabs >}}

### Enable Google Cloud Storage

By default, a local storage used inside container for file operations. It's possible to connect a Google Cloud storage by setting GOOGLE_APPLICATION_CREDENTIALS and GOOGLE_STORAGE_BUCKET environment variables.

{{< tabs "example5">}} {{< tab "Windows (PowerShell)" >}}

```powershell
docker run `
    -p 8080:80 `
    -v "${pwd}/data:/data" `
    -e "GOOGLE_APPLICATION_CREDENTIALS=/data/key.json" `
    -e "GOOGLE_STORAGE_BUCKET=bucket_id" `
    --name conversion_cloud `
    groupdocs/conversion-cloud
```

{{< /tab >}} {{< tab "Linux (bash)" >}}

```bash
docker run \
    -p 8080:80 \    
    -v $(pwd)/data:/data \
    -e GOOGLE_APPLICATION_CREDENTIALS=/data/key.json \
    -e GOOGLE_STORAGE_BUCKET=bucket_id \
    --name conversion_cloud \
    groupdocs/conversion-cloud
```

{{< /tab >}} {{< /tabs >}}

### Enable AWS S3 Cloud Storage

By default, a local storage used inside container for file operations. It's possible to connect a AWS S3 Cloud storage by setting
environment variables:
| Name                | Description                                           |
| ------------------- | ----------------------------------------------------- |
| S3_STORAGE_BUCKET   | Bucket ID                                             |
| S3_STORAGE_ACCESS_KEY| S3 API Access Key                                    |
| S3_STORAGE_SECRET_KEY| S3 API Secret Key                                    |
| S3_STORAGE_REGION   | AWS S3 Region                                         |

{{< tabs "example6">}} {{< tab "Windows (PowerShell)" >}}

```powershell
docker run `
    -p 8080:80 `
    -v "${pwd}/data:/data" `
    -e "S3_STORAGE_BUCKET=main_bucket" `
    -e "S3_STORAGE_ACCESS_KEY=XXXXXXXXXXXXXXXXXXX" `
    -e "S3_STORAGE_SECRET_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" `
    -e "S3_STORAGE_REGION=us-west-2" `
    --name conversion_cloud `
    groupdocs/conversion-cloud
```

{{< /tab >}} {{< tab "Linux (bash)" >}}

```bash
docker run \
    -p 8080:80 \
    -v $(pwd)/data:/data \
    -e S3_STORAGE_BUCKET=main_bucket \
    -e S3_STORAGE_ACCESS_KEY=XXXXXXXXXXXXXXXXXXX \
    -e S3_STORAGE_SECRET_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX \
    -e S3_STORAGE_REGION=us-west-2" \
    --name conversion_cloud \
    groupdocs/conversion-cloud
```

{{< /tab >}} {{< /tabs >}}

### Stop Container

To stop the running Docker container, just use Ctrl+C in the same terminal where the container is running. Alternatively, you can stop the container by name.

```bash
docker stop conversion_cloud
```

### Automatic shutdown and restart

Since v24.2, an automatic shutdown feature was added. By default, if out-of memory exception occurs, the application and container stops gracefully.
To continue runnung the container in this case, an automatic restart option should be applied, when starting the container:

{{< tabs "example7">}} {{< tab "Windows (PowerShell)" >}}

```powershell
docker run `
    --restart always `
    -p 8080:80 `
    -v "${pwd}/data:/data" `
    --name conversion_cloud `
    groupdocs/conversion-cloud
```

{{< /tab >}} {{< tab "Linux (bash)" >}}

```bash
docker run \
    --restart always \
    -p 8080:80 \
    -v $(pwd)/data:/data \
    --name conversion_cloud \
    groupdocs/conversion-cloud
```

{{< /tab >}} {{< /tabs >}}

In addition, to have more control of the container stability, a new parameter was added: CONVERSIONS_LIMIT. When it set, the service counts the number of conversions,
and if the number exceeds the limit, the application and container stops gracefully. To continue runnung the container, as in previos case, an automatic restart option should be applied:

{{< tabs "example8">}} {{< tab "Windows (PowerShell)" >}}

```powershell
docker run `
    --restart always `
    -p 8080:80 `
    -v "${pwd}/data:/data" `
    -e "CONVERSIONS_LIMIT=100" `
    --name conversion_cloud `
    groupdocs/conversion-cloud
```

{{< /tab >}} {{< tab "Linux (bash)" >}}

```bash
docker run \
    --restart always \
    -p 8080:80 \
    -v $(pwd)/data:/data \
    -e CONVERSIONS_LIMIT=100 \
    --name conversion_cloud \
    groupdocs/conversion-cloud
```

{{< /tab >}} {{< /tabs >}}

## Licensing

GroupDocs.Conversion Cloud can be started in trial and licensed modes. When GroupDocs.Conversion Cloud is working in trial mode the following limitations are applied:

* You can convert only two first pages of the document
* Evaluation watermarks added to the output

You can find more information about evaluation at [Evaluate GroupDocs.Conversion]({{< ref "conversion/getting-started/evaluate-groupdocs-conversion-cloud.md" >}}).
