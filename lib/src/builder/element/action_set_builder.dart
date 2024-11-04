part of 'element_builder.dart';

class ActionSetBuilderV1Dot2
    with
        BaseElementBuilderV1Dot0,
        BaseElementBuilderV1Dot1,
        BaseElementBuilderV1Dot2,
        V1Dot2ActionBuilder {
  final List<CardAction> _actions = [];

  @override
  void addAction(CardAction action) {
    _actions.add(action);
  }

  ActionSet build() {
    return ActionSet(
      actions: _actions,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      height: _height,
      isVisible: _isVisible,
      fallback: _fallback,
    );
  }
}

class ActionSetBuilderV1Dot4 extends ActionSetBuilderV1Dot2
    with V1Dot4ActionBuilder {}

class ActionSetBuilderV1Dot5 extends ActionSetBuilderV1Dot4
    with V1Dot5ActionBuilder {}
