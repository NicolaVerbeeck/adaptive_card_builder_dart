part of 'element_builder.dart';

class ToggleInputBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  final String _title;
  @protected
  String? _value;
  @protected
  String? _valueOff;
  @protected
  String? _valueOn;

  set value(String value) {
    _value = value;
  }

  set valueOff(String valueOff) {
    _valueOff = valueOff;
  }

  set valueOn(String valueOn) {
    _valueOn = valueOn;
  }

  ToggleInputBuilderV1Dot0({
    required String id,
    required String title,
  }) : _title = title {
    _id = id;
  }

  InputToggle build() {
    return InputToggle(
      title: _title,
      separator: _separator,
      spacing: _spacing,
      id: _id!,
      value: _value,
      valueOff: _valueOff,
      valueOn: _valueOn,
    );
  }
}

class ToggleInputBuilderV1Dot1 extends ToggleInputBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  ToggleInputBuilderV1Dot1({
    required super.id,
    required super.title,
  });

  @override
  InputToggle build() {
    return InputToggle(
      title: _title,
      separator: _separator,
      spacing: _spacing,
      id: _id!,
      value: _value,
      valueOff: _valueOff,
      valueOn: _valueOn,
      height: _height,
    );
  }
}

class ToggleInputBuilderV1Dot2 extends ToggleInputBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  @protected
  bool? _wrap;

  set wrap(bool wrap) {
    _wrap = wrap;
  }

  ToggleInputBuilderV1Dot2({
    required super.id,
    required super.title,
  });

  @override
  InputToggle build() {
    return InputToggle(
      title: _title,
      separator: _separator,
      spacing: _spacing,
      id: _id!,
      value: _value,
      valueOff: _valueOff,
      valueOn: _valueOn,
      height: _height,
      isVisible: _isVisible,
      fallback: _fallback,
      wrap: _wrap,
    );
  }
}

class ToggleInputBuilderV1Dot3 extends ToggleInputBuilderV1Dot2
    with BaseInputElementBuilderV1Dot3 {
  ToggleInputBuilderV1Dot3({
    required super.id,
    required super.title,
  });

  @override
  InputToggle build() {
    return InputToggle(
      title: _title,
      separator: _separator,
      spacing: _spacing,
      id: _id!,
      value: _value,
      valueOff: _valueOff,
      valueOn: _valueOn,
      height: _height,
      isVisible: _isVisible,
      fallback: _fallback,
      wrap: _wrap,
      isRequired: _isRequired,
      errorMessage: _errorMessage,
      label: _label,
    );
  }
}
