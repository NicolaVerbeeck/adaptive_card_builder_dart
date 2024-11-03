class BackgroundImage {
  final Uri? url;
  final ImageFillMode? fillMode;
  final HorizontalAlignment? horizontalAlignment;
  final VerticalAlignment? verticalAlignment;

  BackgroundImage({
    this.url,
    this.fillMode,
    this.horizontalAlignment,
    this.verticalAlignment,
  });

  Map<String, dynamic> toJson() {
    return {
      'url': url?.toString(),
      'fillMode': fillMode?.toJson(),
      'horizontalAlignment': horizontalAlignment?.toJson(),
      'verticalAlignment': verticalAlignment?.toJson(),
    };
  }
}

enum ImageFillMode {
  cover,
  repeatHorizontally,
  repeatVertically,
  repeat,
  ;

  String toJson() => switch (this) {
        ImageFillMode.cover => 'cover',
        ImageFillMode.repeatHorizontally => 'repeatHorizontally',
        ImageFillMode.repeatVertically => 'repeatVertically',
        ImageFillMode.repeat => 'repeat',
      };
}

enum HorizontalAlignment {
  left,
  center,
  right,
  ;

  String toJson() => switch (this) {
        HorizontalAlignment.left => 'left',
        HorizontalAlignment.center => 'center',
        HorizontalAlignment.right => 'right',
      };
}

enum VerticalAlignment {
  top,
  center,
  bottom,
  ;

  String toJson() => switch (this) {
        VerticalAlignment.top => 'top',
        VerticalAlignment.center => 'center',
        VerticalAlignment.bottom => 'bottom',
      };
}
