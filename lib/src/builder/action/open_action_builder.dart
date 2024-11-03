part of 'action_builder.dart';

class OpenUrlActionBuilderV1Dot0 with BaseActionBuilderV1Dot0 {
  @protected
  final Uri _url;

  OpenUrlActionBuilderV1Dot0(Uri url) : _url = url;

  OpenUrlAction build() {
    return OpenUrlAction(
      title: _title,
      id: _id,
      url: _url,
    );
  }
}

class OpenUrlActionBuilderV1Dot1 extends OpenUrlActionBuilderV1Dot0 with BaseActionBuilderV1Dot1 {
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

class OpenUrlActionBuilderV1Dot2 extends OpenUrlActionBuilderV1Dot1 with BaseActionBuilderV1Dot2 {
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

class OpenUrlActionBuilderV1Dot5 extends OpenUrlActionBuilderV1Dot2 with BaseActionBuilderV1Dot5 {
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
