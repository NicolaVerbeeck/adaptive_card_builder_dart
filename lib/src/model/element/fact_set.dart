part of '../element.dart';

class FactSet extends Element {
  final List<Fact> facts;

  FactSet({
    required this.facts,
    super.fallback,
    super.height,
    super.separator,
    super.spacing,
    super.id,
    super.isVisible,
  });

  @override
  void populateJson(Map<String, dynamic> container) {
    container.addAll({
      'type': 'FactSet',
      'facts': facts.map((e) => e.toJson()).toList(),
    });
  }
}

class Fact {
  final String title;
  final String value;

  Fact({
    required this.title,
    required this.value,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'value': value,
    };
  }
}
