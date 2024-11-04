part of '../../element.dart';

class InputText extends InputElement {
  @override
  String get id => super.id!;
  final bool? isMultiline;
  final int? maxLength;
  final String? placeholder;
  final String? regex;
  final TextInputStyle? style;
  final ISelectAction? inlineAction;
  final String? value;

  InputText({
    super.fallback,
    super.height,
    super.separator,
    super.spacing,
    super.isVisible,
    super.errorMessage,
    super.isRequired,
    super.label,
    required String id,
    this.isMultiline,
    this.maxLength,
    this.placeholder,
    this.regex,
    this.style,
    this.inlineAction,
    this.value,
  }) : super(id: id);

  @override
  void populateInputJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'Input.Text',
      'id': id,
      if (isMultiline != null) 'isMultiline': isMultiline,
      if (maxLength != null) 'maxLength': maxLength,
      if (placeholder != null) 'placeholder': placeholder,
      if (regex != null) 'regex': regex,
      if (style != null) 'style': style!.toJson(),
      if (inlineAction != null) 'inlineAction': inlineAction!.toJson(),
      if (value != null) 'value': value,
    });
  }
}

enum TextInputStyle {
  text,
  tel,
  url,
  email,
  password,
  ;

  String toJson() => switch (this) {
        TextInputStyle.text => 'text',
        TextInputStyle.tel => 'tel',
        TextInputStyle.url => 'url',
        TextInputStyle.email => 'email',
        TextInputStyle.password => 'password',
      };
}
