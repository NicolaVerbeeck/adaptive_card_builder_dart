part of 'action_builder.dart';

/// Helper mixin for building execute actions v 1.4
class ExecuteActionBuilderV1Dot4
    with
        BaseActionBuilderV1Dot0,
        BaseActionBuilderV1Dot1,
        BaseActionBuilderV1Dot2 {
  String? _verb;
  dynamic _data;
  AssociatedInputs? _associatedInputs;

  /// Set the verb of the action
  set verb(String verb) {
    _verb = verb;
  }

  /// Set the data of the action
  set data(dynamic data) {
    _data = data;
  }

  /// Set the associated inputs of the action
  set associatedInputs(AssociatedInputs associatedInputs) {
    _associatedInputs = associatedInputs;
  }

  /// Builds the [ExecuteAction] with the provided configuration
  ExecuteAction build() {
    return ExecuteAction(
      title: _title,
      id: _id,
      verb: _verb,
      data: _data,
      style: _style,
      fallback: _fallback,
      associatedInputs: _associatedInputs,
    );
  }
}

/// Helper mixin for building execute actions v 1.5
class ExecuteActionBuilderV1Dot5 extends ExecuteActionBuilderV1Dot4
    with BaseActionBuilderV1Dot5 {
  @override
  ExecuteAction build() {
    return ExecuteAction(
      title: _title,
      id: _id,
      verb: _verb,
      data: _data,
      style: _style,
      fallback: _fallback,
      associatedInputs: _associatedInputs,
      tooltip: _tooltip,
      isEnabled: _isEnabled,
      mode: _mode,
    );
  }
}
