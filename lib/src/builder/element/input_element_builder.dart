part of 'element_builder.dart';

/// A mixin class for common input elements (from 1.3)
abstract mixin class BaseInputElementBuilderV1Dot3 {
  @protected
  String? _errorMessage;
  @protected
  bool? _isRequired;
  @protected
  String? _label;

  /// Set the error message for the input element
  set errorMessage(String errorMessage) {
    _errorMessage = errorMessage;
  }

  /// Set whether the input element is required
  set isRequired(bool isRequired) {
    _isRequired = isRequired;
  }

  /// Set the label for the input element
  set label(String label) {
    _label = label;
  }
}
