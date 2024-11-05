part of 'element_builder.dart';

/// A builder to create [InputTime] element for adaptive cards version 1.0
class TimeInputBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  DateTime? _max;
  @protected
  DateTime? _min;
  @protected
  String? _placeholder;
  @protected
  DateTime? _value;

  /// Sets the maximum value of the input field
  set max(DateTime max) {
    _max = max;
  }

  /// Sets the minimum value of the input field
  set min(DateTime min) {
    _min = min;
  }

  /// Sets the placeholder text for the input field
  set placeholder(String placeholder) {
    _placeholder = placeholder;
  }

  /// Sets the value of the input field
  set value(DateTime value) {
    _value = value;
  }

  /// Creates a builder with the element [id]
  TimeInputBuilderV1Dot0(String id) {
    _id = id;
  }

  /// Builds the [InputTime] element with the provided configuration
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

/// A builder to create [InputTime] element for adaptive cards version 1.1
class TimeInputBuilderV1Dot1 extends TimeInputBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  /// Creates a builder with the element [id]
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

/// A builder to create [InputTime] element for adaptive cards version 1.2
class TimeInputBuilderV1Dot2 extends TimeInputBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  /// Creates a builder with the element [id]
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

/// A builder to create [InputTime] element for adaptive cards version 1.3
class TimeInputBuilderV1Dot3 extends TimeInputBuilderV1Dot2
    with BaseInputElementBuilderV1Dot3 {
  /// Creates a builder with the element [id]
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
