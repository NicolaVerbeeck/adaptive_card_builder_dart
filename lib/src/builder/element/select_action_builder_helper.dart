import 'package:adaptive_card_builder/src/builder/action/action_builder.dart';
import 'package:adaptive_card_builder/src/model/action.dart';

/// Helper mixin class to set select action for elements for adaptive cards version 1.0
abstract mixin class SelectActionBuilderHelperV1Dot0 {
  /// Set select action for the element
  set selectAction(ISelectAction selectAction);

  /// Set open url action for the element with the given uri
  void setOpenUrlSelectAction(
    Uri uri,
    void Function(OpenUrlActionBuilderV1Dot0) builder,
  ) {
    selectAction = OpenUrlActionBuilderV1Dot0(uri).apply(builder).build();
  }

  /// Set submit action for the element
  void setSubmitSelectAction(
    void Function(SubmitActionBuilderV1Dot0) builder,
  ) {
    selectAction = SubmitActionBuilderV1Dot0().apply(builder).build();
  }
}

/// Helper mixin class to set select action for elements for adaptive cards version 1.1
abstract mixin class SelectActionBuilderHelperV1Dot1 {
  /// Set select action for the element
  set selectAction(ISelectAction selectAction);

  /// Set open url action for the element with the given uri
  void setOpenUrlSelectAction(
    Uri uri,
    void Function(OpenUrlActionBuilderV1Dot1) builder,
  ) {
    selectAction = OpenUrlActionBuilderV1Dot1(uri).apply(builder).build();
  }

  /// Set submit action for the element
  void setSubmitSelectAction(
    void Function(SubmitActionBuilderV1Dot1) builder,
  ) {
    selectAction = SubmitActionBuilderV1Dot1().apply(builder).build();
  }
}

/// Helper mixin class to set select action for elements for adaptive cards version 1.2
abstract mixin class SelectActionBuilderHelperV1Dot2 {
  /// Set select action for the element
  set selectAction(ISelectAction selectAction);

  /// Set open url action for the element with the given uri
  void setOpenUrlSelectAction(
    Uri uri,
    void Function(OpenUrlActionBuilderV1Dot2) builder,
  ) {
    selectAction = OpenUrlActionBuilderV1Dot2(uri).apply(builder).build();
  }

  /// Set submit action for the element
  void setSubmitSelectAction(
    void Function(SubmitActionBuilderV1Dot2) builder,
  ) {
    selectAction = SubmitActionBuilderV1Dot2().apply(builder).build();
  }

  /// Set toggle visibility action for the element
  void setToggleVisibilitySelectAction(
    List<TargetElement> targetElements,
    void Function(ToggleVisibilityActionBuilderV1Dot2) builder,
  ) {
    selectAction = ToggleVisibilityActionBuilderV1Dot2(targetElements)
        .apply(builder)
        .build();
  }
}

/// Helper mixin class to set select action for elements for adaptive cards version 1.4
abstract mixin class SelectActionBuilderHelperV1Dot4 {
  /// Set select action for the element
  set selectAction(ISelectAction selectAction);

  /// Set open url action for the element with the given uri
  void setOpenUrlSelectAction(
    Uri uri,
    void Function(OpenUrlActionBuilderV1Dot2) builder,
  ) {
    selectAction = OpenUrlActionBuilderV1Dot2(uri).apply(builder).build();
  }

  /// Set submit action for the element
  void setSubmitSelectAction(
    void Function(SubmitActionBuilderV1Dot2) builder,
  ) {
    selectAction = SubmitActionBuilderV1Dot2().apply(builder).build();
  }

  /// Set toggle visibility action for the element
  void setToggleVisibilitySelectAction(
    List<TargetElement> targetElements,
    void Function(ToggleVisibilityActionBuilderV1Dot2) builder,
  ) {
    selectAction = ToggleVisibilityActionBuilderV1Dot2(targetElements)
        .apply(builder)
        .build();
  }

  /// Set execute action for the element
  void setExecuteSelectAction(
    void Function(ExecuteActionBuilderV1Dot4) builder,
  ) {
    selectAction = ExecuteActionBuilderV1Dot4().apply(builder).build();
  }
}

/// Helper mixin class to set select action for elements for adaptive cards version 1.5
abstract mixin class SelectActionBuilderHelperV1Dot5 {
  /// Set select action for the element
  set selectAction(ISelectAction selectAction);

  /// Set open url action for the element with the given uri
  void setOpenUrlSelectAction(
    Uri uri,
    void Function(OpenUrlActionBuilderV1Dot5) builder,
  ) {
    selectAction = OpenUrlActionBuilderV1Dot5(uri).apply(builder).build();
  }

  /// Set submit action for the element
  void setSubmitSelectAction(
    void Function(SubmitActionBuilderV1Dot5) builder,
  ) {
    selectAction = SubmitActionBuilderV1Dot5().apply(builder).build();
  }

  /// Set toggle visibility action for the element
  void setToggleVisibilitySelectAction(
    List<TargetElement> targetElements,
    void Function(ToggleVisibilityActionBuilderV1Dot5) builder,
  ) {
    selectAction = ToggleVisibilityActionBuilderV1Dot5(targetElements)
        .apply(builder)
        .build();
  }

  /// Set execute action for the element
  void setExecuteSelectAction(
    void Function(ExecuteActionBuilderV1Dot5) builder,
  ) {
    selectAction = ExecuteActionBuilderV1Dot5().apply(builder).build();
  }
}

extension _ApplyExtension<T> on T {
  T apply(void Function(T) builder) {
    builder(this);
    return this;
  }
}
