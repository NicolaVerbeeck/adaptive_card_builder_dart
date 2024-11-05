import 'package:adaptive_card_builder/src/model/adaptive_card.dart';
import 'package:adaptive_card_builder/src/model/union.dart';
import 'package:meta/meta.dart';

/// The Actions for an [AdaptiveCard]
sealed class CardAction {
  /// The title of the action
  final String? title;

  /// The icon of the action
  final Uri? iconUrl;

  /// The id of the action
  final String? id;

  /// The style of the action
  final ActionStyle? style;

  /// The fallback action. Either another action or a
  /// boolean indicating that the action should be dropped
  final Union<CardAction, bool>? fallback;

  /// The tooltip of the action
  final String? tooltip;

  /// Whether the action is enabled
  final bool? isEnabled;

  /// The mode of the action
  final ActionMode? mode;

  /// Creates a [CardAction]
  CardAction({
    this.title,
    this.iconUrl,
    this.id,
    this.style,
    this.fallback,
    this.tooltip,
    this.isEnabled,
    this.mode,
  });

  /// Converts the action to a json representation
  Map<String, dynamic> toJson() {
    final base = <String, dynamic>{
      if (title != null) 'title': title,
      if (iconUrl != null) 'iconUrl': iconUrl.toString(),
      if (id != null) 'id': id,
      if (style != null) 'style': style!.toJson(),
      if (fallback?.isRight ?? false) 'fallback': 'drop',
      if (fallback?.isLeft ?? false) 'fallback': fallback!.left!.toJson(),
      if (tooltip != null) 'tooltip': tooltip,
      if (isEnabled != null) 'isEnabled': isEnabled,
      if (mode != null) 'mode': mode!.toJson(),
    };
    populateJson(base);
    return base;
  }

  /// Populates the specific fields of the action not shared with the base
  @protected
  void populateJson(Map<String, dynamic> container);
}

/// Base class for actions that fall into the 'select' category
abstract class ISelectAction extends CardAction {
  /// Creates an [ISelectAction]
  ISelectAction({
    super.title,
    super.iconUrl,
    super.id,
    super.style,
    super.fallback,
    super.tooltip,
    super.isEnabled,
    super.mode,
  });
}

/// Gathers input fields, merges with optional data field, and sends an event to the client
class ExecuteAction extends ISelectAction {
  /// The card author-defined verb associated with this action
  final String? verb;

  /// Initial data that input fields will be combined with. Must be a JSON-serializable object
  final dynamic data;

  /// Controls which inputs are associated with the action
  final AssociatedInputs? associatedInputs;

  /// Creates an [ExecuteAction]
  ExecuteAction({
    super.title,
    super.iconUrl,
    super.id,
    super.style,
    super.fallback,
    super.tooltip,
    super.isEnabled,
    super.mode,
    this.verb,
    this.data,
    this.associatedInputs,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'Action.Execute',
      if (verb != null) 'verb': verb,
      if (data != null) 'data': data,
      if (associatedInputs != null)
        'associatedInputs': associatedInputs!.toJson(),
    });
  }
}

/// When invoked, show the given url either by launching it in an
/// external web browser or showing within an embedded web browser.
class OpenUrlAction extends ISelectAction {
  /// The url to open
  final Uri url;

  /// Creates an [OpenUrlAction]
  OpenUrlAction({
    required this.url,
    super.title,
    super.iconUrl,
    super.id,
    super.style,
    super.fallback,
    super.tooltip,
    super.isEnabled,
    super.mode,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'Action.OpenUrl',
      'url': url.toString(),
    });
  }
}

/// Gathers input fields, merges with optional data field,
/// and sends an event to the client
class SubmitAction extends ISelectAction {
  /// Initial data that input fields will be combined with. Must be a JSON-serializable object
  final dynamic data;

  /// Controls which inputs are associated with the action
  final AssociatedInputs? associatedInputs;

  /// Creates a [SubmitAction]
  SubmitAction({
    super.title,
    super.iconUrl,
    super.id,
    super.style,
    super.fallback,
    super.tooltip,
    super.isEnabled,
    super.mode,
    this.data,
    this.associatedInputs,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'Action.Submit',
      if (data != null) 'data': data,
      if (associatedInputs != null)
        'associatedInputs': associatedInputs!.toJson(),
    });
  }
}

/// Toggles the visibility of elements
class ToggleVisibilityAction extends ISelectAction {
  /// The elements to toggle
  final List<TargetElement> targetElements;

  /// Creates a [ToggleVisibilityAction]
  ToggleVisibilityAction({
    required this.targetElements,
    super.title,
    super.iconUrl,
    super.id,
    super.style,
    super.fallback,
    super.tooltip,
    super.isEnabled,
    super.mode,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'Action.ToggleVisibility',
      'targetElements': targetElements.map((e) => e.toJson()).toList(),
    });
  }
}

/// Shows a card when invoked
class ShowCardAction extends CardAction {
  /// The card to show
  final AdaptiveCard? card;

  /// Creates a [ShowCardAction]
  ShowCardAction({
    super.title,
    super.iconUrl,
    super.id,
    super.style,
    super.fallback,
    super.tooltip,
    super.isEnabled,
    super.mode,
    this.card,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'Action.ShowCard',
      if (card != null) 'card': card?.toJson(),
    });
  }
}

/// The target element to toggle
class TargetElement {
  /// The id of the element
  final String elementId;

  /// Whether the element should be visible or not. Null means toggle
  final bool? isVisible;

  /// Creates a [TargetElement]
  TargetElement({
    required this.elementId,
    this.isVisible,
  });

  /// Converts the target element to a json representation
  Map<String, dynamic> toJson() {
    return {
      'elementId': elementId,
      if (isVisible != null) 'isVisible': isVisible,
    };
  }
}

/// The style of the action
enum ActionStyle {
  /// Default style
  defaultStyle,

  /// Positive style
  positiveStyle,

  /// Destructive style
  destructiveStyle,
  ;

  /// Converts the style to a json representation
  String toJson() => switch (this) {
        ActionStyle.defaultStyle => 'default',
        ActionStyle.positiveStyle => 'positive',
        ActionStyle.destructiveStyle => 'destructive',
      };
}

/// The mode of the action
enum ActionMode {
  /// Primary mode
  primary,

  /// Secondary mode
  secondary,
  ;

  /// Converts the mode to a json representation
  String toJson() => switch (this) {
        ActionMode.primary => 'primary',
        ActionMode.secondary => 'secondary',
      };
}

/// Controls which inputs are associated with the action
enum AssociatedInputs {
  /// Inputs on the current card and any parent cards will be validated and submitted for this Action
  auto,

  /// None of the inputs will be validated or submitted for this Action
  none,
  ;

  /// Converts the associated inputs to a json representation
  String toJson() => switch (this) {
        AssociatedInputs.auto => 'auto',
        AssociatedInputs.none => 'none',
      };
}
