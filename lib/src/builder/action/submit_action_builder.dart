part of 'action_builder.dart';

/// Helper mixin for building submit card actions v 1.0
class SubmitActionBuilderV1Dot0 with BaseActionBuilderV1Dot0 {
  dynamic _data;

  /// Set the data of the action
  set data(dynamic data) {
    _data = data;
  }

  /// Builds the [SubmitAction] with the provided configuration
  SubmitAction build() {
    return SubmitAction(
      title: _title,
      id: _id,
      data: _data,
    );
  }
}

/// Helper mixin for building submit card actions v 1.1
class SubmitActionBuilderV1Dot1 extends SubmitActionBuilderV1Dot0
    with BaseActionBuilderV1Dot1 {
  @override
  SubmitAction build() {
    return SubmitAction(
      title: _title,
      id: _id,
      data: _data,
    );
  }
}

/// Helper mixin for building submit card actions v 1.2
class SubmitActionBuilderV1Dot2 extends SubmitActionBuilderV1Dot1
    with BaseActionBuilderV1Dot2 {
  @override
  SubmitAction build() {
    return SubmitAction(
      title: _title,
      id: _id,
      data: _data,
      style: _style,
      fallback: _fallback,
    );
  }
}

/// Helper mixin for building submit card actions v 1.3
class SubmitActionBuilderV1Dot3 extends SubmitActionBuilderV1Dot2
    with BaseActionBuilderV1Dot2 {
  AssociatedInputs? _associatedInputs;

  /// Set the associated inputs of the action
  set associatedInputs(AssociatedInputs associatedInputs) {
    _associatedInputs = associatedInputs;
  }

  @override
  SubmitAction build() {
    return SubmitAction(
      title: _title,
      id: _id,
      data: _data,
      style: _style,
      fallback: _fallback,
      associatedInputs: _associatedInputs,
    );
  }
}

/// Helper mixin for building submit card actions v 1.5
class SubmitActionBuilderV1Dot5 extends SubmitActionBuilderV1Dot3
    with BaseActionBuilderV1Dot5 {
  @override
  SubmitAction build() {
    return SubmitAction(
      title: _title,
      id: _id,
      data: _data,
      style: _style,
      fallback: _fallback,
      tooltip: _tooltip,
      isEnabled: _isEnabled,
      mode: _mode,
      associatedInputs: _associatedInputs,
    );
  }
}
