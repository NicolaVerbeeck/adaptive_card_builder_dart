part of '../element.dart';

class ImageSet extends Element {
  final List<Image> images;
  final ImageSize? imageSize;

  ImageSet({
    required super.fallback,
    required super.height,
    required super.separator,
    required super.spacing,
    required super.id,
    required super.isVisible,
    required this.images,
    required this.imageSize,
  });

  @override
  void populateJson(Map<String, dynamic> json) {
    json.addAll({
      'type': 'ImageSet',
      'images': images.map((e) => e.toJson()).toList(),
      if (imageSize != null) 'imageSize': imageSize!.toJson(),
    });
  }
}
