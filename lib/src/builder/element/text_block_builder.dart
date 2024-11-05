part of 'element_builder.dart';

/// Builder class for text blocks for adaptive cards version 1.0
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

  /// Sets the color of the text
  set color(Colors color) {
    _color = color;
  }

  /// Sets the horizontal alignment of the text
  set horizontalAlignment(HorizontalAlignment horizontalAlignment) {
    _horizontalAlignment = horizontalAlignment;
  }

  /// Sets whether the text is subtle
  set isSubtle(bool isSubtle) {
    _isSubtle = isSubtle;
  }

  /// Sets the maximum number of lines
  set maxLines(int maxLines) {
    _maxLines = maxLines;
  }

  /// Sets the font size
  set size(FontSize size) {
    _size = size;
  }

  /// Sets the font weight
  set weight(FontWeight weight) {
    _weight = weight;
  }

  /// Sets whether the text should wrap
  set wrap(bool wrap) {
    _wrap = wrap;
  }

  /// Constructor that sets the text
  TextBlockBuilderV1Dot0(this._text);

  /// Builds the [TextBlock] with the provided configuration
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

/// Builder class for text blocks for adaptive cards version 1.1
class TextBlockBuilderV1Dot1 extends TextBlockBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  /// Constructor that sets the text
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

/// Builder class for text blocks for adaptive cards version 1.2
class TextBlockBuilderV1Dot2 extends TextBlockBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  @protected
  FontType? _fontType;

  /// Sets the font type
  set fontType(FontType fontType) {
    _fontType = fontType;
  }

  /// Constructor that sets the text
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

/// Builder class for text blocks for adaptive cards version 1.5
class TextBlockBuilderV1Dot5 extends TextBlockBuilderV1Dot2 {
  @protected
  TextBlockStyle? _style;

  /// Sets the style of the text block
  set style(TextBlockStyle style) {
    _style = style;
  }

  /// Constructor that sets the text
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
