part of '../../element.dart';

class InputChoiceSet extends InputElement {
  @override
  String get id => super.id!;

  final List<InputChoice>? choices;
  final bool? isMultiSelect;
  final ChoiceInputStyle? style;
  final String? value;
  final String? placeholder;
  final bool? wrap;

  InputChoiceSet({
    required String id,
    super.fallback,
    super.height,
    super.separator,
    super.spacing,
    super.isVisible,
    super.errorMessage,
    super.isRequired,
    super.label,
    this.choices,
    this.isMultiSelect,
    this.style,
    this.value,
    this.placeholder,
    this.wrap,
  }) : super(id: id);

  @override
  void populateInputJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'Input.ChoiceSet',
      'id': id,
      if (choices != null) 'choices': choices!.map((e) => e.toJson()).toList(),
      if (isMultiSelect != null) 'isMultiSelect': isMultiSelect,
      if (style != null) 'style': style!.toJson(),
      if (value != null) 'value': value,
      if (placeholder != null) 'placeholder': placeholder,
      if (wrap != null) 'wrap': wrap,
    });
  }
}

class InputChoice {
  final String title;
  final String value;

  InputChoice({
    required this.title,
    required this.value,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'value': value,
    };
  }
}

enum ChoiceInputStyle {
  compact,
  expanded,
  filtered,
  ;

  String toJson() => switch (this) {
        ChoiceInputStyle.compact => 'compact',
        ChoiceInputStyle.expanded => 'expanded',
        ChoiceInputStyle.filtered => 'filtered',
      };
}
