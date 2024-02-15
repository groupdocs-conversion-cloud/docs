---
id: "convertoptions"
url: "conversion/convertoptions"
title: "ConvertOptions"
productName: "GroupDocs.Conversion Cloud"
weight: 1
description: ""
keywords: ""
toc: True
---

## Format specific convert options

### xls, xlsx, xlsx, xlsm, xlsb, xlsb, ods, xltx, xltm, tsv

|Properties|Description
|---|---|---
|format|Convert format
|password|Document password
|zoom|Document zoom
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|usePdf|Use pdf as intermediate format
|watermarkOptions|Watermark options to be applied during conversion

```json
{
  "format": "{format}",
  "password": "Pass123",
  "zoom": 100,
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "usePdf": false,
  "watermarkOptions": [{options}]
}
```

### csv

|Properties|Description
|---|---|---
|format|Convert format
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|usePdf|Use pdf as intermediate format

```json
{
  "format": "{format}",
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "usePdf": false,
  "watermarkOptions": [{options}]
}
```

### html

|Properties|Description
|---|---|---
|format|Convert format
|fixedLayout|Document password
|zoom|Document zoom
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|usePdf|Use pdf as intermediate format
|watermarkOptions|Watermark options to be applied during conversion

```json
{
  "format": "{format}",
  "fixedLayout": true,
  "zoom": 100,
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "usePdf": false,
  "watermarkOptions": [{options}]
}
```

### png, gif, bmp, ico

|Properties|Description
|---|---|---
|format|Convert format
|width|Width of image after conversion
|height|Height of image after conversion
|horizontalResolution|Desired image horizontal resolution after conversion.
|verticalResolution|Desired image vertical resolution after conversion.
|grayscale|Convert to grayscale image
|rotateAngle|Image conversion angle
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|usePdf|Use pdf as intermediate format
|watermarkOptions|Watermark options to be applied during conversion

```json
{
  "format": "{format}",
  "width": 1920,
  "height": 1080,
  "horizontalResolution":96,
  "verticalResolution": 72,
  "grayscale": false,
  "rotateAngle": 0,
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "usePdf": false,
  "watermarkOptions": [{options}]
}
```

### jpg, jpeg, jp2

|Properties|Description
|---|---|---
|format|Convert format
|width|Width of image after conversion
|height|Height of image after conversion
|horizontalResolution|Desired image horizontal resolution after conversion.
|verticalResolution|Desired image vertical resolution after conversion.
|quality|Desired image quality when converting to Jpeg
|grayscale|Convert to grayscale image
|rotateAngle|Image conversion angle
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|usePdf|Use pdf as intermediate format
|watermarkOptions|Watermark options to be applied during conversion

```json
{
  "format": "{format}",
  "width": 1920,
  "height": 1080,
  "horizontalResolution":96,
  "verticalResolution": 72,
  "quality": 95,
  "grayscale": false,
  "rotateAngle": 0,
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "usePdf": false,
  "watermarkOptions": [{options}]
}
```

### tiff, tif

|Properties|Description
|---|---|---
|format|Convert format
|width|Width of image after conversion
|height|Height of image after conversion
|horizontalResolution|Desired image horizontal resolution after conversion.
|verticalResolution|Desired image vertical resolution after conversion.
|compression|Tiff compression
|grayscale|Convert to grayscale image
|rotateAngle|Image conversion angle
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|usePdf|Use pdf as intermediate format
|watermarkOptions|Watermark options to be applied during conversion

```json
{
  "format": "{format}",
  "width": 1920,
  "height": 1080,
  "horizontalResolution":96,
  "verticalResolution": 72,
  "compression": "lzw",
  "grayscale": false,
  "rotateAngle": 0,
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "usePdf": false,
  "watermarkOptions": [{options}]
}
```

### psd

|Properties|Description
|---|---|---
|format|Convert format
|width|Width of image after conversion
|height|Height of image after conversion
|horizontalResolution|Desired image horizontal resolution after conversion.
|verticalResolution|Desired image vertical resolution after conversion.
|channelBitsCount|Bits count per color channel
|channelsCount|Color channels count
|colorMode|Psd color mode
|compressionMethod|Psd compression method
|version|Psd file version
|grayscale|Convert to grayscale image
|rotateAngle|Image conversion angle
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|usePdf|Use pdf as intermediate format
|watermarkOptions|Watermark options to be applied during conversion

```json
{
  "format": "psd",
  "width": 1920,
  "height": 1080,
  "horizontalResolution":96,
  "verticalResolution": 72,
  "channelBitCount": 32,
  "channelsCount": 3,
  "colorMode": "rgb",
  "compressionMethod": "rle",
  "version": 12,
  "grayscale": false,
  "rotateAngle": 0,
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "usePdf": false,
  "watermarkOptions": [{options}]
}
```

### webp

|Properties|Description
|---|---|---
|format|Convert format
|width|Width of image after conversion
|height|Height of image after conversion
|horizontalResolution|Desired image horizontal resolution after conversion.
|verticalResolution|Desired image vertical resolution after conversion.
|lossless|Use lossless compression
|grayscale|Convert to grayscale image
|rotateAngle|Image conversion angle
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|usePdf|Use pdf as intermediate format
|watermarkOptions|Watermark options to be applied during conversion

```json
{
  "format": "webp",
  "width": 1920,
  "height": 1080,
  "horizontalResolution":96,
  "verticalResolution": 72,
  "lossless": true,
  "grayscale": false,
  "rotateAngle": 0,
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "usePdf": false,
  "watermarkOptions": [{options}]
}
```

