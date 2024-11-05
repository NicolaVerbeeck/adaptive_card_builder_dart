part of '../element.dart';

class RichTextBlock extends Element {
  final List<Union<String, TextRun>> inlines;
  final HorizontalAlignment? horizontalAlignment;

  RichTextBlock({
    required this.inlines,
    super.fallback,
    super.height,
    super.separator,
    super.spacing,
    super.id,
    super.isVisible,
    this.horizontalAlignment,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'RichTextBlock',
      'inlines': inlines
          .map(
            (e) => e.fold(
              (value) => value,
              (value) => value!.toJson(),
            ),
          )
          .toList(),
      if (horizontalAlignment != null)
        'horizontalAlignment': horizontalAlignment!.toJson(),
    });
  }
}

class TextRun {
  final String text;
  final Colors? color;
  final FontType? fontType;
  final bool? highlight;
  final bool? isSubtle;
  final bool? italic;
  final ISelectAction? selectAction;
  final FontSize? size;
  final bool? strikethrough;
  final bool? underline;
  final FontWeight? weight;

  TextRun({
    required this.text,
    this.color,
    this.fontType,
    this.highlight,
    this.isSubtle,
    this.italic,
    this.selectAction,
    this.size,
    this.strikethrough,
    this.underline,
    this.weight,
  });

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'type': 'TextRun',
      'text': text,
      if (color != null) 'color': color!.toJson(),
      if (fontType != null) 'fontType': fontType!.toJson(),
      if (highlight != null) 'highlight': highlight,
      if (isSubtle != null) 'isSubtle': isSubtle,
      if (italic != null) 'italic': italic,
      if (selectAction != null) 'selectAction': selectAction!.toJson(),
      if (size != null) 'size': size!.toJson(),
      if (strikethrough != null) 'strikethrough': strikethrough,
      if (underline != null) 'underline': underline,
      if (weight != null) 'weight': weight!.toJson(),
    };
    return json;
  }
}
