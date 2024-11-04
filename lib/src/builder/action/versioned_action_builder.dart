import 'package:adaptive_card_builder/src/builder/action/action_builder.dart';
import 'package:adaptive_card_builder/src/model/action.dart';

abstract mixin class V1Dot0ActionBuilder {
  void addAction(CardAction action);

  void addSubmitAction(void Function(SubmitActionBuilderV1Dot0) builder) {
    final actionBuilder = SubmitActionBuilderV1Dot0();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  void addOpenUrlAction(
      Uri url, void Function(OpenUrlActionBuilderV1Dot0) builder) {
    final actionBuilder = OpenUrlActionBuilderV1Dot0(url);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  void addShowCardAction(void Function(ShowCardActionBuilderV1Dot0) builder) {
    final actionBuilder = ShowCardActionBuilderV1Dot0();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }
}

abstract mixin class V1Dot1ActionBuilder {
  void addAction(CardAction action);

  void addSubmitAction(void Function(SubmitActionBuilderV1Dot1) builder) {
    final actionBuilder = SubmitActionBuilderV1Dot1();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  void addOpenUrlAction(
      Uri url, void Function(OpenUrlActionBuilderV1Dot1) builder) {
    final actionBuilder = OpenUrlActionBuilderV1Dot1(url);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  void addShowCardAction(void Function(ShowCardActionBuilderV1Dot1) builder) {
    final actionBuilder = ShowCardActionBuilderV1Dot1();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }
}

abstract mixin class V1Dot2ActionBuilder {
  void addAction(CardAction action);

  void addSubmitAction(void Function(SubmitActionBuilderV1Dot2) builder) {
    final actionBuilder = SubmitActionBuilderV1Dot2();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  void addOpenUrlAction(
      Uri url, void Function(OpenUrlActionBuilderV1Dot2) builder) {
    final actionBuilder = OpenUrlActionBuilderV1Dot2(url);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  void addShowCardAction(void Function(ShowCardActionBuilderV1Dot2) builder) {
    final actionBuilder = ShowCardActionBuilderV1Dot2();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  void addToggleVisibilityAction(
    List<TargetElement> elements,
    void Function(ToggleVisibilityActionBuilderV1Dot2) builder,
  ) {
    final actionBuilder = ToggleVisibilityActionBuilderV1Dot2(elements);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }
}

abstract mixin class V1Dot4ActionBuilder {
  void addAction(CardAction action);

  void addExecuteAction(void Function(ExecuteActionBuilderV1Dot4) builder) {
    final actionBuilder = ExecuteActionBuilderV1Dot4();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }
}

abstract mixin class V1Dot5ActionBuilder {
  void addAction(CardAction action);

  void addSubmitAction(void Function(SubmitActionBuilderV1Dot5) builder) {
    final actionBuilder = SubmitActionBuilderV1Dot5();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  void addOpenUrlAction(
      Uri url, void Function(OpenUrlActionBuilderV1Dot5) builder) {
    final actionBuilder = OpenUrlActionBuilderV1Dot5(url);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  void addShowCardAction(void Function(ShowCardActionBuilderV1Dot5) builder) {
    final actionBuilder = ShowCardActionBuilderV1Dot5();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  void addToggleVisibilityAction(
    List<TargetElement> elements,
    void Function(ToggleVisibilityActionBuilderV1Dot5) builder,
  ) {
    final actionBuilder = ToggleVisibilityActionBuilderV1Dot5(elements);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  void addExecuteAction(void Function(ExecuteActionBuilderV1Dot5) builder) {
    final actionBuilder = ExecuteActionBuilderV1Dot5();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }
}
