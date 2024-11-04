part of '../element.dart';

class ColumnSet extends Element {
  final List<Column>? columns;
  final ISelectAction? selectAction;
  final ContainerStyle? style;
  final bool? bleed;
  final String? minHeight;
  final HorizontalAlignment? horizontalAlignment;

  ColumnSet({
    required super.fallback,
    required super.height,
    required super.separator,
    required super.spacing,
    required super.id,
    required super.isVisible,
    required this.columns,
    required this.selectAction,
    required this.style,
    required this.bleed,
    required this.minHeight,
    required this.horizontalAlignment,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'ColumnSet',
      if (columns != null) 'columns': columns!.map((e) => e.toJson()).toList(),
      if (selectAction != null) 'selectAction': selectAction!.toJson(),
      if (style != null) 'style': style!.toJson(),
      if (bleed != null) 'bleed': bleed,
      if (minHeight != null) 'minHeight': minHeight,
      if (horizontalAlignment != null)
        'horizontalAlignment': horizontalAlignment!.toJson(),
    });
  }
}

class Column {
  final String? id;
  final bool? isVisible;
  final List<Element>? items;
  final Union<BackgroundImage, Uri>? backgroundImage;
  final bool? bleed;
  final Union<Column, bool>? fallback;
  final String? minHeight;
  final bool? rtl;
  final bool? separator;
  final Spacing? spacing;
  final ISelectAction? selectAction;
  final ContainerStyle? style;
  final VerticalContentAlignment? verticalContentAlignment;
  final Union<String, double>? width;

  Column({
    this.id,
    this.isVisible,
    this.items,
    this.backgroundImage,
    this.bleed,
    this.fallback,
    this.minHeight,
    this.rtl,
    this.separator,
    this.spacing,
    this.selectAction,
    this.style,
    this.verticalContentAlignment,
    this.width,
  });

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (isVisible != null) 'isVisible': isVisible,
      if (items != null) 'items': items!.map((e) => e.toJson()).toList(),
      if (backgroundImage != null)
        'backgroundImage': backgroundImage!.fold(
          (value) => value!.toJson(),
          (value) => value!.toString(),
        ),
      if (bleed != null) 'bleed': bleed,
      if (fallback != null)
        'fallback': fallback!.fold(
          (value) => value!.toJson(),
          (value) => value,
        ),
      if (minHeight != null) 'minHeight': minHeight,
      if (rtl != null) 'rtl': rtl,
      if (separator != null) 'separator': separator,
      if (spacing != null) 'spacing': spacing!.toJson(),
      if (selectAction != null) 'selectAction': selectAction!.toJson(),
      if (style != null) 'style': style!.toJson(),
      if (verticalContentAlignment != null)
        'verticalContentAlignment': verticalContentAlignment!.toJson(),
      if (width != null)
        'width': width!.fold(
          (value) => value,
          (value) => value.toString(),
        ),
    };
  }
}
