part of 'element_builder.dart';

class MediaBuilderV1Dot1
    with BaseElementBuilderV1Dot0, BaseElementBuilderV1Dot1 {
  @protected
  final List<MediaSource> _sources;
  @protected
  Uri? _poster;
  @protected
  String? altText;

  void setPoster(Uri poster) {
    _poster = poster;
  }

  void setAltText(String altText) {
    this.altText = altText;
  }

  MediaBuilderV1Dot1(this._sources);

  Media build() {
    return Media(
      sources: _sources,
      poster: _poster,
      altText: altText,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      height: _height,
    );
  }
}

class MediaBuilderV1Dot2 extends MediaBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  MediaBuilderV1Dot2(super.sources);

  @override
  Media build() {
    return Media(
      sources: _sources,
      poster: _poster,
      altText: altText,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      height: _height,
      isVisible: _isVisible,
      fallback: _fallback,
    );
  }
}
