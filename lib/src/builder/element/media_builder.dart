part of 'element_builder.dart';

/// Builder for creating a [Media] object for adaptive cards version 1.1
class MediaBuilderV1Dot1
    with BaseElementBuilderV1Dot0, BaseElementBuilderV1Dot1 {
  @protected
  final List<MediaSource> _sources;
  @protected
  Uri? _poster;
  @protected
  String? _altText;

  /// Set the poster image for the media
  set poster(Uri poster) {
    _poster = poster;
  }

  /// Set the alt text for the media
  set altText(String altText) {
    this.altText = altText;
  }

  /// Create a builder with a list of [MediaSource] sources
  MediaBuilderV1Dot1(this._sources);

  /// Build the [Media] object with the provided configuration
  Media build() {
    return Media(
      sources: _sources,
      poster: _poster,
      altText: _altText,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      height: _height,
    );
  }
}

/// Builder for creating a [Media] object for adaptive cards version 1.2
class MediaBuilderV1Dot2 extends MediaBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  /// Create a builder with a list of [MediaSource] sources
  MediaBuilderV1Dot2(super.sources);

  @override
  Media build() {
    return Media(
      sources: _sources,
      poster: _poster,
      altText: _altText,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      height: _height,
      isVisible: _isVisible,
      fallback: _fallback,
    );
  }
}
