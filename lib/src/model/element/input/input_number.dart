part of '../../element.dart';

class InputNumber extends InputElement {
  @override
  String get id => super.id!;
  final num? max;
  final num? min;
  final String? placeholder;
  final num? value;

  InputNumber({
    required super.fallback,
    required super.height,
    required super.separator,
    required super.spacing,
    required String id,
    required super.isVisible,
    required super.errorMessage,
    required super.isRequired,
    required super.label,
    required this.max,
    required this.min,
    required this.placeholder,
    required this.value,
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
