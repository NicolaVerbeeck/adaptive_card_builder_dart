part of 'element_builder.dart';

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

  void setAltText(String altText) {
    _altText = altText;
  }

  void setHorizontalAlignment(HorizontalAlignment horizontalAlignment) {
    _horizontalAlignment = horizontalAlignment;
  }

  void setSize(ImageSize size) {
    _size = size;
  }

  void setStyle(ImageStyle style) {
    _style = style;
  }

  ImageBuilderV1Dot0(this._url);

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

class ImageBuilderV1Dot1 extends ImageBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  @protected
  String? _backgroundColor;
  @protected
  Union<String, Height>? _imageHeight;
  @protected
  ISelectAction? _selectAction;
  @protected
  String? _width;

  void setBackgroundColor(String backgroundColor) {
    _backgroundColor = backgroundColor;
  }

  void setImageHeightString(String imageHeight) {
    _imageHeight = Union.left(imageHeight);
  }

  void setImageHeightHeight(Height imageHeight) {
    _imageHeight = Union.right(imageHeight);
  }

  void setSelectAction(ISelectAction selectAction) {
    _selectAction = selectAction;
  }

  void setWidth(String width) {
    _width = width;
  }

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

class ImageBuilderV1Dot2 extends ImageBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
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
