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

Use the the **Client Id** and the **Client Secret** from the API app client you created in step one and replace it in the corresponding code. Below is an example demonstrating using the Formats API to get all supported file formats in GroupDocs.Conversion Cloud.

{{< alert style="info" >}}
The GitHub repository for [GroupDocs.Conversion Cloud](https://github.com/groupdocs-conversion-cloud) has a complete set of examples, demonstrating our API capabilities.
{{< /alert >}}

{{< tabs "example1">}} {{< tab "C#" >}}

{{< gist groupdocscloud 2a7a7a2afe748942748c4b5ae066b233 Conversion_CSharp_Get_Supported_Formats.cs >}}

{{< /tab >}} {{< tab "PHP" >}}

{{< gist groupdocscloud 52c581e5d4cbfafe60dc0f41a88a8c55 Conversion_Php_Get_Supported_Formats.php >}}

{{< /tab >}} {{< tab "Java" >}}

{{< gist groupdocscloud f3869a8f33daa0fe48b22798738a03af Conversion_Java_Get_Supported_Formats.java >}}

{{< /tab >}} {{< tab "Ruby" >}}

{{< gist groupdocscloud ecd63c8e6e188b11de12a95929fcccc6 Conversion_Ruby_Get_All_Supported_Formats.rb >}}

{{< /tab >}} {{< tab "Node.js" >}}

{{< gist groupdocscloud 0b518025a03dae691c9d9421153a9650 Conversion_Node_Get_All_Supported_Formats.js >}}

{{< /tab >}} {{< tab "Python" >}}

{{< gist groupdocscloud c5f65caff3accc22d8dc1d9da2dc735c Conversion_Python_Get_All_Supported_Formats.py >}}

{{< /tab >}} {{< tab "Go" >}}

```go
//  For complete examples and data files, please go to https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples
package info

import (
 "fmt"

 "github.com/antihax/optional"
 conversion "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go"
 "github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-go-samples/config"
)

func GetSupportedConversions() {

 opts := &conversion.InfoApiGetSupportedConversionTypesOpts{
  Format: optional.NewString("docx"),
 }

 response, _, err := config.Client.InfoApi.GetSupportedConversionTypes(config.Ctx, opts)

 if err != nil {
  fmt.Printf("GetSupportedConversions error: %v\n", err)
  return
 }

 fmt.Printf("response.length: %v\n", len(response))
}
```

{{< /tab >}} {{< /tabs >}}
