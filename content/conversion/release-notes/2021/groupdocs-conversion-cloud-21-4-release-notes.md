---
id: "groupdocs-conversion-cloud-21-4-release-notes"
url: "conversion/groupdocs-conversion-cloud-21-4-release-notes"
title: "GroupDocs.Conversion Cloud 21.4 Release Notes"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
---

This page contains release notes for GroupDocs.Conversion Cloud 21.4

## Major Features ##

* Introduced possibility to convert documents using custom fonts
* Added watermark font customization options

## Full List of Issues Covering all Changes in this Release ##

|Key|Category|Summary
|---|---|---
|CONVERSIONCLOUD-403|Feature |Support of MS PGothic fonts in Conversion
|CONVERSIONCLOUD-415|Bug |Support of different Watermark Font Format

## Public API changes ##

|Property|Type|Description
|---|---|---
|ConvertSettings.FontsPath|string |The path to directory containing custom fonts in storage
|WatermarkOptions.Bold|boolean |Watermark font bold style if text watermark is applied
|WatermarkOptions.Italic|boolean |Watermark font italic style if text watermark is applied
