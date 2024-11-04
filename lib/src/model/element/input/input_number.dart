part of '../../element.dart';

class InputNumber extends InputElement {
  @override
  String get id => super.id!;
  final num? max;
  final num? min;
  final String? placeholder;
  final num? value;

  InputNumber({
    super.fallback,
    super.height,
    super.separator,
    super.spacing,
    required String id,
    super.isVisible,
    super.errorMessage,
    super.isRequired,
    super.label,
    this.max,
    this.min,
    this.placeholder,
    this.value,
  }) : super(id: id);

  @override
  void populateInputJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'Input.Number',
      'id': id,
      if (max != null) 'max': max,
      if (min != null) 'min': min,
      if (placeholder != null) 'placeholder': placeholder,
      if (value != null) 'value': value,
    });
  }
}