### pdf

|Properties|Description
|---|---|---
|format|Convert format
|width|Width of image after conversion
|height|Height of image after conversion
|dpi|Document DPI
|password|Document password
|marginTop|Document top margin
|marginBottom|Document bottom margin
|marginLeft|Document left margin
|marginRight|Document right margin
|pdfFormat|Document pdf format
|removePdfACompliance|Remove Pdf-A compliance
|zoom|Document zoom level
|linearize|Linearize document
|linkDuplicateStreams|Link duplicate streams
|removeUnusedObjects|Remove unused objects
|removeUnusedStreams|Remove unused streams
|compressImages|Compress all images to specified image quality
|imageQuality|Image quality
|unembedFonts|Make fonts not embedded
|grayscale|Convert to grayscale pdf
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|usePdf|Use pdf as intermediate format
|watermarkOptions|Watermark options to be applied during conversion

```json
{
  "format": "pdf",
  "width": 1920,
  "height": 1080,
  "dpi": 96,
  "password": "Pass123",
  "marginTop": 0,
  "marginBottom": 0,
  "marginLeft": 0,
  "marginRight": 0,
  "pdfFormat": "v1.3",
  "removePdfACompliance": false,
  "zoom": 100,
  "linearize": true,
  "linkDuplicateStreams": true,
  "removeUnusedObjects": true,
  "removeUnusedStreams": true,
  "compressImages": true,
  "imageQuality": 80,
  "unembedFonts": false,
  "grayscale": false,
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "usePdf": false,
  "watermarkOptions": [{options}]
}
```

### svg, xps, cgm

|Properties|Description
|---|---|---
|format|Convert format
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|watermarkOptions|Watermark options to be applied during conversion

```json
{
  "format": "{format}",
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "watermarkOptions": [{options}]
}
```

### epub

|Properties|Description
|---|---|---
|format|Convert format
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|watermarkOptions|Watermark options to be applied during conversion
|pageSize|Specifies page size
|pageOrientation|Specifies page orientation

```json
{
  "format": "{format}",
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "watermarkOptions": [{options}],
  "pageSize": "{pageSize}",
  "pageOrientation": "{pageOrientation}"
}
```

### ppt, pps, pptx, ppsx, odp, potx, potm, pptm, ppsm

|Properties|Description
|---|---|---
|format|Convert format
|password|Document password
|zoom|Document zoom
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|usePdf|Use pdf as intermediate format
|watermarkOptions|Watermark options to be applied during conversion

```json
{
  "format": "{format}",
  "password": "Pass123",
  "zoom": 100,
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "usePdf": false,
  "watermarkOptions": [{options}]
}
```

### doc, docm, docx, dot, dotm, dotx, odt, ott

|Properties|Description
|---|---|---
|format|Convert format
|width|Document page width
|height|Document page height
|dpi|Document page DPI
|password|Document password
|zoom|Document zoom
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|watermarkOptions|Watermark options to be applied during conversion
|pdfRecognitionMode|Recognition mode when converting from pdf [Textbox, Flow]
|pageSize|Specifies page size [Default, A3, Statement, Quarto, Paper11x17, Paper10x14, Letter, Legal, Ledger, Folio, Executive, EnvelopeDL, Custom, B5, B4, A5, A4, Tabloid]
|pageOrientation|Specifies page orientation [Default, Landscape, Portrait]

```json
{
  "format": "{format}",
  "width": 1920,
  "height": 1080,
  "dpi": 96,
  "password": "Pass123",
  "zoom": 100,
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "usePdf": false,
  "watermarkOptions": [{options}],
  "pdfRecognitionMode": "Textbox",
  "pageSize": "Custom",
  "pageOrientation": "Default"
}
```

### rtf

|Properties|Description
|---|---|---
|format|Convert format
|width|Document page width
|height|Document page height
|dpi|Document page DPI
|password|Document password
|exportImagesForOldReader|Export images for old reader
|zoom|Document zoom 
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted
|watermarkOptions|Watermark options to be applied during conversion

```json
{
  "format": "rtf",
  "width": 1920,
  "height": 1080,
  "dpi": 96,
  "password": "Pass123",
  "exportImagesForOldReaders": false,
  "zoom": 100,
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "usePdf": false,
  "watermarkOptions": [{options}]
}
```

### txt

|Properties|Description
|---|---|---
|format|Convert format
|fromPage|Start conversion from specified page number
|pagesCount|Convert pagesCount from specified page
|pages|An array with set of pages to be converted

```json
{
  "format": "txt",
  "fromPage": 1,
  "pagesCount": 10,
  "pages": [2,4,6],
  "usePdf": false,
}
```

### watermarkOptions

|Property|Description|Json
|---|---|---
|text|Watermark text
|font|Watermark font name
|color|Watermark color
|width|Watermark width
|height|Watermark height
|top|Watermark top position
|left|Watermark left position
|rotationAngle|Watermark rotation angle
|transparency|Watermark transparency
|background|Indicates that the watermark is stamped as background.
|image|Image watermark

```json
{
  "text": "Watermark",
  "font": "Arial",
  "color": "red",
  "width": 1920,
  "height": 1080,
  "top": 0,
  "left": 0,
  "rotationAngle": 45,
  "transparency": 0.5,
  "background": true,
  "image":  null
}
```
