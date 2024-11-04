part of 'element_builder.dart';

class FactSetBuilderV1Dot0 with BaseElementBuilderV1Dot0 {
  @protected
  final List<Fact> _facts = [];

  void addFact({required String title, required String value}) {
    _facts.add(Fact(title: title, value: value));
  }

  FactSet build() {
    return FactSet(
      facts: _facts,
      separator: _separator,
      spacing: _spacing,
      id: _id,
    );
  }
}

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
