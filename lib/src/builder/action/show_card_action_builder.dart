part of 'action_builder.dart';

class ShowCardActionBuilderV1Dot0 with BaseActionBuilderV1Dot0 {
  AdaptiveCard? _card;

  void setCard(void Function(AdaptiveCardBuilderV1Dot0) builder) {
    final cardBuilder = AdaptiveCardBuilderV1Dot0();
    builder(cardBuilder);
    _card = cardBuilder.build();
  }

  ShowCardAction build() {
    return ShowCardAction(
      title: _title,
      id: _id,
      card: _card!,
    );
  }
}

class ShowCardActionBuilderV1Dot1 extends ShowCardActionBuilderV1Dot0
    with BaseActionBuilderV1Dot1 {
  @override
  void setCard(void Function(AdaptiveCardBuilderV1Dot1) builder) {
    final cardBuilder = AdaptiveCardBuilderV1Dot1();
    builder(cardBuilder);
    _card = cardBuilder.build();
  }

  @override
  ShowCardAction build() {
    return ShowCardAction(
      title: _title,
      id: _id,
      iconUrl: _iconUrl,
      card: _card!,
    );
  }
}

class ShowCardActionBuilderV1Dot2 extends ShowCardActionBuilderV1Dot1
    with BaseActionBuilderV1Dot2 {
  @override
  void setCard(void Function(AdaptiveCardBuilderV1Dot2) builder) {
    final cardBuilder = AdaptiveCardBuilderV1Dot2();
    builder(cardBuilder);
    _card = cardBuilder.build();
  }

  @override
  ShowCardAction build() {
    return ShowCardAction(
      title: _title,
      id: _id,
      iconUrl: _iconUrl,
      style: _style,
      fallback: _fallback,
      card: _card!,
    );
  }
}

class ShowCardActionBuilderV1Dot3 extends ShowCardActionBuilderV1Dot2 {
  @override
  void setCard(void Function(AdaptiveCardBuilderV1Dot3) builder) {
    final cardBuilder = AdaptiveCardBuilderV1Dot3();
    builder(cardBuilder);
    _card = cardBuilder.build();
  }
}

class ShowCardActionBuilderV1Dot4 extends ShowCardActionBuilderV1Dot3 {
  @override
  void setCard(void Function(AdaptiveCardBuilderV1Dot4) builder) {
    final cardBuilder = AdaptiveCardBuilderV1Dot4();
    builder(cardBuilder);
    _card = cardBuilder.build();
  }
}

class ShowCardActionBuilderV1Dot5 extends ShowCardActionBuilderV1Dot4
    with BaseActionBuilderV1Dot5 {
  @override
  ShowCardAction build() {
    return ShowCardAction(
      title: _title,
      id: _id,
      iconUrl: _iconUrl,
      style: _style,
      fallback: _fallback,
      tooltip: _tooltip,
      isEnabled: _isEnabled,
      mode: _mode,
      card: _card!,
    );
  }
}
