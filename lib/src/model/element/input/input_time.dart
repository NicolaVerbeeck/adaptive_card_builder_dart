part of '../../element.dart';

class InputTime extends InputElement {
  @override
  String get id => super.id!;

  final DateTime? max;
  final DateTime? min;
  final String? placeholder;
  final DateTime? value;

  InputTime({
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
      if (max != null) 'max': _toTime(max!),
      if (min != null) 'min': _toTime(min!),
      if (placeholder != null) 'placeholder': placeholder,
      if (value != null) 'value': _toTime(value!),
    });
  }
}

// Time is HH:MM
String _toTime(DateTime dateTime) {
  return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
}
