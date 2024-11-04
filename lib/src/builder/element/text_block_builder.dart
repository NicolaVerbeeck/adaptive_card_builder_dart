part of 'element_builder.dart';

class TextBlockBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  final String _text;
  @protected
  Colors? _color;
  @protected
  HorizontalAlignment? _horizontalAlignment;
  @protected
  bool? _isSubtle;
  @protected
  int? _maxLines;
  @protected
  FontSize? _size;
  @protected
  FontWeight? _weight;
  @protected
  bool? _wrap;

  TextBlockBuilderV1Dot0(this._text);

  TextBlock build() {
    return TextBlock(
      text: _text,
      color: _color,
      horizontalAlignment: _horizontalAlignment,
      isSubtle: _isSubtle,
      maxLines: _maxLines,
      size: _size,
      weight: _weight,
      wrap: _wrap,
      separator: _separator,
      spacing: _spacing,
      id: _id,
    );
  }
}

class TextBlockBuilderV1Dot1 extends TextBlockBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  TextBlockBuilderV1Dot1(super.text);

  @override
  TextBlock build() {
    return TextBlock(
      text: _text,
      color: _color,
      horizontalAlignment: _horizontalAlignment,
      isSubtle: _isSubtle,
      maxLines: _maxLines,
      size: _size,
      weight: _weight,
      wrap: _wrap,
      height: _height,
      separator: _separator,
      spacing: _spacing,
      id: _id,
    );
  }
}

class TextBlockBuilderV1Dot2 extends TextBlockBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  @protected
  FontType? _fontType;

  void setFontType(FontType fontType) {
    _fontType = fontType;
  }

  TextBlockBuilderV1Dot2(super.text);

  @override
  TextBlock build() {
    return TextBlock(
      text: _text,
      color: _color,
      fontType: _fontType,
      horizontalAlignment: _horizontalAlignment,
      isSubtle: _isSubtle,
      maxLines: _maxLines,
      size: _size,
      weight: _weight,
      wrap: _wrap,
      height: _height,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      isVisible: _isVisible,
      fallback: _fallback,
    );
  }
}

class TextBlockBuilderV1Dot5 extends TextBlockBuilderV1Dot2 {
  @protected
  TextBlockStyle? _style;

  void setStyle(TextBlockStyle style) {
    _style = style;
  }

  TextBlockBuilderV1Dot5(super.text);

  @override
  TextBlock build() {
    return TextBlock(
      text: _text,
      color: _color,
      fontType: _fontType,
      horizontalAlignment: _horizontalAlignment,
      isSubtle: _isSubtle,
      maxLines: _maxLines,
      size: _size,
      weight: _weight,
      wrap: _wrap,
      height: _height,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      isVisible: _isVisible,
      fallback: _fallback,
      style: _style,
    );
  }
}
