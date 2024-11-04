part of '../element.dart';

class Media extends Element {
  final List<MediaSource> sources;
  final Uri? poster;
  final String? altText;

  Media({
    required this.sources,
    super.fallback,
    super.height,
    super.separator,
    super.spacing,
    super.id,
    super.isVisible,
    this.poster,
    this.altText,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'Media',
      'sources': sources.map((e) => e.toJson()).toList(),
      if (poster != null) 'poster': poster.toString(),
      if (altText != null) 'altText': altText,
    });
  }
}

class MediaSource {
  final Uri url;
  final String? mimeType;

  MediaSource({
    required this.url,
    required this.mimeType,
  });

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'url': url.toString(),
      if (mimeType != null) 'mimeType': mimeType,
    };
    return json;
  }
}
