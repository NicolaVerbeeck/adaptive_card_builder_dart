part of '../element.dart';

class ImageSet extends Element {
  final List<Image> images;
  final ImageSize? imageSize;

  ImageSet({
    required this.images,
    super.fallback,
    super.height,
    super.separator,
    super.spacing,
    super.id,
    super.isVisible,
    this.imageSize,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'ImageSet',
      'images': images.map((e) => e.toJson()).toList(),
      if (imageSize != null) 'imageSize': imageSize!.toJson(),
    });
  }
}
