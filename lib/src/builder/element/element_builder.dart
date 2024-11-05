import 'package:adaptive_card_builder/src/builder/action/versioned_action_builder.dart';
import 'package:adaptive_card_builder/src/builder/element/element_container_helper.dart';
import 'package:adaptive_card_builder/src/builder/element/select_action_builder_helper.dart';
import 'package:adaptive_card_builder/src/model/action.dart';
import 'package:adaptive_card_builder/src/model/adaptive_card.dart';
import 'package:adaptive_card_builder/src/model/background_image.dart';
import 'package:adaptive_card_builder/src/model/element.dart';
import 'package:adaptive_card_builder/src/model/union.dart';
import 'package:meta/meta.dart';

part 'action_set_builder.dart';
part 'choice_set_builder.dart';
part 'column_set_builder.dart';
part 'container_builder.dart';
part 'date_input_builder.dart';
part 'fact_set_builder.dart';
part 'image_builder.dart';
part 'image_set_builder.dart';
part 'input_element_builder.dart';
part 'media_builder.dart';
part 'number_input_builder.dart';
part 'rich_text_block_builder.dart';
part 'table_builder.dart';
part 'text_block_builder.dart';
part 'text_input_builder.dart';
part 'time_input_builder.dart';
part 'toggle_input_builder.dart';

/// Mixin helper class for the base class of all element builders in version 1.0
mixin class BaseElementBuilderV1Dot0 {
  @protected
  bool? _separator;
  @protected
  Spacing? _spacing;
  @protected
  String? _id;

  /// Sets the separator property of the element
  set separator(bool separator) {
    _separator = separator;
  }

  /// Sets the spacing property of the element
  set spacing(Spacing spacing) {
    _spacing = spacing;
  }

  /// Sets the id property of the element
  set id(String id) {
    _id = id;
  }
}

/// Mixin helper class for the base class of all element builders in version 1.1
mixin class BaseElementBuilderV1Dot1 {
  @protected
  Height? _height;

  /// Sets the height property of the element
  set height(Height height) {
    _height = height;
  }
}

/// Mixin helper class for the base class of all element builders in version 1.2
mixin class BaseElementBuilderV1Dot2 {
  @protected
  bool? _isVisible;
  @protected
  Union<Element, bool>? _fallback;

  /// Sets the isVisible property of the element
  set isVisible(bool isVisible) {
    _isVisible = isVisible;
  }

  /// Sets the fallback property of the element to 'drop'
  void setFallbackToDrop() {
    _fallback = Union.right(true);
  }

  /// Sets the fallback property of the element to an element
  void setFallbackToElement(Element element) {
    _fallback = Union.left(element);
  }
}
