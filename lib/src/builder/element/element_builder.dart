import 'package:adaptive_card_builder/src/builder/action/versioned_action_builder.dart';
import 'package:adaptive_card_builder/src/model/action.dart';
import 'package:adaptive_card_builder/src/model/background_image.dart';
import 'package:adaptive_card_builder/src/model/element.dart';
import 'package:adaptive_card_builder/src/model/union.dart';
import 'package:meta/meta.dart';

part 'action_set_builder.dart';
part 'image_builder.dart';
part 'media_builder.dart';
part 'rich_text_block_builder.dart';
part 'text_block_builder.dart';

mixin class BaseElementBuilderV1Dot0 {
  @protected
  bool? _separator;
  @protected
  Spacing? _spacing;
  @protected
  String? _id;

  void setSeparator(bool separator) {
    _separator = separator;
  }

  void setSpacing(Spacing spacing) {
    _spacing = spacing;
  }

  void setId(String id) {
    _id = id;
  }
}

mixin class BaseElementBuilderV1Dot1 {
  @protected
  Height? _height;

  void setHeight(Height height) {
    _height = height;
  }
}

mixin class BaseElementBuilderV1Dot2 {
  @protected
  bool? _isVisible;
  @protected
  Union<Element, bool>? _fallback;

  void setIsVisible(bool isVisible) {
    _isVisible = isVisible;
  }

  void setFallbackToDrop() {
    _fallback = Union.right(true);
  }

  void setFallbackToElement(Element element) {
    _fallback = Union.left(element);
  }
}
