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

/// Mixin helper for building 1.0 actions
mixin class BaseActionBuilderV1Dot0 {
  @protected
  String? _title;
  @protected
  String? _id;

  /// Set the title of the action
  set title(String title) {
    _title = title;
  }

  /// Set the id of the action
  set id(String id) {
    _id = id;
  }
}

/// Mixin helper for building 1.1 actions
mixin class BaseActionBuilderV1Dot1 {
  @protected
  Uri? _iconUrl;

  /// Set the icon url of the action
  set iconUrl(Uri iconUrl) {
    _iconUrl = iconUrl;
  }
}

/// Mixin helper for building 1.2 actions
mixin class BaseActionBuilderV1Dot2 {
  @protected
  ActionStyle? _style;
  @protected
  Union<CardAction, bool>? _fallback;

  /// Set the style of the action
  set style(ActionStyle style) {
    _style = style;
  }

  /// Set the fallback of the action to 'drop'
  void setFallbackToDrop() {
    _fallback = Union.right(true);
  }

  /// Set the fallback of the action to the [action]
  void setFallbackToAction(CardAction action) {
    _fallback = Union.left(action);
  }
}

/// Mixin helper for building 1.3 actions
mixin class BaseActionBuilderV1Dot5 {
  @protected
  String? _tooltip;
  @protected
  bool? _isEnabled;
  @protected
  ActionMode? _mode;

  /// Set the tooltip of the action
  set tooltip(String tooltip) {
    _tooltip = tooltip;
  }

  /// Set the isEnabled of the action
  set isEnabled(bool isEnabled) {
    _isEnabled = isEnabled;
  }

  /// Set the mode of the action
  set mode(ActionMode mode) {
    _mode = mode;
  }
}
