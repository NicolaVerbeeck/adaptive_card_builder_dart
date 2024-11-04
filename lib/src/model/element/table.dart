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
    super.fallback,
    super.height,
    super.separator,
    super.spacing,
    super.id,
    super.isVisible,
    this.columns,
    this.rows,
    this.firstRowAsHeader,
    this.showGridLines,
    this.gridStyle,
    this.horizontalCellContentAlignment,
    this.verticalCellContentAlignment,
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

// TODO check if this is actually a container
class TableCell extends Container {
  TableCell({
    required super.items,
    super.fallback,
    super.height,
    super.separator,
    super.spacing,
    super.id,
    super.isVisible,
    super.selectAction,
    super.style,
    super.verticalContentAlignment,
    super.bleed,
    super.backgroundImage,
    super.minHeight,
    super.rtl,
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
