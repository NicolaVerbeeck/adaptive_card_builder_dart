part of 'element_builder.dart';

/// A builder to create [FactSet] objects for adaptive cards version 1.0
class FactSetBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  final List<Fact> _facts = [];

  /// Adds a fact to the fact set
  void addFact({required String title, required String value}) {
    _facts.add(Fact(title: title, value: value));
  }

  /// Creates a [FactSet] object with the provided configuration
  FactSet build() {
    return FactSet(
      facts: _facts,
      separator: _separator,
      spacing: _spacing,
      id: _id,
    );
  }
}

/// A builder to create [FactSet] objects for adaptive cards version 1.1
class FactSetBuilderV1Dot1 extends FactSetBuilderV1Dot0
    with BaseElementBuilderV1Dot1 {
  @override
  FactSet build() {
    return FactSet(
      facts: _facts,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      height: _height,
    );
  }
}

/// A builder to create [FactSet] objects for adaptive cards version 1.2
class FactSetBuilderV1Dot2 extends FactSetBuilderV1Dot1
    with BaseElementBuilderV1Dot2 {
  @override
  FactSet build() {
    return FactSet(
      facts: _facts,
      separator: _separator,
      spacing: _spacing,
      id: _id,
      height: _height,
      isVisible: _isVisible,
      fallback: _fallback,
    );
  }
}
