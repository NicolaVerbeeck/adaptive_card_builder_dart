import 'package:adaptive_card_builder/src/model/adaptive_card.dart';
import 'package:adaptive_card_builder/src/model/union.dart';
import 'package:meta/meta.dart';

sealed class CardAction {
  final String? title;
  final Uri? iconUrl;
  final String? id;
  final ActionStyle? style;
  final Union<CardAction, bool>? fallback;
  final String? tooltip;
  final bool? isEnabled;
  final ActionMode? mode;

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

  Map<String, dynamic> toJson() {
    final base = <String, dynamic>{
      if (title != null) 'title': title,
      if (iconUrl != null) 'iconUrl': iconUrl.toString(),
      if (id != null) 'id': id,
      if (style != null) 'style': style!.toJson(),
      if (fallback?.right == true) 'fallback': 'drop',
      if (fallback?.left != null) 'fallback': fallback!.left!.toJson(),
      if (tooltip != null) 'tooltip': tooltip,
      if (isEnabled != null) 'isEnabled': isEnabled,
      if (mode != null) 'mode': mode!.toJson(),
    };
    populateJson(base);
    return base;
  }

  @protected
  void populateJson(Map<String, dynamic> container);
}

abstract class ISelectAction extends CardAction {
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

class ExecuteAction extends ISelectAction {
  final String? verb;
  final dynamic data;
  final AssociatedInputs? associatedInputs;

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

class OpenUrlAction extends ISelectAction {
  final Uri url;

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

class SubmitAction extends ISelectAction {
  final dynamic data;
  final AssociatedInputs? associatedInputs;

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

class ToggleVisibilityAction extends ISelectAction {
  final List<TargetElement> targetElements;

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

class ShowCardAction extends CardAction {
  final AdaptiveCard? card;

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

class TargetElement {
  final String elementId;
  final bool? isVisible;

  TargetElement({
    required this.elementId,
    required this.isVisible,
  });

  Map<String, dynamic> toJson() {
    return {
      'elementId': elementId,
      if (isVisible != null) 'isVisible': isVisible,
    };
  }
}

enum ActionStyle {
  defaultStyle,
  positiveStyle,
  destructiveStyle,
  ;

  String toJson() => switch (this) {
        ActionStyle.defaultStyle => 'default',
        ActionStyle.positiveStyle => 'positive',
        ActionStyle.destructiveStyle => 'destructive',
      };
}

enum ActionMode {
  primary,
  secondary,
  ;

  String toJson() => switch (this) {
        ActionMode.primary => 'primary',
        ActionMode.secondary => 'secondary',
      };
}

enum AssociatedInputs {
  auto,
  none,
  ;

  String toJson() => switch (this) {
        AssociatedInputs.auto => 'auto',
        AssociatedInputs.none => 'none',
      };
}
