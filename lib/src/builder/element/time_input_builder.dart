part of 'element_builder.dart';

class TimeInputBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  DateTime? _max;
  @protected
  DateTime? _min;
  @protected
  String? _placeholder;
  @protected
  DateTime? _value;

  void setMax(DateTime max) {
    _max = max;
  }

  void setMin(DateTime min) {
    _min = min;
  }

  void setPlaceholder(String placeholder) {
    _placeholder = placeholder;
  }

  void setValue(DateTime value) {
    _value = value;
  }

  TimeInputBuilderV1Dot0(String id) {
    _id = id;
  }

  InputTime build() {
    return InputTime(
      id: _id!,
      max: _max,
      min: _min,
      placeholder: _placeholder,
      value: _value,
      separator: _separator,
      spacing: _spacing,
    );
  }
}

class TimeInputBuilderV1Dot1 extends TimeInputBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  TimeInputBuilderV1Dot1(super.id);

  @override
  InputTime build() {
    return InputTime(
      id: _id!,
      max: _max,
      min: _min,
      placeholder: _placeholder,
      value: _value,
      separator: _separator,
      spacing: _spacing,
      height: _height,
    );
  }
}

class TimeInputBuilderV1Dot2 extends TimeInputBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  TimeInputBuilderV1Dot2(super.id);

  @override
  InputTime build() {
    return InputTime(
      id: _id!,
      max: _max,
      min: _min,
      placeholder: _placeholder,
      value: _value,
      separator: _separator,
      spacing: _spacing,
      height: _height,
      fallback: _fallback,
      isVisible: _isVisible,
    );
  }
}

class TimeInputBuilderV1Dot3 extends TimeInputBuilderV1Dot2
    with BaseInputElementBuilderV1Dot3 {
  TimeInputBuilderV1Dot3(super.id);

  @override
  InputTime build() {
    return InputTime(
      id: _id!,
      max: _max,
      min: _min,
      placeholder: _placeholder,
      value: _value,
      separator: _separator,
      spacing: _spacing,
      height: _height,
      fallback: _fallback,
      isVisible: _isVisible,
      errorMessage: _errorMessage,
      label: _label,
      isRequired: _isRequired,
    );
  }
}
