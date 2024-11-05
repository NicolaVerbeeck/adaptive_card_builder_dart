part of 'element_builder.dart';

/// Date input builder for adaptive cards version 1.0
class DateInputBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  DateTime? _max;
  @protected
  DateTime? _min;
  @protected
  String? _placeholder;
  @protected
  DateTime? _value;

  /// Sets the max value of the date input
  set max(DateTime max) {
    _max = max;
  }

  /// Sets the min value of the date input
  set min(DateTime min) {
    _min = min;
  }

  /// Sets the placeholder of the date input
  set placeholder(String placeholder) {
    _placeholder = placeholder;
  }

  /// Set the value of the date input
  set value(DateTime value) {
    _value = value;
  }

  /// Creates a date input builder with an [id]
  DateInputBuilderV1Dot0(String id) {
    _id = id;
  }

  /// Builds the date input based on the provided configuration
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

/// Date input builder for adaptive cards version 1.1
class DateInputBuilderV1Dot1 extends DateInputBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  /// Creates a date input builder with an [id]
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

/// Date input builder for adaptive cards version 1.2
class DateInputBuilderV1Dot2 extends DateInputBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  /// Creates a date input builder with an [id]
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

/// Date input builder for adaptive cards version 1.3
class DateInputBuilderV1Dot3 extends DateInputBuilderV1Dot2
    with BaseInputElementBuilderV1Dot3 {
  /// Creates a date input builder with an [id]
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
