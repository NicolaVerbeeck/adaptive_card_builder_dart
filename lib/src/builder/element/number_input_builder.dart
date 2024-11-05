part of 'element_builder.dart';

class NumberInputBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  num? _max;
  @protected
  num? _min;
  @protected
  String? _placeholder;
  @protected
  num? _value;

  NumberInputBuilderV1Dot0(String id) {
    _id = id;
  }

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

class NumberInputBuilderV1Dot1 extends NumberInputBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
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

class NumberInputBuilderV1Dot2 extends NumberInputBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
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

class NumberInputBuilderV1Dot3 extends NumberInputBuilderV1Dot2
    with BaseInputElementBuilderV1Dot3 {
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
