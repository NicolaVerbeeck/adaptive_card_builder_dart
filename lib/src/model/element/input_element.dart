part of '../element.dart';

sealed class InputElement extends Element {
  final String? errorMessage;
  final bool? isRequired;
  final String? label;

  InputElement({
    required super.fallback,
    required super.height,
    required super.separator,
    required super.spacing,
    required super.id,
    required super.isVisible,
    required this.errorMessage,
    required this.isRequired,
    required this.label,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      if (errorMessage != null) 'errorMessage': errorMessage,
      if (isRequired != null) 'isRequired': isRequired,
      if (label != null) 'label': label,
    });
    populateInputJson(container);
  }

  @protected
  void populateInputJson(Map<String, dynamic> container);
}
