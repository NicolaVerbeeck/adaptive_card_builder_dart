part of '../element.dart';

class Media extends Element {
  final List<MediaSource> sources;
  final Uri? poster;
  final String? altText;

  Media({
    required super.fallback,
    required super.height,
    required super.separator,
    required super.spacing,
    required super.id,
    required super.isVisible,
    required this.sources,
    required this.poster,
    required this.altText,
  });

  @override
  void populateJson(Map<String, dynamic> json) {
    json.addAll({
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
