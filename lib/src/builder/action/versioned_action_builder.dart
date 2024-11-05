import 'package:adaptive_card_builder/src/builder/action/action_builder.dart';
import 'package:adaptive_card_builder/src/model/action.dart';

/// Helper mixin for building actions for v 1.0
abstract mixin class V1Dot0ActionBuilder {
  /// Adds the [action]
  void addAction(CardAction action);

  /// Adds a [SubmitAction] and configures it with the provided [builder]
  void addSubmitAction(void Function(SubmitActionBuilderV1Dot0) builder) {
    final actionBuilder = SubmitActionBuilderV1Dot0();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds an [OpenUrlAction] and configures it with the provided [builder]
  void addOpenUrlAction(
    Uri url,
    void Function(OpenUrlActionBuilderV1Dot0) builder,
  ) {
    final actionBuilder = OpenUrlActionBuilderV1Dot0(url);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds a [ShowCardAction] and configures it with the provided [builder]
  void addShowCardAction(void Function(ShowCardActionBuilderV1Dot0) builder) {
    final actionBuilder = ShowCardActionBuilderV1Dot0();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }
}

/// Helper mixin for building actions for v 1.1
abstract mixin class V1Dot1ActionBuilder {
  /// Adds the [action]
  void addAction(CardAction action);

  /// Adds a [SubmitAction] and configures it with the provided [builder]
  void addSubmitAction(void Function(SubmitActionBuilderV1Dot1) builder) {
    final actionBuilder = SubmitActionBuilderV1Dot1();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds an [OpenUrlAction] and configures it with the provided [builder]
  void addOpenUrlAction(
    Uri url,
    void Function(OpenUrlActionBuilderV1Dot1) builder,
  ) {
    final actionBuilder = OpenUrlActionBuilderV1Dot1(url);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds a [ShowCardAction] and configures it with the provided [builder]
  void addShowCardAction(void Function(ShowCardActionBuilderV1Dot1) builder) {
    final actionBuilder = ShowCardActionBuilderV1Dot1();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }
}

/// Helper mixin for building actions for v 1.2
abstract mixin class V1Dot2ActionBuilder {
  /// Adds the [action]
  void addAction(CardAction action);

  /// Adds a [SubmitAction] and configures it with the provided [builder]
  void addSubmitAction(void Function(SubmitActionBuilderV1Dot2) builder) {
    final actionBuilder = SubmitActionBuilderV1Dot2();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds an [OpenUrlAction] and configures it with the provided [builder]
  void addOpenUrlAction(
    Uri url,
    void Function(OpenUrlActionBuilderV1Dot2) builder,
  ) {
    final actionBuilder = OpenUrlActionBuilderV1Dot2(url);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds a [ShowCardAction] and configures it with the provided [builder]
  void addShowCardAction(void Function(ShowCardActionBuilderV1Dot2) builder) {
    final actionBuilder = ShowCardActionBuilderV1Dot2();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds a [ToggleVisibilityAction] and configures it with the provided [builder]
  void addToggleVisibilityAction(
    List<TargetElement> elements,
    void Function(ToggleVisibilityActionBuilderV1Dot2) builder,
  ) {
    final actionBuilder = ToggleVisibilityActionBuilderV1Dot2(elements);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }
}

/// Helper mixin for building actions for v 1.4
abstract mixin class V1Dot4ActionBuilder {
  /// Adds the [action]
  void addAction(CardAction action);

  /// Adds a [SubmitAction] and configures it with the provided [builder]
  void addSubmitAction(void Function(SubmitActionBuilderV1Dot2) builder) {
    final actionBuilder = SubmitActionBuilderV1Dot2();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds an [OpenUrlAction] and configures it with the provided [builder]
  void addOpenUrlAction(
    Uri url,
    void Function(OpenUrlActionBuilderV1Dot2) builder,
  ) {
    final actionBuilder = OpenUrlActionBuilderV1Dot2(url);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds a [ShowCardAction] and configures it with the provided [builder]
  void addShowCardAction(void Function(ShowCardActionBuilderV1Dot2) builder) {
    final actionBuilder = ShowCardActionBuilderV1Dot2();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds a [ToggleVisibilityAction] and configures it with the provided [builder]
  void addToggleVisibilityAction(
    List<TargetElement> elements,
    void Function(ToggleVisibilityActionBuilderV1Dot2) builder,
  ) {
    final actionBuilder = ToggleVisibilityActionBuilderV1Dot2(elements);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds a [SubmitAction] and configures it with the provided [builder]
  void addExecuteAction(void Function(ExecuteActionBuilderV1Dot4) builder) {
    final actionBuilder = ExecuteActionBuilderV1Dot4();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }
}

/// Helper mixin for building actions for v 1.5
abstract mixin class V1Dot5ActionBuilder {
  /// Adds the [action]
  void addAction(CardAction action);

  /// Adds a [SubmitAction] and configures it with the provided [builder]
  void addSubmitAction(void Function(SubmitActionBuilderV1Dot5) builder) {
    final actionBuilder = SubmitActionBuilderV1Dot5();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds an [OpenUrlAction] and configures it with the provided [builder]
  void addOpenUrlAction(
    Uri url,
    void Function(OpenUrlActionBuilderV1Dot5) builder,
  ) {
    final actionBuilder = OpenUrlActionBuilderV1Dot5(url);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds a [ShowCardAction] and configures it with the provided [builder]
  void addShowCardAction(void Function(ShowCardActionBuilderV1Dot5) builder) {
    final actionBuilder = ShowCardActionBuilderV1Dot5();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds a [ToggleVisibilityAction] and configures it with the provided [builder]
  void addToggleVisibilityAction(
    List<TargetElement> elements,
    void Function(ToggleVisibilityActionBuilderV1Dot5) builder,
  ) {
    final actionBuilder = ToggleVisibilityActionBuilderV1Dot5(elements);
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }

  /// Adds an [ExecuteAction] and configures it with the provided [builder]
  void addExecuteAction(void Function(ExecuteActionBuilderV1Dot5) builder) {
    final actionBuilder = ExecuteActionBuilderV1Dot5();
    builder(actionBuilder);
    addAction(actionBuilder.build());
  }
}
