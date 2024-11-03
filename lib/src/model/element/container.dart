part of '../element.dart';

class Container extends Element {
  final List<Element> items;
  final ISelectAction? selectAction;
  final ContainerStyle? style;
  final VerticalContentAlignment? verticalContentAlignment;
  final bool? bleed;
  final Union<BackgroundImage, Uri>? backgroundImage;
  final String minHeight;
  final bool? rtl;

  Container({
    required super.fallback,
    required super.height,
    required super.separator,
    required super.spacing,
    required super.id,
    required super.isVisible,
    required this.items,
    required this.selectAction,
    required this.style,
    required this.verticalContentAlignment,
    required this.bleed,
    required this.backgroundImage,
    required this.minHeight,
    required this.rtl,
  });

  @override
  void populateJson(Map<String, dynamic> json) {
    json.addAll({
      'type': 'Container',
      'items': items.map((e) => e.toJson()).toList(),
      if (selectAction != null) 'selectAction': selectAction!.toJson(),
      if (style != null) 'style': style!.toJson(),
      if (verticalContentAlignment != null) 'verticalContentAlignment': verticalContentAlignment!.toJson(),
      if (bleed != null) 'bleed': bleed,
      if (backgroundImage != null)
        'backgroundImage': backgroundImage!.fold(
          (value) => value.toJson(),
          (value) => value.toString(),
        ),
      'minHeight': minHeight,
      if (rtl != null) 'rtl': rtl,
    });
  }
}

enum ContainerStyle {
  defaultStyle,
  emphasis,
  good,
  attention,
  warning,
  accent,
  ;

  String toJson() => switch (this) {
        ContainerStyle.defaultStyle => 'default',
        ContainerStyle.emphasis => 'emphasis',
        ContainerStyle.good => 'good',
        ContainerStyle.attention => 'attention',
        ContainerStyle.warning => 'warning',
        ContainerStyle.accent => 'accent',
      };
}
