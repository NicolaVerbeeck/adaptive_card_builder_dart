part of '../../element.dart';

class InputTime extends InputElement {
  @override
  String get id => super.id!;

  final DateTime? max;
  final DateTime? min;
  final String? placeholder;
  final DateTime? value;

  InputTime({
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
