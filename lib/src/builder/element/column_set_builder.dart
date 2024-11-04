part of 'element_builder.dart';

class ColumnSetBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  List<Column>? _columns;
  @protected
  HorizontalAlignment? _horizontalAlignment;

  void addColumn(void Function(ContainerBuilderV1Dot0) builder) {
    _columns ??= [];
    final column = ContainerBuilderV1Dot0();
    builder(column);
    _columns!.add(Column.fromContainer(column.build()));
  }

  void setHorizontalAlignment(HorizontalAlignment horizontalAlignment) {
    _horizontalAlignment = horizontalAlignment;
  }

  ColumnSet build() {
    return ColumnSet(
      columns: _columns,
      horizontalAlignment: _horizontalAlignment,
      separator: _separator,
      spacing: _spacing,
      id: _id,
    );
  }
}

class ColumnSetBuilderV1Dot1 extends ColumnSetBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  @protected
  ISelectAction? _selectAction;

  void setSelectAction(ISelectAction selectAction) {
    _selectAction = selectAction;
  }

  @override
  void addColumn(void Function(ContainerBuilderV1Dot1) builder) {
    _columns ??= [];
    final column = ContainerBuilderV1Dot1();
    builder(column);
    _columns!.add(Column.fromContainer(column.build()));
  }

  @override
  ColumnSet build() {
    return ColumnSet(
      columns: _columns,
      selectAction: _selectAction,
      horizontalAlignment: _horizontalAlignment,
      separator: _separator,
      spacing: _spacing,
      id: _id,
    );
  }
}

class ColumnSetBuilderV1Dot2 extends ColumnSetBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  @protected
  bool? _bleed;
  @protected
  ContainerStyle? _style;
  @protected
  String? _minHeight;

  @override
  void addColumn(void Function(ContainerBuilderV1Dot2) builder) {
    _columns ??= [];
    final column = ContainerBuilderV1Dot2();
    builder(column);
    _columns!.add(Column.fromContainer(column.build()));
  }

  void setBleed(bool bleed) {
    _bleed = bleed;
  }

  void setStyle(ContainerStyle style) {
    _style = style;
  }

  void setMinHeight(String minHeight) {
    _minHeight = minHeight;
  }

  @override
  ColumnSet build() {
    return ColumnSet(
      columns: _columns,
      selectAction: _selectAction,
      horizontalAlignment: _horizontalAlignment,
      bleed: _bleed,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      style: _style,
      minHeight: _minHeight,
    );
  }
}

class ColumnSetBuilderV1Dot5 extends ColumnSetBuilderV1Dot2 {
  @override
  void addColumn(void Function(ContainerBuilderV1Dot5) builder) {
    _columns ??= [];
    final column = ContainerBuilderV1Dot5();
    builder(column);
    _columns!.add(Column.fromContainer(column.build()));
  }
}
