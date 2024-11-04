import 'package:adaptive_card_builder/src/builder/action/versioned_action_builder.dart';
import 'package:adaptive_card_builder/src/builder/background_image_builder.dart';
import 'package:adaptive_card_builder/src/builder/element/element_container_helper.dart';
import 'package:adaptive_card_builder/src/model/action.dart';
import 'package:adaptive_card_builder/src/model/adaptive_card.dart';
import 'package:adaptive_card_builder/src/model/authentication.dart';
import 'package:adaptive_card_builder/src/model/background_image.dart';
import 'package:adaptive_card_builder/src/model/element.dart';
import 'package:adaptive_card_builder/src/model/refresh.dart';
import 'package:adaptive_card_builder/src/model/union.dart';
import 'package:meta/meta.dart';

abstract class AdaptiveCardBuilderFactory {
  static AdaptiveCardBuilderV1Dot0 v1_0() => AdaptiveCardBuilderV1Dot0();

  static AdaptiveCardBuilderV1Dot1 v1_1() => AdaptiveCardBuilderV1Dot1();

  static AdaptiveCardBuilderV1Dot2 v1_2() => AdaptiveCardBuilderV1Dot2();

  static AdaptiveCardBuilderV1Dot2 v1_3() => AdaptiveCardBuilderV1Dot3();

  static AdaptiveCardBuilderV1Dot4 v1_4() => AdaptiveCardBuilderV1Dot4();

  static AdaptiveCardBuilderV1Dot5 v1_5() => AdaptiveCardBuilderV1Dot5();
}

class AdaptiveCardBuilderV1Dot0
    with V1Dot0ActionBuilder, ElementContainerHelperV1Dot0 {
  @protected
  List<Element>? _elements;
  @protected
  List<CardAction>? _actions;
  @protected
  String? _fallbackText;
  @protected
  Union<BackgroundImage, Uri>? _backgroundImage;
  @protected
  String? _speak;
  @protected
  String? _lang;

  @override
  void addElement(Element element) {
    _elements ??= <Element>[];
    _elements!.add(element);
  }

  @override
  void addAction(CardAction action) {
    _actions ??= <CardAction>[];
    _actions!.add(action);
  }

  void setFallbackText(String fallbackText) {
    _fallbackText = fallbackText;
  }

  void setBackgroundImageUri(Uri backgroundImage) {
    _backgroundImage = Union.right(backgroundImage);
  }

  void setSpeak(String speak) {
    _speak = speak;
  }

  void setLang(String lang) {
    _lang = lang;
  }

  AdaptiveCard build() {
    return AdaptiveCard(
      version: AdaptiveCardVersion.v1_0,
      body: _elements,
      actions: _actions,
      fallbackText: _fallbackText,
      backgroundImage: _backgroundImage,
      speak: _speak,
      lang: _lang,
    );
  }
}

class AdaptiveCardBuilderV1Dot1 extends AdaptiveCardBuilderV1Dot0
    with V1Dot1ActionBuilder, ElementContainerHelperV1Dot1 {
  @protected
  VerticalContentAlignment? _verticalContentAlignment;
  @protected
  ISelectAction? _selectAction;

  void setVerticalContentAlignment(
      VerticalContentAlignment verticalContentAlignment) {
    _verticalContentAlignment = verticalContentAlignment;
  }

  void setSelectAction(ISelectAction selectAction) {
    _selectAction = selectAction;
  }

  @override
  AdaptiveCard build() {
    return AdaptiveCard(
      version: AdaptiveCardVersion.v1_1,
      body: _elements,
      actions: _actions,
      fallbackText: _fallbackText,
      backgroundImage: _backgroundImage,
      speak: _speak,
      lang: _lang,
      verticalContentAlignment: _verticalContentAlignment,
      selectAction: _selectAction,
    );
  }
}

class AdaptiveCardBuilderV1Dot2 extends AdaptiveCardBuilderV1Dot1
    with V1Dot2ActionBuilder, ElementContainerHelperV1Dot2 {
  @protected
  String? _minHeight;

  void setMinHeight(String minHeight) {
    _minHeight = minHeight;
  }

  void setBackgroundImage(
      Uri url, void Function(BackgroundImageBuilder) backgroundImage) {
    final builder = BackgroundImageBuilder(url);
    backgroundImage(builder);
    _backgroundImage = Union.left(builder.build());
  }

  @override
  AdaptiveCard build() {
    return AdaptiveCard(
      version: AdaptiveCardVersion.v1_2,
      body: _elements,
      actions: _actions,
      fallbackText: _fallbackText,
      backgroundImage: _backgroundImage,
      speak: _speak,
      lang: _lang,
      verticalContentAlignment: _verticalContentAlignment,
      selectAction: _selectAction,
      minHeight: _minHeight,
    );
  }
}

class AdaptiveCardBuilderV1Dot3 extends AdaptiveCardBuilderV1Dot2
    with V1Dot2ActionBuilder, ElementContainerHelperV1Dot3 {
  @override
  AdaptiveCard build() {
    return AdaptiveCard(
      version: AdaptiveCardVersion.v1_2,
      body: _elements,
      actions: _actions,
      fallbackText: _fallbackText,
      backgroundImage: _backgroundImage,
      speak: _speak,
      lang: _lang,
      verticalContentAlignment: _verticalContentAlignment,
      selectAction: _selectAction,
      minHeight: _minHeight,
    );
  }
}

class AdaptiveCardBuilderV1Dot4 extends AdaptiveCardBuilderV1Dot3
    with V1Dot4ActionBuilder, ElementContainerHelperV1Dot4 {
  @protected
  Refresh? _refresh;
  @protected
  Authentication? _authentication;

  void setRefresh(Refresh refresh) {
    _refresh = refresh;
  }

  void setAuthentication(Authentication authentication) {
    _authentication = authentication;
  }

  @override
  AdaptiveCard build() {
    return AdaptiveCard(
      version: AdaptiveCardVersion.v1_4,
      body: _elements,
      actions: _actions,
      fallbackText: _fallbackText,
      backgroundImage: _backgroundImage,
      speak: _speak,
      lang: _lang,
      verticalContentAlignment: _verticalContentAlignment,
      selectAction: _selectAction,
      minHeight: _minHeight,
      refresh: _refresh,
      authentication: _authentication,
    );
  }
}

class AdaptiveCardBuilderV1Dot5 extends AdaptiveCardBuilderV1Dot4
    with V1Dot5ActionBuilder, ElementContainerHelperV1Dot5 {
  @protected
  bool? _rtl;

  void setRtl(bool rtl) {
    _rtl = rtl;
  }

  @override
  AdaptiveCard build() {
    return AdaptiveCard(
      version: AdaptiveCardVersion.v1_5,
      body: _elements,
      actions: _actions,
      fallbackText: _fallbackText,
      backgroundImage: _backgroundImage,
      speak: _speak,
      lang: _lang,
      verticalContentAlignment: _verticalContentAlignment,
      selectAction: _selectAction,
      minHeight: _minHeight,
      refresh: _refresh,
      authentication: _authentication,
      rtl: _rtl,
    );
  }
}
