part of 'action_builder.dart';

/// Helper mixin for building open url actions v 1.0
class OpenUrlActionBuilderV1Dot0 with BaseActionBuilderV1Dot0 {
  @protected
  final Uri _url;

  /// Initialize the builder with the [url]
  OpenUrlActionBuilderV1Dot0(Uri url) : _url = url;

  /// Builds the [OpenUrlAction] with the provided configuration
  OpenUrlAction build() {
    return OpenUrlAction(
      title: _title,
      id: _id,
      url: _url,
    );
  }
}

/// Helper mixin for building open url actions v 1.1
class OpenUrlActionBuilderV1Dot1 extends OpenUrlActionBuilderV1Dot0
    with BaseActionBuilderV1Dot1 {
  /// Initialize the builder with the [url]
  OpenUrlActionBuilderV1Dot1(super.url);

  @override
  OpenUrlAction build() {
    return OpenUrlAction(
      title: _title,
      id: _id,
      iconUrl: _iconUrl,
      url: _url,
    );
  }
}

/// Helper mixin for building open url actions v 1.2
class OpenUrlActionBuilderV1Dot2 extends OpenUrlActionBuilderV1Dot1
    with BaseActionBuilderV1Dot2 {
  /// Initialize the builder with the [url]
  OpenUrlActionBuilderV1Dot2(super.url);

  @override
  OpenUrlAction build() {
    return OpenUrlAction(
      title: _title,
      id: _id,
      iconUrl: _iconUrl,
      style: _style,
      fallback: _fallback,
      url: _url,
    );
  }
}

/// Helper mixin for building open url actions v 1.3
class OpenUrlActionBuilderV1Dot5 extends OpenUrlActionBuilderV1Dot2
    with BaseActionBuilderV1Dot5 {
  /// Initialize the builder with the [url]
  OpenUrlActionBuilderV1Dot5(super.url);

  @override
  OpenUrlAction build() {
    return OpenUrlAction(
      title: _title,
      id: _id,
      iconUrl: _iconUrl,
      style: _style,
      fallback: _fallback,
      tooltip: _tooltip,
      isEnabled: _isEnabled,
      mode: _mode,
      url: _url,
    );
  }
}
