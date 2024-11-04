import 'package:adaptive_card_builder/src/builder/adaptive_card_builder.dart';
import 'package:adaptive_card_builder/src/model/action.dart';
import 'package:adaptive_card_builder/src/model/adaptive_card.dart';
import 'package:adaptive_card_builder/src/model/union.dart';
import 'package:meta/meta.dart';

part 'open_action_builder.dart';
part 'submit_action_builder.dart';
part 'show_card_action_builder.dart';
part 'toggle_visibility_action_builder.dart';
part 'execute_action_builder.dart';

mixin class BaseActionBuilderV1Dot0 {
  @protected
  String? _title;
  @protected
  String? _id;

  void setTitle(String title) {
    _title = title;
  }

  void setId(String id) {
    _id = id;
  }
}

mixin class BaseActionBuilderV1Dot1 {
  @protected
  Uri? _iconUrl;

  void setIconUrl(Uri iconUrl) {
    _iconUrl = iconUrl;
  }
}

mixin class BaseActionBuilderV1Dot2 {
  @protected
  ActionStyle? _style;
  @protected
  Union<CardAction, bool>? _fallback;

  void setStyle(ActionStyle style) {
    _style = style;
  }

  void setFallbackToDrop() {
    _fallback = Union.right(true);
  }

  void setFallbackToAction(CardAction action) {
    _fallback = Union.left(action);
  }
}

mixin class BaseActionBuilderV1Dot5 {
  @protected
  String? _tooltip;
  @protected
  bool? _isEnabled;
  @protected
  ActionMode? _mode;

  void setTooltip(String tooltip) {
    _tooltip = tooltip;
  }

  void setIsEnabled(bool isEnabled) {
    _isEnabled = isEnabled;
  }

  void setMode(ActionMode mode) {
    _mode = mode;
  }
}
