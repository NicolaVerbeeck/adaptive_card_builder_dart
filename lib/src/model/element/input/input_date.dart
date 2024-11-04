part of '../../element.dart';

class InputDate extends InputElement {
  @override
  String get id => super.id!;

  final DateTime? max;
  final DateTime? min;
  final String? placeholder;
  final DateTime? value;

  InputDate({
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
      'type': 'Input.Date',
      'id': id,
      if (max != null) 'max': _toDate(max!),
      if (min != null) 'min': _toDate(min!),
      if (placeholder != null) 'placeholder': placeholder,
      if (value != null) 'value': _toDate(value!),
    });
  }
}

// Dates are YYYY-MM-DD
String _toDate(DateTime dateTime) {
  return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}';
}
