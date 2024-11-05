part of 'element_builder.dart';

/// A builder to create [Image] objects for adaptive cards version 1.0
class ImageBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  final Uri _url;
  @protected
  String? _altText;
  @protected
  HorizontalAlignment? _horizontalAlignment;
  @protected
  ImageSize? _size;
  @protected
  ImageStyle? _style;

  /// Sets the alt text for the image
  set altText(String altText) {
    _altText = altText;
  }

  /// Sets the horizontal alignment of the image
  set horizontalAlignment(HorizontalAlignment horizontalAlignment) {
    _horizontalAlignment = horizontalAlignment;
  }

  /// Sets the size of the image
  set size(ImageSize size) {
    _size = size;
  }

  /// Sets the style of the image
  set style(ImageStyle style) {
    _style = style;
  }

  /// Creates a builder taking the image url
  ImageBuilderV1Dot0(this._url);

  /// Creates an [Image] object with the provided configuration
  Image build() {
    return Image(
      url: _url,
      altText: _altText,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      horizontalAlignment: _horizontalAlignment,
      size: _size,
      style: _style,
    );
  }
}

/// A builder to create [Image] objects for adaptive cards version 1.1
class ImageBuilderV1Dot1 extends ImageBuilderV1Dot0
    with BaseElementBuilderV1Dot1, SelectActionBuilderHelperV1Dot1 {
  @protected
  String? _backgroundColor;
  @protected
  Union<String, Height>? _imageHeight;
  @protected
  ISelectAction? _selectAction;
  @protected
  String? _width;

  /// Sets the background color of the image
  set backgroundColor(String backgroundColor) {
    _backgroundColor = backgroundColor;
  }

  /// Sets the height of the image
  set imageHeightString(String imageHeight) {
    _imageHeight = Union.left(imageHeight);
  }

  /// Sets the height of the image
  set imageHeightHeight(Height imageHeight) {
    _imageHeight = Union.right(imageHeight);
  }

  @override
  set selectAction(ISelectAction selectAction) {
    _selectAction = selectAction;
  }

  /// Sets the width of the image
  set width(String width) {
    _width = width;
  }

  /// Creates a builder taking the image url
  ImageBuilderV1Dot1(super.url);

  @override
  Image build() {
    return Image(
      url: _url,
      altText: _altText,
      backgroundColor: _backgroundColor,
      imageHeight: _imageHeight,
      horizontalAlignment: _horizontalAlignment,
      selectAction: _selectAction,
      size: _size,
      style: _style,
      width: _width,
      separator: _separator,
      spacing: _spacing,
      id: _id,
    );
  }
}

/// A builder to create [Image] objects for adaptive cards version 1.2
class ImageBuilderV1Dot2 extends ImageBuilderV1Dot1
    with BaseElementBuilderV1Dot2, SelectActionBuilderHelperV1Dot2 {
  /// Creates a builder taking the image url
  ImageBuilderV1Dot2(super.url);

  @override
  Image build() {
    return Image(
      url: _url,
      altText: _altText,
      backgroundColor: _backgroundColor,
      imageHeight: _imageHeight,
      horizontalAlignment: _horizontalAlignment,
      selectAction: _selectAction,
      size: _size,
      style: _style,
      width: _width,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      isVisible: _isVisible,
      fallback: _fallback,
    );
  }
}

/// A builder to create [Image] objects for adaptive cards version 1.4
class ImageBuilderV1Dot4 extends ImageBuilderV1Dot2
    with SelectActionBuilderHelperV1Dot4 {
  /// Creates a builder taking the image url
  ImageBuilderV1Dot4(super.url);
}

/// A builder to create [Image] objects for adaptive cards version 1.5
class ImageBuilderV1Dot5 extends ImageBuilderV1Dot4
    with SelectActionBuilderHelperV1Dot5 {
  /// Creates a builder taking the image url
  ImageBuilderV1Dot5(super.url);
}
