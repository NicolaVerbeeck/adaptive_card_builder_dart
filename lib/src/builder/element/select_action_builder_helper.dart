import 'package:adaptive_card_builder/src/builder/action/action_builder.dart';
import 'package:adaptive_card_builder/src/model/action.dart';

abstract mixin class SelectActionBuilderHelperV1Dot0 {
  void setSelectAction(ISelectAction selectAction);

  void setOpenUrlSelectAction(
      Uri uri, void Function(OpenUrlActionBuilderV1Dot0) builder) {
    setSelectAction(OpenUrlActionBuilderV1Dot0(uri).apply(builder).build());
  }

  void setSubmitUrlSelectAction(
      void Function(SubmitActionBuilderV1Dot0) builder) {
    setSelectAction(SubmitActionBuilderV1Dot0().apply(builder).build());
  }
}

abstract mixin class SelectActionBuilderHelperV1Dot1 {
  void setSelectAction(ISelectAction selectAction);

  void setOpenUrlSelectAction(
      Uri uri, void Function(OpenUrlActionBuilderV1Dot1) builder) {
    setSelectAction(OpenUrlActionBuilderV1Dot1(uri).apply(builder).build());
  }

  void setSubmitUrlSelectAction(
      void Function(SubmitActionBuilderV1Dot1) builder) {
    setSelectAction(SubmitActionBuilderV1Dot1().apply(builder).build());
  }
}

abstract mixin class SelectActionBuilderHelperV1Dot2 {
  void setSelectAction(ISelectAction selectAction);

  void setOpenUrlSelectAction(
      Uri uri, void Function(OpenUrlActionBuilderV1Dot2) builder) {
    setSelectAction(OpenUrlActionBuilderV1Dot2(uri).apply(builder).build());
  }

  void setSubmitUrlSelectAction(
      void Function(SubmitActionBuilderV1Dot2) builder) {
    setSelectAction(SubmitActionBuilderV1Dot2().apply(builder).build());
  }

  void setToggleVisibilitySelectAction(List<TargetElement> targetElements,
      void Function(ToggleVisibilityActionBuilderV1Dot2) builder) {
    setSelectAction(ToggleVisibilityActionBuilderV1Dot2(targetElements)
        .apply(builder)
        .build());
  }
}

abstract mixin class SelectActionBuilderHelperV1Dot4 {
  void setSelectAction(ISelectAction selectAction);

  void setOpenUrlSelectAction(
      Uri uri, void Function(OpenUrlActionBuilderV1Dot2) builder) {
    setSelectAction(OpenUrlActionBuilderV1Dot2(uri).apply(builder).build());
  }

  void setSubmitUrlSelectAction(
      void Function(SubmitActionBuilderV1Dot2) builder) {
    setSelectAction(SubmitActionBuilderV1Dot2().apply(builder).build());
  }

  void setToggleVisibilitySelectAction(List<TargetElement> targetElements,
      void Function(ToggleVisibilityActionBuilderV1Dot2) builder) {
    setSelectAction(ToggleVisibilityActionBuilderV1Dot2(targetElements)
        .apply(builder)
        .build());
  }

  void setExecuteSelectAction(
      void Function(ExecuteActionBuilderV1Dot4) builder) {
    setSelectAction(ExecuteActionBuilderV1Dot4().apply(builder).build());
  }
}

abstract mixin class SelectActionBuilderHelperV1Dot5 {
  void setSelectAction(ISelectAction selectAction);

  void setOpenUrlSelectAction(
      Uri uri, void Function(OpenUrlActionBuilderV1Dot5) builder) {
    setSelectAction(OpenUrlActionBuilderV1Dot5(uri).apply(builder).build());
  }

  void setSubmitUrlSelectAction(
      void Function(SubmitActionBuilderV1Dot5) builder) {
    setSelectAction(SubmitActionBuilderV1Dot5().apply(builder).build());
  }

  void setToggleVisibilitySelectAction(List<TargetElement> targetElements,
      void Function(ToggleVisibilityActionBuilderV1Dot5) builder) {
    setSelectAction(ToggleVisibilityActionBuilderV1Dot5(targetElements)
        .apply(builder)
        .build());
  }

  void setExecuteSelectAction(
      void Function(ExecuteActionBuilderV1Dot5) builder) {
    setSelectAction(ExecuteActionBuilderV1Dot5().apply(builder).build());
  }
}

extension _ApplyExtension<T> on T {
  T apply(void Function(T) builder) {
    builder(this);
    return this;
  }
}
