part of '../../element.dart';

class InputToggle extends InputElement {
  final String title;
  @override
  String get id => super.id!;
  final String? value;
  final String? valueOff;
  final String? valueOn;
  final bool? wrap;

  InputToggle({
    required String id,
    required this.title,
    super.fallback,
    super.height,
    super.separator,
    super.spacing,
    super.isVisible,
    super.errorMessage,
    super.isRequired,
    super.label,
    this.value,
    this.valueOff,
    this.valueOn,
    this.wrap,
  }) : super(id: id);

  @override
  void populateInputJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'Input.Toggle',
      'id': id,
      'title': title,
      if (value != null) 'value': value,
      if (valueOff != null) 'valueOff': valueOff,
      if (valueOn != null) 'valueOn': valueOn,
      if (wrap != null) 'wrap': wrap,
    });
  }
}
