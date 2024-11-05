part of 'element_builder.dart';

/// Builder for [InputToggle] for adaptive cards version 1.0
class ToggleInputBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  final String _title;
  @protected
  String? _value;
  @protected
  String? _valueOff;
  @protected
  String? _valueOn;

  /// The value of the toggle input
  set value(String value) {
    _value = value;
  }

  /// The value when the toggle is off
  set valueOff(String valueOff) {
    _valueOff = valueOff;
  }

  /// The value when the toggle is on
  set valueOn(String valueOn) {
    _valueOn = valueOn;
  }

  /// Creates a builder for [InputToggle]
  ToggleInputBuilderV1Dot0({
    required String id,
    required String title,
  }) : _title = title {
    _id = id;
  }

  /// Builds the [InputToggle] with the provided configuration
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

/// Builder for [InputToggle] for adaptive cards version 1.1
class ToggleInputBuilderV1Dot1 extends ToggleInputBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  /// Creates a builder for [InputToggle]
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

/// Builder for [InputToggle] for adaptive cards version 1.2
class ToggleInputBuilderV1Dot2 extends ToggleInputBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  @protected
  bool? _wrap;

  /// Whether the input should wrap
  set wrap(bool wrap) {
    _wrap = wrap;
  }

  /// Creates a builder for [InputToggle]
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

/// Builder for [InputToggle] for adaptive cards version 1.3
class ToggleInputBuilderV1Dot3 extends ToggleInputBuilderV1Dot2
    with BaseInputElementBuilderV1Dot3 {
  /// Creates a builder for [InputToggle]
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
