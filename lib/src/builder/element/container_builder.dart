part of 'element_builder.dart';

class ContainerBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  final List<Element> _items = [];
  @protected
  ContainerStyle? _style;

  void setStyle(ContainerStyle style) {
    _style = style;
  }

  // TODO ADD ITEMS

  Container build() {
    return Container(
      items: _items,
      style: _style,
      separator: _separator,
      spacing: _spacing,
      id: _id,
    );
  }
}
