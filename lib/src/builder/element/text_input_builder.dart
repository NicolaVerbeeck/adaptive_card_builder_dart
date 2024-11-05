part of 'element_builder.dart';

/// A builder to create [InputText] element for adaptive cards version 1.0
class TextInputBuilderV1Dot0 extends BaseElementBuilderV1Dot0 {
  @protected
  bool? _isMultiline;
  @protected
  int? _maxLength;
  @protected
  String? _placeholder;
  @protected
  TextInputStyle? _style;
  @protected
  String? _value;

  /// Sets the input field to be multiline or not
  set isMultiline(bool isMultiline) {
    _isMultiline = isMultiline;
  }

  /// Sets the maximum length of the input field
  set maxLength(int maxLength) {
    _maxLength = maxLength;
  }

  /// Sets the placeholder text for the input field
  set placeholder(String placeholder) {
    _placeholder = placeholder;
  }

  /// Sets the style of the input field
  set style(TextInputStyle style) {
    _style = style;
  }

  /// Sets the value of the input field
  set value(String value) {
    _value = value;
  }

  /// Creates a builder with the element [id]
  TextInputBuilderV1Dot0(String id) {
    _id = id;
  }

  /// Builds the [InputText] element with the provided configuration
  InputText build() {
    return InputText(
      id: _id!,
      style: _style,
      value: _value,
      isMultiline: _isMultiline,
      maxLength: _maxLength,
      placeholder: _placeholder,
      separator: _separator,
      spacing: _spacing,
    );
  }
}

/// A builder to create [InputText] element for adaptive cards version 1.1
class TextInputBuilderV1Dot1 extends TextInputBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  /// Creates a builder with the element [id]
  TextInputBuilderV1Dot1(super.id);

  @override
  InputText build() {
    return InputText(
      id: _id!,
      style: _style,
      value: _value,
      isMultiline: _isMultiline,
      maxLength: _maxLength,
      placeholder: _placeholder,
      separator: _separator,
      spacing: _spacing,
      height: _height,
    );
  }
}

/// A builder to create [InputText] element for adaptive cards version 1.2
class TextInputBuilderV1Dot2 extends TextInputBuilderV1Dot1
    with BaseElementBuilderV1Dot2, SelectActionBuilderHelperV1Dot2 {
  @protected
  ISelectAction? _inlineAction;

  /// Sets the inline action for the input field
  set inlineAction(ISelectAction inlineAction) {
    _inlineAction = inlineAction;
  }

  /// Creates a builder with the element [id]
  TextInputBuilderV1Dot2(super.id);

  @override
  InputText build() {
    return InputText(
      id: _id!,
      style: _style,
      value: _value,
      isMultiline: _isMultiline,
      maxLength: _maxLength,
      placeholder: _placeholder,
      separator: _separator,
      spacing: _spacing,
      inlineAction: _inlineAction,
      isVisible: _isVisible,
      height: _height,
    );
  }

  @override
  @protected
  set selectAction(ISelectAction selectAction) {
    inlineAction = selectAction;
  }
}

/// A builder to create [InputText] element for adaptive cards version 1.3
class TextInputBuilderV1Dot3 extends TextInputBuilderV1Dot2
    with BaseInputElementBuilderV1Dot3 {
  @protected
  String? _regex;

  /// Sets the regular expression to validate the input field
  set regex(String regex) {
    _regex = regex;
  }

  /// Sets the regular expression to validate the input field
  TextInputBuilderV1Dot3(super.id);

  @override
  InputText build() {
    return InputText(
      id: _id!,
      style: _style,
      value: _value,
      isMultiline: _isMultiline,
      maxLength: _maxLength,
      placeholder: _placeholder,
      separator: _separator,
      spacing: _spacing,
      inlineAction: _inlineAction,
      isVisible: _isVisible,
      errorMessage: _errorMessage,
      isRequired: _isRequired,
      label: _label,
      regex: _regex,
      height: _height,
    );
  }
}

/// A builder to create [InputText] element for adaptive cards version 1.4
class TextInputBuilderV1Dot4 extends TextInputBuilderV1Dot3
    with SelectActionBuilderHelperV1Dot4 {
  /// Creates a builder with the element [id]
  TextInputBuilderV1Dot4(super.id);
}

/// A builder to create [InputText] element for adaptive cards version 1.5
class TextInputBuilderV1Dot5 extends TextInputBuilderV1Dot4
    with SelectActionBuilderHelperV1Dot5 {
  /// Creates a builder with the element [id]
  TextInputBuilderV1Dot5(super.id);
}
