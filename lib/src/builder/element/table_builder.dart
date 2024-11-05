part of 'element_builder.dart';

/// Builder class for [Table]s for adaptive cards version 1.5
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

  /// Adds a column to the table
  void addColumn(void Function(TableColumnDefinitionBuilderV1Dot5) build) {
    final builder = TableColumnDefinitionBuilderV1Dot5();
    build(builder);
    _columns ??= <TableColumnDefinition>[];
    _columns!.add(builder.build());
  }

  /// Adds a row to the table
  void addRow(void Function(TableRowBuilderV1Dot5) build) {
    final builder = TableRowBuilderV1Dot5();
    build(builder);
    _rows ??= <TableRow>[];
    _rows!.add(builder.build());
  }

  /// Sets whether the first row should be treated as a header
  set firstRowAsHeader(bool firstRowAsHeader) {
    _firstRowAsHeader = firstRowAsHeader;
  }

  /// Sets whether to show grid lines
  set showGridLines(bool showGridLines) {
    _showGridLines = showGridLines;
  }

  /// Sets the grid style
  set gridStyle(ContainerStyle gridStyle) {
    _gridStyle = gridStyle;
  }

  /// Sets the horizontal cell content alignment
  set horizontalCellContentAlignment(
    HorizontalAlignment horizontalCellContentAlignment,
  ) {
    _horizontalCellContentAlignment = horizontalCellContentAlignment;
  }

  /// Sets the vertical cell content alignment
  set verticalCellContentAlignment(
    VerticalAlignment verticalCellContentAlignment,
  ) {
    _verticalCellContentAlignment = verticalCellContentAlignment;
  }

  /// Builds the [Table] with the provided configuration
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

/// Builder class for [TableCell]s for adaptive cards version 1.5
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

  /// Sets the style of the cell
  set style(ContainerStyle style) {
    _style = style;
  }

  /// Sets the vertical content alignment
  set verticalContentAlignment(
    VerticalContentAlignment verticalContentAlignment,
  ) {
    _verticalContentAlignment = verticalContentAlignment;
  }

  /// Sets whether the cell should bleed
  set bleed(bool bleed) {
    _bleed = bleed;
  }

  /// Sets the background image of the cell to the provided URI
  set backgroundImageUri(Uri uri) {
    _backgroundImage = Union.right(uri);
  }

  /// Sets the background image of the cell
  set backgroundImage(BackgroundImage backgroundImage) {
    _backgroundImage = Union.left(backgroundImage);
  }

  /// Sets the minimum height of the cell
  set minHeight(String minHeight) {
    _minHeight = minHeight;
  }

  /// Sets whether the cell should be right-to-left
  set rtl(bool rtl) {
    _rtl = rtl;
  }

  /// Builds the [TableCell] with the provided configuration
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

/// Builder class for [TableColumnDefinition]s for adaptive cards version 1.5
class TableColumnDefinitionBuilderV1Dot5 {
  @protected
  HorizontalAlignment? _horizontalCellContentAlignment;
  @protected
  VerticalAlignment? _verticalCellContentAlignment;
  @protected
  Union<String, num>? _width;

  /// Sets the width of the column as a string
  set widthString(String width) {
    _width = Union.left(width);
  }

  /// Sets the width of the column as a number
  set widthNum(num width) {
    _width = Union.right(width);
  }

  /// Sets the horizontal cell content alignment
  set horizontalCellContentAlignment(
    HorizontalAlignment horizontalCellContentAlignment,
  ) {
    _horizontalCellContentAlignment = horizontalCellContentAlignment;
  }

  /// Sets the vertical cell content alignment
  set verticalCellContentAlignment(
    VerticalAlignment verticalCellContentAlignment,
  ) {
    _verticalCellContentAlignment = verticalCellContentAlignment;
  }

  /// Builds the [TableColumnDefinition] with the provided configuration
  TableColumnDefinition build() {
    return TableColumnDefinition(
      width: _width,
      horizontalCellContentAlignment: _horizontalCellContentAlignment,
      verticalCellContentAlignment: _verticalCellContentAlignment,
    );
  }
}

/// Builder class for [TableRow]s for adaptive cards version 1.5
class TableRowBuilderV1Dot5 {
  @protected
  List<TableCell>? _cells;
  @protected
  HorizontalAlignment? _horizontalCellContentAlignment;
  @protected
  VerticalAlignment? _verticalCellContentAlignment;
  @protected
  ContainerStyle? _style;

  /// Adds a cell to the row
  void addCell(void Function(TableCellBuilderV1Dot5) build) {
    final builder = TableCellBuilderV1Dot5();
    build(builder);
    _cells ??= <TableCell>[];
    _cells!.add(builder.build());
  }

  /// Sets the horizontal cell content alignment
  set horizontalCellContentAlignment(
    HorizontalAlignment horizontalCellContentAlignment,
  ) {
    _horizontalCellContentAlignment = horizontalCellContentAlignment;
  }

  /// Sets the vertical cell content alignment
  set verticalCellContentAlignment(
    VerticalAlignment verticalCellContentAlignment,
  ) {
    _verticalCellContentAlignment = verticalCellContentAlignment;
  }

  /// Sets the style of the row
  set style(ContainerStyle style) {
    _style = style;
  }

  /// Builds the [TableRow] with the provided configuration
  TableRow build() {
    return TableRow(
      cells: _cells,
      horizontalCellContentAlignment: _horizontalCellContentAlignment,
      verticalCellContentAlignment: _verticalCellContentAlignment,
      style: _style,
    );
  }
}
