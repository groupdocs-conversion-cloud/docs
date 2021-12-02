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
This example related to docker version of GroupDocs.Conversion-Cloud only
{{< /alert >}}

The metered license can be used in Docker version of GroupDocs.Conversion-Cloud.
Here is an example how to retrieve metered license consumption.

You can find more information about docker version atВ [How to self-host GroupDocs.Conversion Cloud with Docker]({{< ref "conversion/getting-started/self-host-with-docker.md" >}})

## Resource URI ##

```HTTP GET ~/conversion/consumption```

## cURL Example ##

{{< tabs tabTotal="2" tabID="1" tabName1="Request" tabName2="Response" >}} {{< tab tabNum="1" >}}

```html

* cURL example to get metered license consumption
curl -v "http://<base url>/v2.0/conversion/consumption" \
-X GET \
-H "Accept: application/json" \
-H "Authorization: Bearer <jwt token>"
```

{{< /tab >}} {{< tab tabNum="2" >}}

```html
{
  "credit": 487848,
  "quantity": 6061570985.37938
}
{{< /tab >}} {{< /tabs >}}

## Response ##

The response structure contains metered license consumption information:

| Name | Type | Comment
|---|---|---
|Credit|decimal|Amount of used credits.
|Quantity|decimal|Amount of MBs processed.
