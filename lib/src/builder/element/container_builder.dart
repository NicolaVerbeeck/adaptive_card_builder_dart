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

class ContainerBuilderV1Dot1 extends ContainerBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  @protected
  ISelectAction? _selectAction;
  @protected
  VerticalContentAlignment? _verticalContentAlignment;

  void setSelectAction(ISelectAction selectAction) {
    _selectAction = selectAction;
  }

  void setVerticalContentAlignment(
      VerticalContentAlignment verticalContentAlignment) {
    _verticalContentAlignment = verticalContentAlignment;
  }

  @override
  Container build() {
    return Container(
      items: _items,
      style: _style,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      selectAction: _selectAction,
      verticalContentAlignment: _verticalContentAlignment,
    );
  }
}

class ContainerBuilderV1Dot2 extends ContainerBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  @protected
  bool? _bleed;
  @protected
  String? _minHeight;
  @protected
  Union<BackgroundImage, Uri>? _backgroundImage;

  void setBleed(bool bleed) {
    _bleed = bleed;
  }

  void setMinHeight(String minHeight) {
    _minHeight = minHeight;
  }

  void setBackgroundImageUri(Uri uri) {
    _backgroundImage = Union.right(uri);
  }

  void setBackgroundImage(BackgroundImage backgroundImage) {
    _backgroundImage = Union.left(backgroundImage);
  }

  @override
  Container build() {
    return Container(
      items: _items,
      style: _style,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      selectAction: _selectAction,
      verticalContentAlignment: _verticalContentAlignment,
      bleed: _bleed,
      minHeight: _minHeight,
      backgroundImage: _backgroundImage,
    );
  }
}

class ContainerBuilderV1Dot5 extends ContainerBuilderV1Dot2 {
  @protected
  bool? _rtl;

  void setRtl(bool rtl) {
    _rtl = rtl;
  }

  @override
  Container build() {
    return Container(
      items: _items,
      style: _style,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      selectAction: _selectAction,
      verticalContentAlignment: _verticalContentAlignment,
      bleed: _bleed,
      minHeight: _minHeight,
      backgroundImage: _backgroundImage,
      rtl: _rtl,
    );
  }
}
