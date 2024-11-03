part of '../../element.dart';

class InputToggle extends InputElement {
  @override
  String get id => super.id!;
  final String? value;
  final String? valueOff;
  final String? valueOn;
  final bool? wrap;

  InputToggle({
    required super.fallback,
    required super.height,
    required super.separator,
    required super.spacing,
    required String id,
    required super.isVisible,
    required super.errorMessage,
    required super.isRequired,
    required super.label,
    required this.value,
    required this.valueOff,
    required this.valueOn,
    required this.wrap,
  }) : super(id: id);

  @override
  void populateInputJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'Input.Toggle',
      'id': id,
      if (value != null) 'value': value,
      if (valueOff != null) 'valueOff': valueOff,
      if (valueOn != null) 'valueOn': valueOn,
      if (wrap != null) 'wrap': wrap,
    });
  }
}
