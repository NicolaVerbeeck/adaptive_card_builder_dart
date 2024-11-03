
part of 'action_builder.dart';

class ShowCardActionBuilderV1Dot0 with BaseActionBuilderV1Dot0 {
  AdaptiveCard? _card;

  void setCard(AdaptiveCard card) {
    _card = card;
  }

  ShowCardAction build() {
    return ShowCardAction(
      title: _title,
      id: _id,
      card: _card!,
    );
  }
}

class ShowCardActionBuilderV1Dot1 extends ShowCardActionBuilderV1Dot0 with BaseActionBuilderV1Dot1 {
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

class ShowCardActionBuilderV1Dot2 extends ShowCardActionBuilderV1Dot1 with BaseActionBuilderV1Dot2 {
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

class ShowCardActionBuilderV1Dot5 extends ShowCardActionBuilderV1Dot2 with BaseActionBuilderV1Dot5 {
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