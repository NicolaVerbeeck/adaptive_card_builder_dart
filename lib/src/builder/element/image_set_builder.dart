part of 'element_builder.dart';

class ImageSetBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  final _images = <Image>[];
  @protected
  ImageSize? _imageSize;

  void setImageSize(ImageSize imageSize) {
    _imageSize = imageSize;
  }

  void addImage(Uri url, void Function(ImageBuilderV1Dot0) builder) {
    final imageBuilder = ImageBuilderV1Dot0(url);
    builder(imageBuilder);
    _images.add(imageBuilder.build());
  }

  ImageSet build() {
    return ImageSet(
      images: _images,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      imageSize: _imageSize,
    );
  }
}

class ImageSetBuilderV1Dot1 extends ImageSetBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  @override
  void addImage(Uri url, void Function(ImageBuilderV1Dot1) builder) {
    final imageBuilder = ImageBuilderV1Dot1(url);
    builder(imageBuilder);
    _images.add(imageBuilder.build());
  }

  @override
  ImageSet build() {
    return ImageSet(
      images: _images,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      height: _height,
      imageSize: _imageSize,
    );
  }
}

class ImageSetBuilderV1Dot2 extends ImageSetBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  @override
  void addImage(Uri url, void Function(ImageBuilderV1Dot2) builder) {
    final imageBuilder = ImageBuilderV1Dot2(url);
    builder(imageBuilder);
    _images.add(imageBuilder.build());
  }

  @override
  ImageSet build() {
    return ImageSet(
      images: _images,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      height: _height,
      isVisible: _isVisible,
      fallback: _fallback,
      imageSize: _imageSize,
    );
  }
}
