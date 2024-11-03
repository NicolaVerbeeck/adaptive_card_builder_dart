part of '../element.dart';

class Image extends Element {
  final Uri url;
  final String? altText;
  final String? backgroundColor;
  final Union<String, Height>? imageHeight;
  final HorizontalAlignment? horizontalAlignment;
  final ISelectAction? selectAction;
  final ImageSize? size;
  final ImageStyle? style;
  final String? width;

  Image({
    required super.fallback,
    required super.separator,
    required super.spacing,
    required super.id,
    required super.isVisible,
    required this.url,
    required this.altText,
    required this.backgroundColor,
    required this.horizontalAlignment,
    required this.selectAction,
    required this.imageHeight,
    required this.size,
    required this.style,
    required this.width,
  }) : super(height: null);

  @override
  void populateJson(Map<String, dynamic> json) {
    json.addAll({
      'type': 'Image',
      'url': url.toString(),
      if (altText != null) 'altText': altText,
      if (backgroundColor != null) 'backgroundColor': backgroundColor,
      if (height != null) 'height': imageHeight!.fold((l) => l, (r) => r.toJson()),
      if (horizontalAlignment != null) 'horizontalAlignment': horizontalAlignment!.toJson(),
      if (selectAction != null) 'selectAction': selectAction!.toJson(),
      if (size != null) 'size': size!.toJson(),
      if (style != null) 'style': style!.toJson(),
      if (width != null) 'width': width,
    });
  }
}

enum ImageSize {
  auto,
  stretch,
  small,
  medium,
  large,
  ;

  String toJson() => switch (this) {
        ImageSize.auto => 'auto',
        ImageSize.stretch => 'stretch',
        ImageSize.small => 'small',
        ImageSize.medium => 'medium',
        ImageSize.large => 'large',
      };
}

enum ImageStyle {
  defaultStyle,
  person,
  ;

  String toJson() => switch (this) {
        ImageStyle.defaultStyle => 'default',
        ImageStyle.person => 'person',
      };
}
