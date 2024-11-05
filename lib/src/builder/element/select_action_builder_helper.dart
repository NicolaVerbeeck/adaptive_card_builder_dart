import 'package:adaptive_card_builder/src/builder/action/action_builder.dart';
import 'package:adaptive_card_builder/src/model/action.dart';

abstract mixin class SelectActionBuilderHelperV1Dot0 {
  set selectAction(ISelectAction selectAction);

  void setOpenUrlSelectAction(
      Uri uri, void Function(OpenUrlActionBuilderV1Dot0) builder) {
    selectAction = OpenUrlActionBuilderV1Dot0(uri).apply(builder).build();
  }

  void setSubmitUrlSelectAction(
      void Function(SubmitActionBuilderV1Dot0) builder) {
    selectAction = SubmitActionBuilderV1Dot0().apply(builder).build();
  }
}

abstract mixin class SelectActionBuilderHelperV1Dot1 {
  set selectAction(ISelectAction selectAction);

  void setOpenUrlSelectAction(
      Uri uri, void Function(OpenUrlActionBuilderV1Dot1) builder) {
    selectAction = OpenUrlActionBuilderV1Dot1(uri).apply(builder).build();
  }

  void setSubmitUrlSelectAction(
      void Function(SubmitActionBuilderV1Dot1) builder) {
    selectAction = SubmitActionBuilderV1Dot1().apply(builder).build();
  }
}

abstract mixin class SelectActionBuilderHelperV1Dot2 {
  set selectAction(ISelectAction selectAction);

  void setOpenUrlSelectAction(
      Uri uri, void Function(OpenUrlActionBuilderV1Dot2) builder) {
    selectAction = OpenUrlActionBuilderV1Dot2(uri).apply(builder).build();
  }

  void setSubmitUrlSelectAction(
      void Function(SubmitActionBuilderV1Dot2) builder) {
    selectAction = SubmitActionBuilderV1Dot2().apply(builder).build();
  }

  void setToggleVisibilitySelectAction(List<TargetElement> targetElements,
      void Function(ToggleVisibilityActionBuilderV1Dot2) builder) {
    selectAction = ToggleVisibilityActionBuilderV1Dot2(targetElements)
        .apply(builder)
        .build();
  }
}

abstract mixin class SelectActionBuilderHelperV1Dot4 {
  set selectAction(ISelectAction selectAction);

  void setOpenUrlSelectAction(
      Uri uri, void Function(OpenUrlActionBuilderV1Dot2) builder) {
    selectAction = OpenUrlActionBuilderV1Dot2(uri).apply(builder).build();
  }

  void setSubmitUrlSelectAction(
      void Function(SubmitActionBuilderV1Dot2) builder) {
    selectAction = SubmitActionBuilderV1Dot2().apply(builder).build();
  }

  void setToggleVisibilitySelectAction(List<TargetElement> targetElements,
      void Function(ToggleVisibilityActionBuilderV1Dot2) builder) {
    selectAction = ToggleVisibilityActionBuilderV1Dot2(targetElements)
        .apply(builder)
        .build();
  }

  void setExecuteSelectAction(
      void Function(ExecuteActionBuilderV1Dot4) builder) {
    selectAction = ExecuteActionBuilderV1Dot4().apply(builder).build();
  }
}

abstract mixin class SelectActionBuilderHelperV1Dot5 {
  set selectAction(ISelectAction selectAction);

  void setOpenUrlSelectAction(
      Uri uri, void Function(OpenUrlActionBuilderV1Dot5) builder) {
    selectAction = OpenUrlActionBuilderV1Dot5(uri).apply(builder).build();
  }

  void setSubmitUrlSelectAction(
      void Function(SubmitActionBuilderV1Dot5) builder) {
    selectAction = SubmitActionBuilderV1Dot5().apply(builder).build();
  }

  void setToggleVisibilitySelectAction(List<TargetElement> targetElements,
      void Function(ToggleVisibilityActionBuilderV1Dot5) builder) {
    selectAction = ToggleVisibilityActionBuilderV1Dot5(targetElements)
        .apply(builder)
        .build();
  }

  void setExecuteSelectAction(
      void Function(ExecuteActionBuilderV1Dot5) builder) {
    selectAction = ExecuteActionBuilderV1Dot5().apply(builder).build();
  }
}

extension _ApplyExtension<T> on T {
  T apply(void Function(T) builder) {
    builder(this);
    return this;
  }
}
