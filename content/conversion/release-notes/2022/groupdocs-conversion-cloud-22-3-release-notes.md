---
id: "groupdocs-conversion-cloud-22-3-release-notes"
url: "conversion/groupdocs-conversion-cloud-22-3-release-notes"
title: "GroupDocs.Conversion Cloud 22.3 Release Notes"
productName: "GroupDocs.Conversion Cloud"
weight: 3
description: ""
keywords: ""
---

This page contains release notes for GroupDocs.Conversion Cloud 22.3

## Major Features ##

+ Added support of LoadOptions and ConvertOptions into ConvertDocumentDirect method
+ Improved documentation about using SDK with Docker version

## Full List of Issues Covering all Changes in this Release ##

|Key|Category|Summary
|---|---|---
|CONVERSIONCLOUD-458|Improvement|Support of LoadOptions and ConvertOptions in ConvertDocumentDirect API method
|CONVERSIONCLOUD-465|Bug|Documentation: How to use GroupDocs.Conversion Cloud SDKs with Docker Image

## Public API changes ##

Added new multipart/form-data parameters in the method PUT "~/conversion" :

|Property|Type|Description
|---|---|---
|loadOptions|LoadOptions|Input file load options
|convertOptions|ConvertOptions|Conversion options

Added new property in LoadOptions data structure:

|Property|Type|Description
|---|---|---
|LoadOptions.Format|string|The format of input file, ("docx", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions. In regular conversion, the input file format taken from the input file name and this field ignored.
