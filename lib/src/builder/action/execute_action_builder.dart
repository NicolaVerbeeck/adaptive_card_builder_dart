part of 'action_builder.dart';

class ExecuteActionBuilderV1Dot4
    with
        BaseActionBuilderV1Dot0,
        BaseActionBuilderV1Dot1,
        BaseActionBuilderV1Dot2 {
  String? _verb;
  dynamic _data;
  AssociatedInputs? _associatedInputs;

  void setVerb(String verb) {
    _verb = verb;
  }

  void setData(dynamic data) {
    _data = data;
  }

  void setAssociatedInputs(AssociatedInputs associatedInputs) {
    _associatedInputs = associatedInputs;
  }

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
