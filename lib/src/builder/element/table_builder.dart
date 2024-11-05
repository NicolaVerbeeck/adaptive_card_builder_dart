part of 'element_builder.dart';

class TableBuilderV1Dot5
    with
        BaseElementBuilderV1Dot0,
        BaseElementBuilderV1Dot1,
        BaseElementBuilderV1Dot2 {
  @protected
  List<TableColumnDefinition>? _columns;
  @protected
  List<TableRow>? _rows;
  @protected
  bool? _firstRowAsHeader;
  @protected
  bool? _showGridLines;
  @protected
  ContainerStyle? _gridStyle;
  @protected
  HorizontalAlignment? _horizontalCellContentAlignment;
  @protected
  VerticalAlignment? _verticalCellContentAlignment;

  void addColumn(void Function(TableColumnDefinitionBuilderV1Dot5) build) {
    final builder = TableColumnDefinitionBuilderV1Dot5();
    build(builder);
    _columns ??= <TableColumnDefinition>[];
    _columns!.add(builder.build());
  }

  void addRow(void Function(TableRowBuilderV1Dot5) build) {
    final builder = TableRowBuilderV1Dot5();
    build(builder);
    _rows ??= <TableRow>[];
    _rows!.add(builder.build());
  }

  void setFirstRowAsHeader(bool firstRowAsHeader) {
    _firstRowAsHeader = firstRowAsHeader;
  }

  void setShowGridLines(bool showGridLines) {
    _showGridLines = showGridLines;
  }

  void setGridStyle(ContainerStyle gridStyle) {
    _gridStyle = gridStyle;
  }

  void setHorizontalCellContentAlignment(
      HorizontalAlignment horizontalCellContentAlignment) {
    _horizontalCellContentAlignment = horizontalCellContentAlignment;
  }

  void setVerticalCellContentAlignment(
      VerticalAlignment verticalCellContentAlignment) {
    _verticalCellContentAlignment = verticalCellContentAlignment;
  }

  Table build() {
    return Table(
      columns: _columns,
      rows: _rows,
      firstRowAsHeader: _firstRowAsHeader,
      showGridLines: _showGridLines,
      gridStyle: _gridStyle,
      horizontalCellContentAlignment: _horizontalCellContentAlignment,
      verticalCellContentAlignment: _verticalCellContentAlignment,
      fallback: _fallback,
      height: _height,
      id: _id,
      isVisible: _isVisible,
      separator: _separator,
      spacing: _spacing,
    );
  }
}

class TableCellBuilderV1Dot5
    with SelectActionBuilderHelperV1Dot5, ElementContainerHelperV1Dot5 {
  @protected
  final _items = <Element>[];
  @protected
  ISelectAction? _selectAction;
  @protected
  ContainerStyle? _style;
  @protected
  VerticalContentAlignment? _verticalContentAlignment;
  @protected
  bool? _bleed;
  @protected
  Union<BackgroundImage, Uri>? _backgroundImage;
  @protected
  String? _minHeight;
  @protected
  bool? _rtl;

  @override
  void addElement(Element element) {
    _items.add(element);
  }

  @override
  set selectAction(ISelectAction selectAction) {
    _selectAction = selectAction;
  }

  void setStyle(ContainerStyle style) {
    _style = style;
  }

  void setVerticalContentAlignment(
      VerticalContentAlignment verticalContentAlignment) {
    _verticalContentAlignment = verticalContentAlignment;
  }

  void setBleed(bool bleed) {
    _bleed = bleed;
  }

  void setBackgroundImageUri(Uri uri) {
    _backgroundImage = Union.right(uri);
  }

  void setBackgroundImage(BackgroundImage backgroundImage) {
    _backgroundImage = Union.left(backgroundImage);
  }

  void setMinHeight(String minHeight) {
    _minHeight = minHeight;
  }

  void setRtl(bool rtl) {
    _rtl = rtl;
  }

  TableCell build() {
    return TableCell(
      items: _items,
      selectAction: _selectAction,
      style: _style,
      verticalContentAlignment: _verticalContentAlignment,
      bleed: _bleed,
      backgroundImage: _backgroundImage,
      minHeight: _minHeight,
      rtl: _rtl,
    );
  }
}

class TableColumnDefinitionBuilderV1Dot5 {
  @protected
  HorizontalAlignment? _horizontalCellContentAlignment;
  @protected
  VerticalAlignment? _verticalCellContentAlignment;
  @protected
  Union<String, num>? _width;

  void setWidthString(String width) {
    _width = Union.left(width);
  }

  void setWidthNum(num width) {
    _width = Union.right(width);
  }

  void setHorizontalCellContentAlignment(
      HorizontalAlignment horizontalCellContentAlignment) {
    _horizontalCellContentAlignment = horizontalCellContentAlignment;
  }

  void setVerticalCellContentAlignment(
      VerticalAlignment verticalCellContentAlignment) {
    _verticalCellContentAlignment = verticalCellContentAlignment;
  }

  TableColumnDefinition build() {
    return TableColumnDefinition(
      width: _width,
      horizontalCellContentAlignment: _horizontalCellContentAlignment,
      verticalCellContentAlignment: _verticalCellContentAlignment,
    );
  }
}

class TableRowBuilderV1Dot5 {
  @protected
  List<TableCell>? _cells;
  @protected
  HorizontalAlignment? _horizontalCellContentAlignment;
  @protected
  VerticalAlignment? _verticalCellContentAlignment;
  @protected
  ContainerStyle? _style;

  void addCell(void Function(TableCellBuilderV1Dot5) build) {
    final builder = TableCellBuilderV1Dot5();
    build(builder);
    _cells ??= <TableCell>[];
    _cells!.add(builder.build());
  }

  void setHorizontalCellContentAlignment(
      HorizontalAlignment horizontalCellContentAlignment) {
    _horizontalCellContentAlignment = horizontalCellContentAlignment;
  }

  void setVerticalCellContentAlignment(
      VerticalAlignment verticalCellContentAlignment) {
    _verticalCellContentAlignment = verticalCellContentAlignment;
  }

  void setStyle(ContainerStyle style) {
    _style = style;
  }

  TableRow build() {
    return TableRow(
      cells: _cells,
      horizontalCellContentAlignment: _horizontalCellContentAlignment,
      verticalCellContentAlignment: _verticalCellContentAlignment,
      style: _style,
    );
  }
}
