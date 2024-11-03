part of '../element.dart';

class FactSet extends Element {
  final List<Fact> facts;

  FactSet({
    required super.fallback,
    required super.height,
    required super.separator,
    required super.spacing,
    required super.id,
    required super.isVisible,
    required this.facts,
  });

  @override
  void populateJson(Map<String, dynamic> json) {
    json.addAll({
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
