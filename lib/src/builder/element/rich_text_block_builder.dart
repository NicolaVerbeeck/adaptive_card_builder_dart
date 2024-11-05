part of 'element_builder.dart';

/// Builder for a [RichTextBlock] element for adaptive cards version 1.2
class RichTextBlockBuilderV1Dot2
    with
        BaseElementBuilderV1Dot0,
        BaseElementBuilderV1Dot1,
        BaseElementBuilderV1Dot2 {
  @protected
  final List<Union<String, TextRun>> _inlines = [];
  @protected
  HorizontalAlignment? _horizontalAlignment;

  /// Add a text run with the provided text
  void addStringTextRun(String text) {
    _inlines.add(Union.left(text));
  }

  /// Add a text run with the provided text and configuration
  void addTextRun(String text, void Function(TextRunBuilderV1Dot2) builder) {
    final textRun = TextRunBuilderV1Dot2(text);
    builder(textRun);
    _inlines.add(Union.right(textRun.build()));
  }

  /// Set the horizontal alignment of the rich text block
  set horizontalAlignment(HorizontalAlignment horizontalAlignment) {
    _horizontalAlignment = horizontalAlignment;
  }

  /// Build the [RichTextBlock] element with the provided configuration
  RichTextBlock build() {
    return RichTextBlock(
      inlines: _inlines,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      height: _height,
      isVisible: _isVisible,
      fallback: _fallback,
      horizontalAlignment: _horizontalAlignment,
    );
  }
}

/// Builder for a [RichTextBlock] element for adaptive cards version 1.4
class RichTextBlockBuilderV1Dot4 extends RichTextBlockBuilderV1Dot2 {
  @override
  void addTextRun(String text, void Function(TextRunBuilderV1Dot4) builder) {
    final textRun = TextRunBuilderV1Dot4(text);
    builder(textRun);
    _inlines.add(Union.right(textRun.build()));
  }
}

/// Builder for a [RichTextBlock] element for adaptive cards version 1.5
class RichTextBlockBuilderV1Dot5 extends RichTextBlockBuilderV1Dot4 {
  @override
  void addTextRun(String text, void Function(TextRunBuilderV1Dot5) builder) {
    final textRun = TextRunBuilderV1Dot5(text);
    builder(textRun);
    _inlines.add(Union.right(textRun.build()));
  }
}

/// Builder for a [TextRun] element for adaptive cards version 1.2
class TextRunBuilderV1Dot2 with SelectActionBuilderHelperV1Dot2 {
  @protected
  final String _text;
  @protected
  Colors? _color;
  @protected
  FontType? _fontType;
  @protected
  bool? _highlight;
  @protected
  bool? _isSubtle;
  @protected
  bool? _italic;
  @protected
  ISelectAction? _selectAction;
  @protected
  FontSize? _size;
  @protected
  bool? _strikethrough;
  @protected
  bool? _underline;
  @protected
  FontWeight? _weight;

  @override
  set selectAction(ISelectAction selectAction) {
    _selectAction = selectAction;
  }

  /// Set the color property of the text run
  set color(Colors color) {
    _color = color;
  }

  /// Set the font type property of the text run
  set fontType(FontType fontType) {
    _fontType = fontType;
  }

  /// Set the highlight property of the text run
  set highlight(bool highlight) {
    _highlight = highlight;
  }

  /// Set the subtle property of the text run
  set isSubtle(bool isSubtle) {
    _isSubtle = isSubtle;
  }

  /// Set the italic property of the text run
  set italic(bool italic) {
    _italic = italic;
  }

  /// Set the font size property of the text run
  set size(FontSize size) {
    _size = size;
  }

  /// Set the strikethrough property of the text run
  set strikethrough(bool strikethrough) {
    _strikethrough = strikethrough;
  }

  /// Set the underline property of the text run
  set underline(bool underline) {
    _underline = underline;
  }

  /// Set the weight property of the text run
  set weight(FontWeight weight) {
    _weight = weight;
  }

  /// Constructor for builder taking the text
  TextRunBuilderV1Dot2(this._text);

  /// Build the [TextRun] element with the provided configuration
  TextRun build() {
    return TextRun(
      text: _text,
      color: _color,
      fontType: _fontType,
      highlight: _highlight,
      isSubtle: _isSubtle,
      italic: _italic,
      selectAction: _selectAction,
      size: _size,
      strikethrough: _strikethrough,
      underline: _underline,
      weight: _weight,
    );
  }
}

/// Builder for a [TextRun] element for adaptive cards version 1.4
class TextRunBuilderV1Dot4 extends TextRunBuilderV1Dot2
    with SelectActionBuilderHelperV1Dot4 {
  /// Constructor for builder taking the text
  TextRunBuilderV1Dot4(super.text);
}

/// Builder for a [TextRun] element for adaptive cards version 1.5
class TextRunBuilderV1Dot5 extends TextRunBuilderV1Dot4
    with SelectActionBuilderHelperV1Dot5 {
  /// Constructor for builder taking the text
  TextRunBuilderV1Dot5(super.text);
}
