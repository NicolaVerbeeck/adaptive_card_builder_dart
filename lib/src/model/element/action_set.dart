part of '../element.dart';

class ActionSet extends Element {
  final List<CardAction> actions;

  ActionSet({
    required super.fallback,
    required super.height,
    required super.separator,
    required super.spacing,
    required super.id,
    required super.isVisible,
    required this.actions,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'ActionSet',
      'actions': actions.map((e) => e.toJson()).toList(),
    });
  }
}
