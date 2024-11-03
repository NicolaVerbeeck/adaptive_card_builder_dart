part of '../element.dart';

class TextBlock extends Element {
  final String text;
  final Colors? color;
  final FontType? fontType;
  final HorizontalAlignment? horizontalAlignment;
  final bool? isSubtle;
  final int? maxLines;
  final FontSize? size;
  final FontWeight? weight;
  final bool? wrap;
  final TextBlockStyle? style;

  TextBlock({
    required super.fallback,
    required super.height,
    required super.separator,
    required super.spacing,
    required super.id,
    required super.isVisible,
    required this.text,
    required this.color,
    required this.fontType,
    required this.horizontalAlignment,
    required this.isSubtle,
    required this.maxLines,
    required this.size,
    required this.weight,
    required this.wrap,
    required this.style,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'TextBlock',
      'text': text,
      if (color != null) 'color': color!.toJson(),
      if (fontType != null) 'fontType': fontType!.toJson(),
      if (horizontalAlignment != null) 'horizontalAlignment': horizontalAlignment!.toJson(),
      if (isSubtle != null) 'isSubtle': isSubtle,
      if (maxLines != null) 'maxLines': maxLines,
      if (size != null) 'size': size!.toJson(),
      if (weight != null) 'weight': weight!.toJson(),
      if (wrap != null) 'wrap': wrap,
      if (style != null) 'style': style!.toJson(),
    });
  }
}

enum Colors {
  colorDefault,
  dark,
  light,
  accent,
  good,
  warning,
  attention,
  ;

  String toJson() => switch (this) {
        Colors.colorDefault => 'default',
        Colors.dark => 'dark',
        Colors.light => 'light',
        Colors.accent => 'accent',
        Colors.good => 'good',
        Colors.warning => 'warning',
        Colors.attention => 'attention',
      };
}

enum FontType {
  defaultFont,
  monospace,
  ;

  String toJson() => switch (this) {
        FontType.defaultFont => 'default',
        FontType.monospace => 'monospace',
      };
}

enum FontSize {
  sizeDefault,
  small,
  medium,
  large,
  extraLarge,
  ;

  String toJson() => switch (this) {
        FontSize.sizeDefault => 'default',
        FontSize.small => 'small',
        FontSize.medium => 'medium',
        FontSize.large => 'large',
        FontSize.extraLarge => 'extraLarge',
      };
}

enum FontWeight {
  weightDefault,
  lighter,
  bolder,
  ;

  String toJson() => switch (this) {
        FontWeight.weightDefault => 'default',
        FontWeight.lighter => 'lighter',
        FontWeight.bolder => 'bolder',
      };
}

enum TextBlockStyle {
  defaultStyle,
  heading,
  ;

  String toJson() => switch (this) {
        TextBlockStyle.defaultStyle => 'default',
        TextBlockStyle.heading => 'heading',
      };
}
