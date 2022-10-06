---
id: "groupdocs-conversion-cloud-22-10-release-notes"
url: "conversion/groupdocs-conversion-cloud-22-10-release-notes"
title: "GroupDocs.Conversion Cloud 22.10 Release Notes"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
---

This page contains release notes for GroupDocs.Conversion Cloud 22.10

## Major Features ##

+ Merged Microservice and DockerHub versions
+ Added new features

## Full List of Issues Covering all Changes in this Release ##

|Key|Category|Summary
|---|---|---
|CONVERSIONCLOUD-484|Enhancement|Merge Microservice and DockerHub version
|CONVERSIONCLOUD-485|Feature|NSF to EML files conversion support
|CONVERSIONCLOUD-487|Feature|Add support for 3rd party storages into API and update documentation

## Public API changes ##

Added new PersonalStorageLoadOptions data structure:

|Property|Type|Description
|---|---|---
|PersonalStorageLoadOptions.Folder|string|Folder which to be processed Default is Inbox
|PersonalStorageLoadOptions.Depth|int|Controls how many levels in depth to perform conversion

For more information, see example how to [convert nsf storage to eml documents]({{< ref "conversion/developer-guide/advanced-usage/load-options-by-document-family/convert-nsf-document-to-eml.md" >}})
