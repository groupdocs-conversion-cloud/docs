---
id: "features-overview"
url: "conversion/features-overview"
title: "Features Overview"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
---





# Overview #

GroupDocs.Conversion Cloud is a REST API that allows you to convert documents across a wide range of supported document types. Below, the shortlist of possible actions: 

## Document conversion ##

The main feature of GroupDocs.Conversion Cloud API is an ability to convert any document from a wide list of supported source document formats into any supported target format. All these conversions are possible without any additional software installed (like MS Office, Apache Open Office, Adobe Acrobat Reader, and others). 

GroupDocs.Conversion Cloud provides a flexible set of settings to customize the conversion process to fulfill your needs:

* Convert the whole document to the desired target format;
* Convert specific document page(s) or page range;
* Auto-detect source document format - document format will be detected on the fly (no document extension is required);
* Load source document with extended options - to specify a password for password-protected documents, for loading specific part of the document (for example specific sheet from Spreadsheet document), to show/hide document comments, etc.;
* Obtain all supported conversion formats list;
* Missing fonts replacement - the missing font(s) can be replaced with any provided font(s) instead;
* Add text or image watermarks to any page 
* and much more

## Document Information Extraction ##

GroupDocs.Conversion Cloud allows obtaining basic information about source document - file type, pages count, etc. Dependent on source file type some format-specific information can be extracted, for example:

* CAD - list of layers and layouts in a CAD document;
* Email – list of folders contained in an Outlook data file document;
* PDF – information about document printing restrictions;
* Project Management – project start and end dates.

# API Endpoint Groups Overview #

|#Endpoint Group|#Description
|Info|It contains endpoints for obtaining a list of formats supported by GroupDocs.Conversion.Cloud, and getting basic information about the document and its pages
|Convert|Contains main product endpoint for document conversion
|File|Contains endpoints for upload, download, copy, move, delete files in the storage
|Folder|Contains endpoints for creating, copy, move, delete folders in the storage
|Storage|Contains endpoints for obtaining storage information and file information

 

## Security and Authentication ##

The GroupDocs.Conversion Cloud API is secured and requires authentication. Two keys AppSID and AppKey are required for Authentication which can be created at the [Dashboard](http://dashboard.groupdocs.cloud/). Check [Authenticating API Requests]({{< ref "total/getting-started/overview-rest-api/authenticating-api-requests.md" >}})) article for a complete example. 

## SDKs ##

Checkout our GitHub [repository](https://github.com/groupdocs-conversion-cloud) for a complete list of GroupDocs.Conversion SDKs along with working examples, to get you started in no time. 

At the moment following SDKs are provided: 

* .NET ([Sources](https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-dotnet), [NuGet Package](https://www.nuget.org/packages/GroupDocs.Conversion-Cloud/))
* Java ([Sources](https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-java), [Jar](https://repository.groupdocs.cloud/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-conversion-cloud))
* PHP ([Sources](https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-php))

## API Explorer ##

The easiest way to try out our API right away in your browser! With the [GroupDocs.Conversion Cloud API explorer](https://apireference.groupdocs.cloud/conversion/). This is a collection of Swagger documentation for the GroupDocs Cloud APIs. You can get information about all the resources in the API. It also provides testing and interactivity to our API endpoint documentation.