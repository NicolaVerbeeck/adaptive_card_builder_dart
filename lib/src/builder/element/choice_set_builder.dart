part of 'element_builder.dart';

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

  void setChoices(List<InputChoice> choices) {
    _choices = choices;
  }

  void setIsMultiSelect(bool isMultiSelect) {
    _isMultiSelect = isMultiSelect;
  }

  void setStyle(ChoiceInputStyle style) {
    _style = style;
  }

  void setPlaceholder(String placeholder) {
    _placeholder = placeholder;
  }

  void setValue(String value) {
    _value = value;
  }

  ChoiceSetBuilderV1Dot0(String id) {
    setId(id);
  }

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

class ChoiceSetBuilderV1Dot1 extends ChoiceSetBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
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

class ChoiceSetBuilderV1Dot2 extends ChoiceSetBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  @protected
  bool? _wrap;

  void setWrap(bool wrap) {
    _wrap = wrap;
  }

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

class ChoiceSetBuilderV1Dot3 extends ChoiceSetBuilderV1Dot2
    with BaseInputElementBuilderV1Dot3 {
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
