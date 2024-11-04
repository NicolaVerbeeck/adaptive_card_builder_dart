part of 'element_builder.dart';

class RichTextBlockBuilderV1Dot2
    with
        BaseElementBuilderV1Dot0,
        BaseElementBuilderV1Dot1,
        BaseElementBuilderV1Dot2 {
  @protected
  final List<Union<String, TextRun>> _inlines = [];
  @protected
  HorizontalAlignment? _horizontalAlignment;

  void addStringTextRun(String text) {
    _inlines.add(Union.left(text));
  }

  void addTextRun(TextRun textRun) {
    _inlines.add(Union.right(textRun));
  }

  void setHorizontalAlignment(HorizontalAlignment horizontalAlignment) {
    _horizontalAlignment = horizontalAlignment;
  }

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
