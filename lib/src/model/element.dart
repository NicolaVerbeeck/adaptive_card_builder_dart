import 'package:adaptive_card_builder/src/model/action.dart';
import 'package:adaptive_card_builder/src/model/adaptive_card.dart';
import 'package:adaptive_card_builder/src/model/background_image.dart';
import 'package:adaptive_card_builder/src/model/union.dart';
import 'package:meta/meta.dart';

part 'element/action_set.dart';
part 'element/text_block.dart';
part 'element/image.dart';
part 'element/media.dart';
part 'element/rich_text_block.dart';
part 'element/container.dart';
part 'element/column_set.dart';
part 'element/fact_set.dart';
part 'element/image_set.dart';
part 'element/table.dart';
part 'element/input_element.dart';
part 'element/input/input_text.dart';
part 'element/input/input_number.dart';
part 'element/input/input_date.dart';
part 'element/input/input_time.dart';
part 'element/input/input_toggle.dart';
part 'element/input/input_choice_set.dart';

sealed class Element {
  final Union<Element, bool>? fallback;
  final Height? height;
  final bool? separator;
  final Spacing? spacing;
  final String? id;
  final bool? isVisible;

  Element({
    required this.fallback,
    required this.height,
    required this.separator,
    required this.spacing,
    required this.id,
    required this.isVisible,
  });

  Map<String, dynamic> toJson() {
    final base = <String, dynamic>{
      if (fallback?.right == true) 'fallback': 'drop',
      if (fallback?.left != null) 'fallback': fallback!.left!.toJson(),
      if (height != null) 'height': height!.toJson(),
      if (separator != null) 'separator': separator,
      if (spacing != null) 'spacing': spacing!.toJson(),
      if (id != null) 'id': id,
      if (isVisible != null) 'isVisible': isVisible,
    };
    populateJson(base);
    return base;
  }

  @protected
  void populateJson(Map<String, dynamic> container);
}

enum Height {
  auto,
  stretch,
  ;

  String toJson() => switch (this) {
        Height.auto => 'auto',
        Height.stretch => 'stretch',
      };
}

enum Spacing {
  spacingDefault,
  none,
  small,
  medium,
  large,
  extraLarge,
  padding,
  ;

  String toJson() => switch (this) {
        Spacing.spacingDefault => 'default',
        Spacing.none => 'none',
        Spacing.small => 'small',
        Spacing.medium => 'medium',
        Spacing.large => 'large',
        Spacing.extraLarge => 'extraLarge',
        Spacing.padding => 'padding',
      };
}
