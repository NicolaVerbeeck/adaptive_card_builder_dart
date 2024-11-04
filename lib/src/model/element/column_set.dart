part of '../element.dart';

class ColumnSet extends Element {
  final List<Column>? columns;
  final ISelectAction? selectAction;
  final ContainerStyle? style;
  final bool? bleed;
  final String? minHeight;
  final HorizontalAlignment? horizontalAlignment;

  ColumnSet({
    super.fallback,
    super.height,
    super.separator,
    super.spacing,
    super.id,
    super.isVisible,
    this.columns,
    this.selectAction,
    this.style,
    this.bleed,
    this.minHeight,
    this.horizontalAlignment,
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

  factory Column.fromContainer(Container container) {
    return Column(
      id: container.id,
      isVisible: container.isVisible,
      items: container.items,
      backgroundImage: container.backgroundImage,
      bleed: container.bleed,
      fallback: container.fallback?.fold(
        (value) => value is Container
            ? Union.left(Column.fromContainer(value))
            : (value is Column
                ? Union.left(value as Column)
                : throw ArgumentError(
                    'Fallback for column must be column or container')),
        (value) => Union.right(value!),
      ),
      minHeight: container.minHeight,
      rtl: container.rtl,
      separator: container.separator,
      spacing: container.spacing,
      selectAction: container.selectAction,
      style: container.style,
      verticalContentAlignment: container.verticalContentAlignment,
    );
  }
}
