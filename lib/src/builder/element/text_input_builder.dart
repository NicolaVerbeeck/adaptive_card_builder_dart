part of 'element_builder.dart';

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

  void setIsMultiline(bool isMultiline) {
    _isMultiline = isMultiline;
  }

  void setMaxLength(int maxLength) {
    _maxLength = maxLength;
  }

  void setPlaceholder(String placeholder) {
    _placeholder = placeholder;
  }

  void setStyle(TextInputStyle style) {
    _style = style;
  }

  void setValue(String value) {
    _value = value;
  }

  TextInputBuilderV1Dot0(String id) {
    setId(id);
  }

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

class TextInputBuilderV1Dot1 extends TextInputBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
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

class TextInputBuilderV1Dot2 extends TextInputBuilderV1Dot1
    with BaseElementBuilderV1Dot2, SelectActionBuilderHelperV1Dot2 {
  @protected
  ISelectAction? _inlineAction;

  void setInlineAction(ISelectAction inlineAction) {
    _inlineAction = inlineAction;
  }

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
    setInlineAction(selectAction);
  }
}

class TextInputBuilderV1Dot3 extends TextInputBuilderV1Dot2
    with BaseInputElementBuilderV1Dot3 {
  @protected
  String? _regex;

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

class TextInputBuilderV1Dot4 extends TextInputBuilderV1Dot3
    with SelectActionBuilderHelperV1Dot4 {
  TextInputBuilderV1Dot4(super.id);
}

class TextInputBuilderV1Dot5 extends TextInputBuilderV1Dot4
    with SelectActionBuilderHelperV1Dot5 {
  TextInputBuilderV1Dot5(super.id);
}
