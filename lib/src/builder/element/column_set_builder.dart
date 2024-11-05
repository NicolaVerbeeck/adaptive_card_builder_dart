part of 'element_builder.dart';

/// Column set builder for adaptive cards version 1.0
class ColumnSetBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  List<Column>? _columns;
  @protected
  HorizontalAlignment? _horizontalAlignment;

  /// Add a column to the column set
  void addColumn(void Function(ContainerBuilderV1Dot0) builder) {
    _columns ??= [];
    final column = ContainerBuilderV1Dot0();
    builder(column);
    _columns!.add(Column.fromContainer(column.build()));
  }

  /// Set the horizontal alignment of the column set
  set horizontalAlignment(HorizontalAlignment horizontalAlignment) {
    _horizontalAlignment = horizontalAlignment;
  }

  /// Build the column set with the provided configuration
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

/// Column set builder for adaptive cards version 1.1
class ColumnSetBuilderV1Dot1 extends ColumnSetBuilderV1Dot0
    with BaseElementBuilderV1Dot1, SelectActionBuilderHelperV1Dot1 {
  @protected
  ISelectAction? _selectAction;

  @override
  set selectAction(ISelectAction selectAction) {
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

/// Column set builder for adaptive cards version 1.2
class ColumnSetBuilderV1Dot2 extends ColumnSetBuilderV1Dot1
    with BaseElementBuilderV1Dot2, SelectActionBuilderHelperV1Dot2 {
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

  /// Set the bleed property of the column set
  set bleed(bool bleed) {
    _bleed = bleed;
  }

  /// Set the style of the column set
  set style(ContainerStyle style) {
    _style = style;
  }

  /// Set the minimum height of the column set
  set minHeight(String minHeight) {
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

/// Column set builder for adaptive cards version 1.3
class ColumnSetBuilderV1Dot3 extends ColumnSetBuilderV1Dot2
    with SelectActionBuilderHelperV1Dot2 {
  @override
  void addColumn(void Function(ContainerBuilderV1Dot3) builder) {
    _columns ??= [];
    final column = ContainerBuilderV1Dot3();
    builder(column);
    _columns!.add(Column.fromContainer(column.build()));
  }
}

/// Column set builder for adaptive cards version 1.4
class ColumnSetBuilderV1Dot4 extends ColumnSetBuilderV1Dot3
    with SelectActionBuilderHelperV1Dot4 {
  @override
  void addColumn(void Function(ContainerBuilderV1Dot4) builder) {
    _columns ??= [];
    final column = ContainerBuilderV1Dot4();
    builder(column);
    _columns!.add(Column.fromContainer(column.build()));
  }
}

/// Column set builder for adaptive cards version 1.5
class ColumnSetBuilderV1Dot5 extends ColumnSetBuilderV1Dot4
    with SelectActionBuilderHelperV1Dot5 {
  @override
  void addColumn(void Function(ContainerBuilderV1Dot5) builder) {
    _columns ??= [];
    final column = ContainerBuilderV1Dot5();
    builder(column);
    _columns!.add(Column.fromContainer(column.build()));
  }
}
