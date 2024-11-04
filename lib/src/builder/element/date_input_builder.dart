part of 'element_builder.dart';

class DateInputBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
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

  DateInputBuilderV1Dot0(String id) {
    setId(id);
  }

  InputDate build() {
    return InputDate(
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

class DateInputBuilderV1Dot1 extends DateInputBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  DateInputBuilderV1Dot1(super.id);

  @override
  InputDate build() {
    return InputDate(
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

class DateInputBuilderV1Dot2 extends DateInputBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  DateInputBuilderV1Dot2(super.id);

  @override
  InputDate build() {
    return InputDate(
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

class DateInputBuilderV1Dot3 extends DateInputBuilderV1Dot2
    with BaseInputElementBuilderV1Dot3 {
  DateInputBuilderV1Dot3(super.id);

  @override
  InputDate build() {
    return InputDate(
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
