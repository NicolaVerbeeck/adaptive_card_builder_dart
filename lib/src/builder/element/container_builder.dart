part of 'element_builder.dart';

/// Builder for containers in adaptive cards version 1.0
class ContainerBuilderV1Dot0
    with BaseElementBuilderV1Dot0, ElementContainerHelperV1Dot0 {
  @protected
  final List<Element> _items = [];
  @protected
  ContainerStyle? _style;

  @override
  void addElement(Element element) {
    _items.add(element);
  }

  /// Set the style of the container
  set style(ContainerStyle style) {
    _style = style;
  }

  /// Builds the container with the provided configuration
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

/// Builder for containers in adaptive cards version 1.1
class ContainerBuilderV1Dot1 extends ContainerBuilderV1Dot0
    with
        BaseElementBuilderV1Dot1,
        ElementContainerHelperV1Dot1,
        SelectActionBuilderHelperV1Dot1 {
  @protected
  ISelectAction? _selectAction;
  @protected
  VerticalContentAlignment? _verticalContentAlignment;

  @override
  set selectAction(ISelectAction selectAction) {
    _selectAction = selectAction;
  }

  /// Set the vertical content alignment of the container
  set verticalContentAlignment(
    VerticalContentAlignment verticalContentAlignment,
  ) {
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

/// Builder for containers in adaptive cards version 1.2
class ContainerBuilderV1Dot2 extends ContainerBuilderV1Dot1
    with
        BaseElementBuilderV1Dot2,
        ElementContainerHelperV1Dot2,
        SelectActionBuilderHelperV1Dot2 {
  @protected
  bool? _bleed;
  @protected
  String? _minHeight;
  @protected
  Union<BackgroundImage, Uri>? _backgroundImage;

  /// Set the bleed property of the container
  set bleed(bool bleed) {
    _bleed = bleed;
  }

  /// Set the minimum height of the container
  set minHeight(String minHeight) {
    _minHeight = minHeight;
  }

  /// Set the background image of the container
  set backgroundImageUri(Uri uri) {
    _backgroundImage = Union.right(uri);
  }

  /// Set the background image of the container
  set backgroundImage(BackgroundImage backgroundImage) {
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

/// Builder for containers in adaptive cards version 1.3
class ContainerBuilderV1Dot3 extends ContainerBuilderV1Dot2
    with ElementContainerHelperV1Dot3 {}

/// Builder for containers in adaptive cards version 1.4
class ContainerBuilderV1Dot4 extends ContainerBuilderV1Dot3
    with ElementContainerHelperV1Dot4, SelectActionBuilderHelperV1Dot4 {}

/// Builder for containers in adaptive cards version 1.5
class ContainerBuilderV1Dot5 extends ContainerBuilderV1Dot4
    with ElementContainerHelperV1Dot5, SelectActionBuilderHelperV1Dot5 {
  @protected
  bool? _rtl;

  /// Set the right to left property of the container
  set rtl(bool rtl) {
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
