import 'package:adaptive_card_builder/adaptive_card_builder.dart';

void main() {
  final builder = AdaptiveCardBuilderFactory.v1_5()..setFallbackText('Hello');

  final card = builder.build();

  print(card.toJson());
}
