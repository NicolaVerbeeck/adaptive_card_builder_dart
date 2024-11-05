part of 'action_builder.dart';

/// Helper mixin for building toggle visibility card actions v 1.2
class ToggleVisibilityActionBuilderV1Dot2
    with
        BaseActionBuilderV1Dot0,
        BaseActionBuilderV1Dot1,
        BaseActionBuilderV1Dot2 {
  final List<TargetElement> _targetElements;

  /// Constructor that takes a list of target elements
  ToggleVisibilityActionBuilderV1Dot2(this._targetElements);

  /// Builds the [ToggleVisibilityAction] with the provided parameters
  ToggleVisibilityAction build() {
    return ToggleVisibilityAction(
      style: _style,
      fallback: _fallback,
      targetElements: _targetElements,
      title: _title,
      id: _id,
      iconUrl: _iconUrl,
    );
  }
}

/// Helper mixin for building toggle visibility card actions v 1.5
class ToggleVisibilityActionBuilderV1Dot5
    extends ToggleVisibilityActionBuilderV1Dot2 with BaseActionBuilderV1Dot5 {
  /// Constructor that takes a list of target elements
  ToggleVisibilityActionBuilderV1Dot5(super.targetElements);

  @override
  ToggleVisibilityAction build() {
    return ToggleVisibilityAction(
      style: _style,
      fallback: _fallback,
      targetElements: _targetElements,
      title: _title,
      id: _id,
      iconUrl: _iconUrl,
      tooltip: _tooltip,
      isEnabled: _isEnabled,
      mode: _mode,
    );
  }
}
