part of 'element_builder.dart';

/// Builder for action sets in adaptive cards version 1.2
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

  /// Builds the action set with the provided configuration
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

/// Builder for action sets in adaptive cards version 1.4
class ActionSetBuilderV1Dot4 extends ActionSetBuilderV1Dot2
    with V1Dot4ActionBuilder {}

/// Builder for action sets in adaptive cards version 1.5
class ActionSetBuilderV1Dot5 extends ActionSetBuilderV1Dot4
    with V1Dot5ActionBuilder {}
