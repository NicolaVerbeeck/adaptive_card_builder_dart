part of 'action_builder.dart';

class ToggleVisibilityActionBuilderV1Dot2 with BaseActionBuilderV1Dot0, BaseActionBuilderV1Dot1, BaseActionBuilderV1Dot2 {
  final List<TargetElement> _targetElements;

  ToggleVisibilityActionBuilderV1Dot2(this._targetElements);

  void addTargetElement(TargetElement targetElement) {
    _targetElements.add(targetElement);
  }

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

class ToggleVisibilityActionBuilderV1Dot5 extends ToggleVisibilityActionBuilderV1Dot2 with BaseActionBuilderV1Dot5 {
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
