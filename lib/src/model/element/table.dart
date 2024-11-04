part of '../element.dart';

class Table extends Element {
  final List<TableColumnDefinition>? columns;
  final List<TableRow>? rows;
  final bool? firstRowAsHeader;
  final bool? showGridLines;
  final ContainerStyle? gridStyle;
  final HorizontalAlignment? horizontalCellContentAlignment;
  final VerticalAlignment? verticalCellContentAlignment;

  Table({
    required super.fallback,
    required super.height,
    required super.separator,
    required super.spacing,
    required super.id,
    required super.isVisible,
    required this.columns,
    required this.rows,
    required this.firstRowAsHeader,
    required this.showGridLines,
    required this.gridStyle,
    required this.horizontalCellContentAlignment,
    required this.verticalCellContentAlignment,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'Table',
      if (columns != null) 'columns': columns!.map((e) => e.toJson()).toList(),
      if (rows != null) 'rows': rows!.map((e) => e.toJson()).toList(),
      if (firstRowAsHeader != null) 'firstRowAsHeader': firstRowAsHeader,
      if (showGridLines != null) 'showGridLines': showGridLines,
      if (gridStyle != null) 'gridStyle': gridStyle!.toJson(),
      if (horizontalCellContentAlignment != null)
        'horizontalCellContentAlignment':
            horizontalCellContentAlignment!.toJson(),
      if (verticalCellContentAlignment != null)
        'verticalCellContentAlignment': verticalCellContentAlignment!.toJson(),
    });
  }
}

class TableColumnDefinition {
  final HorizontalAlignment? horizontalCellContentAlignment;
  final VerticalAlignment? verticalCellContentAlignment;
  final Union<String, num>? width;

  TableColumnDefinition({
    this.horizontalCellContentAlignment,
    this.verticalCellContentAlignment,
    this.width,
  });

  Map<String, dynamic> toJson() {
    return {
      if (horizontalCellContentAlignment != null)
        'horizontalCellContentAlignment':
            horizontalCellContentAlignment!.toJson(),
      if (verticalCellContentAlignment != null)
        'verticalCellContentAlignment': verticalCellContentAlignment!.toJson(),
      if (width != null)
        'width': width!.fold(
          (value) => value,
          (value) => value,
        )
    };
  }
}

class TableRow {
  final List<TableCell>? cells;
  final HorizontalAlignment? horizontalCellContentAlignment;
  final VerticalAlignment? verticalCellContentAlignment;
  final ContainerStyle? style;

  TableRow({
    this.cells,
    this.horizontalCellContentAlignment,
    this.verticalCellContentAlignment,
    this.style,
  });

  Map<String, dynamic> toJson() {
    return {
      if (cells != null) 'cells': cells!.map((e) => e.toJson()).toList(),
      if (horizontalCellContentAlignment != null)
        'horizontalCellContentAlignment':
            horizontalCellContentAlignment!.toJson(),
      if (verticalCellContentAlignment != null)
        'verticalCellContentAlignment': verticalCellContentAlignment!.toJson(),
      if (style != null) 'style': style!.toJson(),
    };
  }
}

class TableCell extends Container {
  TableCell({
    required super.fallback,
    required super.height,
    required super.separator,
    required super.spacing,
    required super.id,
    required super.isVisible,
    required super.items,
    required super.selectAction,
    required super.style,
    required super.verticalContentAlignment,
    required super.bleed,
    required super.backgroundImage,
    required super.minHeight,
    required super.rtl,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    super.populateJson(container);
    // Override the type
    container.addAll({
      'type': 'TableCell',
    });
  }
}
