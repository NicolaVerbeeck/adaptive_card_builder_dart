part of '../element.dart';

class Container extends Element {
  final List<Element> items;
  final ISelectAction? selectAction;
  final ContainerStyle? style;
  final VerticalContentAlignment? verticalContentAlignment;
  final bool? bleed;
  final Union<BackgroundImage, Uri>? backgroundImage;
  final String? minHeight;
  final bool? rtl;

  Container({
    required this.items,
    super.fallback,
    super.height,
    super.separator,
    super.spacing,
    super.id,
    super.isVisible,
    this.selectAction,
    this.style,
    this.verticalContentAlignment,
    this.bleed,
    this.backgroundImage,
    this.minHeight,
    this.rtl,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'Container',
      'items': items.map((e) => e.toJson()).toList(),
      if (selectAction != null) 'selectAction': selectAction!.toJson(),
      if (style != null) 'style': style!.toJson(),
      if (verticalContentAlignment != null)
        'verticalContentAlignment': verticalContentAlignment!.toJson(),
      if (bleed != null) 'bleed': bleed,
      if (backgroundImage != null)
        'backgroundImage': backgroundImage!.fold(
          (value) => value!.toJson(),
          (value) => value.toString(),
        ),
      if (minHeight != null) 'minHeight': minHeight,
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
