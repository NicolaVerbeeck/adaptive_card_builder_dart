
import 'package:adaptive_card_builder/src/model/background_image.dart';

class BackgroundImageBuilder {
  final Uri _url;
  ImageFillMode? _fillMode;
  HorizontalAlignment? _horizontalAlignment;
  VerticalAlignment? _verticalAlignment;

  void setFillMode(ImageFillMode fillMode) {
    _fillMode = fillMode;
  }

  void setHorizontalAlignment(HorizontalAlignment horizontalAlignment) {
    _horizontalAlignment = horizontalAlignment;
  }

  void setVerticalAlignment(VerticalAlignment verticalAlignment) {
    _verticalAlignment = verticalAlignment;
  }

  BackgroundImageBuilder(this._url);

  BackgroundImage build() {
    return BackgroundImage(
      url: _url,
      fillMode: _fillMode,
      horizontalAlignment: _horizontalAlignment,
      verticalAlignment: _verticalAlignment,
    );
  }
}