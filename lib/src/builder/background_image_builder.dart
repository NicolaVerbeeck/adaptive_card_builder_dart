import 'package:adaptive_card_builder/src/model/background_image.dart';

/// Builder for background images
class BackgroundImageBuilder {
  final Uri _url;
  ImageFillMode? _fillMode;
  HorizontalAlignment? _horizontalAlignment;
  VerticalAlignment? _verticalAlignment;

  /// Sets the fill mode for the background image
  set fillMode(ImageFillMode fillMode) {
    _fillMode = fillMode;
  }

  /// Sets the horizontal alignment for the background image
  set horizontalAlignment(HorizontalAlignment horizontalAlignment) {
    _horizontalAlignment = horizontalAlignment;
  }

  /// Sets the vertical alignment for the background image
  set verticalAlignment(VerticalAlignment verticalAlignment) {
    _verticalAlignment = verticalAlignment;
  }

  /// Constructor for the BackgroundImageBuilder taking the URL of the image
  BackgroundImageBuilder(this._url);

  /// Builds the background image object with the provided configuration
  BackgroundImage build() {
    return BackgroundImage(
      url: _url,
      fillMode: _fillMode,
      horizontalAlignment: _horizontalAlignment,
      verticalAlignment: _verticalAlignment,
    );
  }
}
