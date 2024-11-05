part of 'element_builder.dart';

/// Builder for an [InputNumber] element for adaptive cards version 1.0
class NumberInputBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  num? _max;
  @protected
  num? _min;
  @protected
  String? _placeholder;
  @protected
  num? _value;

  /// Set the maximum value for the input
  set max(num value) => _max = value;

  /// Set the minimum value for the input
  set min(num value) => _min = value;

  /// Set the placeholder text for the input
  set placeholder(String value) => _placeholder = value;

  /// Set the value for the input
  set value(num value) => _value = value;

  /// Constructor for builder taking the id
  NumberInputBuilderV1Dot0(String id) {
    _id = id;
  }

  /// Build the [InputNumber] element with the provided configuration
  InputNumber build() {
    return InputNumber(
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

/// Builder for an [InputNumber] element for adaptive cards version 1.1
class NumberInputBuilderV1Dot1 extends NumberInputBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  /// Constructor for builder taking the id
  NumberInputBuilderV1Dot1(super.id);

  @override
  InputNumber build() {
    return InputNumber(
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

/// Builder for an [InputNumber] element for adaptive cards version 1.2
class NumberInputBuilderV1Dot2 extends NumberInputBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  /// Constructor for builder taking the id
  NumberInputBuilderV1Dot2(super.id);

  @override
  InputNumber build() {
    return InputNumber(
      id: _id!,
      max: _max,
      min: _min,
      placeholder: _placeholder,
      value: _value,
      separator: _separator,
      spacing: _spacing,
      height: _height,
      isVisible: _isVisible,
      fallback: _fallback,
    );
  }
}

/// Builder for an [InputNumber] element for adaptive cards version 1.3
class NumberInputBuilderV1Dot3 extends NumberInputBuilderV1Dot2
    with BaseInputElementBuilderV1Dot3 {
  /// Constructor for builder taking the id
  NumberInputBuilderV1Dot3(super.id);

  @override
  InputNumber build() {
    return InputNumber(
      id: _id!,
      max: _max,
      min: _min,
      placeholder: _placeholder,
      value: _value,
      separator: _separator,
      spacing: _spacing,
      height: _height,
      isVisible: _isVisible,
      fallback: _fallback,
      label: _label,
      errorMessage: _errorMessage,
      isRequired: _isRequired,
    );
  }
}
