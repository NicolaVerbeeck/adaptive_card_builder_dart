part of 'element_builder.dart';

/// Builder for choice sets in adaptive cards version 1.0
class ChoiceSetBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  List<InputChoice>? _choices;
  @protected
  bool? _isMultiSelect;
  @protected
  ChoiceInputStyle? _style;
  @protected
  String? _placeholder;
  @protected
  String? _value;

  /// Sets list of choices for the choice set
  set choices(List<InputChoice> choices) {
    _choices = choices;
  }

  /// Sets whether the choice set allows multiple selections
  set isMultiSelect(bool isMultiSelect) {
    _isMultiSelect = isMultiSelect;
  }

  /// Sets the style of the choice set
  set style(ChoiceInputStyle style) {
    _style = style;
  }

  /// Sets the placeholder text for the choice set
  set placeholder(String placeholder) {
    _placeholder = placeholder;
  }

  /// Sets the value of the choice set
  set value(String value) {
    _value = value;
  }

  /// Constructor for the ChoiceSetBuilderV1Dot0 taking the id
  ChoiceSetBuilderV1Dot0(String id) {
    _id = id;
  }

  /// Builds the choice set with the provided configuration
  InputChoiceSet build() {
    return InputChoiceSet(
      id: _id!,
      choices: _choices,
      isMultiSelect: _isMultiSelect,
      style: _style,
      placeholder: _placeholder,
      value: _value,
      separator: _separator,
      spacing: _spacing,
    );
  }
}

/// Builder for choice sets in adaptive cards version 1.1
class ChoiceSetBuilderV1Dot1 extends ChoiceSetBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  /// Constructor for the ChoiceSetBuilderV1Dot1 taking the id
  ChoiceSetBuilderV1Dot1(super.id);

  @override
  InputChoiceSet build() {
    return InputChoiceSet(
      id: _id!,
      choices: _choices,
      isMultiSelect: _isMultiSelect,
      style: _style,
      placeholder: _placeholder,
      value: _value,
      separator: _separator,
      spacing: _spacing,
      height: _height,
    );
  }
}

/// Builder for choice sets in adaptive cards version 1.2
class ChoiceSetBuilderV1Dot2 extends ChoiceSetBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  @protected
  bool? _wrap;

  /// Sets whether the choice set should wrap
  set wrap(bool wrap) {
    _wrap = wrap;
  }

  /// Constructor for the ChoiceSetBuilderV1Dot2 taking the id
  ChoiceSetBuilderV1Dot2(super.id);

  @override
  InputChoiceSet build() {
    return InputChoiceSet(
      id: _id!,
      choices: _choices,
      isMultiSelect: _isMultiSelect,
      style: _style,
      placeholder: _placeholder,
      value: _value,
      separator: _separator,
      spacing: _spacing,
      height: _height,
      wrap: _wrap,
      isVisible: _isVisible,
      fallback: _fallback,
    );
  }
}

/// Builder for choice sets in adaptive cards version 1.3
class ChoiceSetBuilderV1Dot3 extends ChoiceSetBuilderV1Dot2
    with BaseInputElementBuilderV1Dot3 {
  /// Constructor for the ChoiceSetBuilderV1Dot3 taking the id
  ChoiceSetBuilderV1Dot3(super.id);

  @override
  InputChoiceSet build() {
    return InputChoiceSet(
      id: _id!,
      choices: _choices,
      isMultiSelect: _isMultiSelect,
      style: _style,
      placeholder: _placeholder,
      value: _value,
      separator: _separator,
      spacing: _spacing,
      height: _height,
      wrap: _wrap,
      isVisible: _isVisible,
      fallback: _fallback,
      isRequired: _isRequired,
      label: _label,
      errorMessage: _errorMessage,
    );
  }
}
