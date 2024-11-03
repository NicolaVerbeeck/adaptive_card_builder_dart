part of 'action_builder.dart';

class SubmitActionBuilderV1Dot0 with BaseActionBuilderV1Dot0 {
  dynamic _data;

  void setData(dynamic data) {
    _data = data;
  }

  SubmitAction build() {
    return SubmitAction(
      title: _title,
      id: _id,
      data: _data,
    );
  }
}

class SubmitActionBuilderV1Dot1 extends SubmitActionBuilderV1Dot0 with BaseActionBuilderV1Dot1 {
  @override
  SubmitAction build() {
    return SubmitAction(
      title: _title,
      id: _id,
      data: _data,
    );
  }
}

class SubmitActionBuilderV1Dot2 extends SubmitActionBuilderV1Dot1 with BaseActionBuilderV1Dot2 {
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

class SubmitActionBuilderV1Dot3 extends SubmitActionBuilderV1Dot2 with BaseActionBuilderV1Dot2 {
  AssociatedInputs? _associatedInputs;

  void setAssociatedInputs(AssociatedInputs associatedInputs) {
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

class SubmitActionBuilderV1Dot5 extends SubmitActionBuilderV1Dot3 with BaseActionBuilderV1Dot5 {
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
