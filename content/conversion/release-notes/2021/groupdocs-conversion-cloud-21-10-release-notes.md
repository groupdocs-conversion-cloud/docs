---
id: "groupdocs-conversion-cloud-21-10-release-notes"
url: "conversion/groupdocs-conversion-cloud-21-10-release-notes"
title: "GroupDocs.Conversion Cloud 21.10 Release Notes"
productName: "GroupDocs.Conversion Cloud"
weight: 3
description: ""
keywords: ""
---

This page contains release notes for GroupDocs.Conversion Cloud 21.10

## Major Features ##

* Added new options

## Full List of Issues Covering all Changes in this Release ##

|Key|Category|Summary
|---|---|---
|CONVERSIONCLOUD-393|Bug|PDF to DOCX conversion adds a frame around paragraphs
|CONVERSIONCLOUD-421|Feature|Watermark string to auto scale depending on the length of the string

## Public API changes ##

### Added option *WordProcessingConvertOptions.PdfRecognitionMode* ###

* Description: *Recognition mode when converting from pdf*
* Type: *Enum*
* Values: *Textbox* [Default], *Flow*
* Request options example:

    ```javasctipt
    {
        "FilePath": "document.pdf",
        "Format": "docx",
        "ConvertOptions": {
            "PdfRecognitionMode": "Flow",
        },
        "OutputPath": "document.docx"
    }
    ```

### Added option *WatermarkOptions.AutoAlign* ###

* Description: *Auto scale the watermark. If the value is true the font size and the position is automatically calculated to fit the page size.*
* Type: *Boolean*
* Values: *false* [Default], *true*
* Request options example:

    ```javasctipt
    {
        "FilePath": "document.pdf",
        "Format": "jpg",
        "ConvertOptions": {
            "WatermarkOptions": {
                "Text": "Watermark",
                "AutoAlign": true
            }
        },
        "OutputPath": "preview.jpg"
    }
    ```
