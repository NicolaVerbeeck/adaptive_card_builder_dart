part of 'element_builder.dart';

abstract mixin class BaseInputElementBuilderV1Dot3 {
  @protected
  String? _errorMessage;
  @protected
  bool? _isRequired;
  @protected
  String? _label;

  void setErrorMessage(String errorMessage) {
    _errorMessage = errorMessage;
  }

  void setIsRequired(bool isRequired) {
    _isRequired = isRequired;
  }

  void setLabel(String label) {
    _label = label;
  }
}
