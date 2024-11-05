import 'package:adaptive_card_builder/src/builder/action/versioned_action_builder.dart';
import 'package:adaptive_card_builder/src/builder/authentication_builder.dart';
import 'package:adaptive_card_builder/src/builder/background_image_builder.dart';
import 'package:adaptive_card_builder/src/builder/element/element_container_helper.dart';
import 'package:adaptive_card_builder/src/builder/element/select_action_builder_helper.dart';
import 'package:adaptive_card_builder/src/builder/refresh_builder.dart';
import 'package:adaptive_card_builder/src/model/action.dart';
import 'package:adaptive_card_builder/src/model/adaptive_card.dart';
import 'package:adaptive_card_builder/src/model/authentication.dart';
import 'package:adaptive_card_builder/src/model/background_image.dart';
import 'package:adaptive_card_builder/src/model/element.dart';
import 'package:adaptive_card_builder/src/model/refresh.dart';
import 'package:adaptive_card_builder/src/model/union.dart';
import 'package:meta/meta.dart';

/// Factory for creating adaptive card builders, per version
abstract class AdaptiveCardBuilderFactory {
  /// Creates an adaptive card builder for version 1.0
  static AdaptiveCardBuilderV1Dot0 v1_0() => AdaptiveCardBuilderV1Dot0();

  /// Creates an adaptive card builder for version 1.1
  static AdaptiveCardBuilderV1Dot1 v1_1() => AdaptiveCardBuilderV1Dot1();

  /// Creates an adaptive card builder for version 1.2
  static AdaptiveCardBuilderV1Dot2 v1_2() => AdaptiveCardBuilderV1Dot2();

  /// Creates an adaptive card builder for version 1.3
  static AdaptiveCardBuilderV1Dot2 v1_3() => AdaptiveCardBuilderV1Dot3();

  /// Creates an adaptive card builder for version 1.4
  static AdaptiveCardBuilderV1Dot4 v1_4() => AdaptiveCardBuilderV1Dot4();

  /// Creates an adaptive card builder for version 1.5
  static AdaptiveCardBuilderV1Dot5 v1_5() => AdaptiveCardBuilderV1Dot5();
}

/// Adaptive card builder that builds adaptive cards for version 1.0
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

  /// Sets the fallback text for the adaptive card
  set fallbackText(String fallbackText) {
    _fallbackText = fallbackText;
  }

  /// Sets the background image for the adaptive card
  set backgroundImageUri(Uri backgroundImage) {
    _backgroundImage = Union.right(backgroundImage);
  }

  /// Sets the speak property for the adaptive card
  set speak(String speak) {
    _speak = speak;
  }

  /// Sets the lang property for the adaptive card
  set lang(String lang) {
    _lang = lang;
  }

  /// Builds the adaptive card with the provided parameters
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

/// Adaptive card builder that builds adaptive cards for version 1.1
class AdaptiveCardBuilderV1Dot1 extends AdaptiveCardBuilderV1Dot0
    with
        V1Dot1ActionBuilder,
        ElementContainerHelperV1Dot1,
        SelectActionBuilderHelperV1Dot1 {
  @protected
  VerticalContentAlignment? _verticalContentAlignment;
  @protected
  ISelectAction? _selectAction;

  /// Sets the vertical content alignment for the adaptive card
  set verticalContentAlignment(
    VerticalContentAlignment verticalContentAlignment,
  ) {
    _verticalContentAlignment = verticalContentAlignment;
  }

  @override
  set selectAction(ISelectAction selectAction) {
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

/// Adaptive card builder that builds adaptive cards for version 1.2
class AdaptiveCardBuilderV1Dot2 extends AdaptiveCardBuilderV1Dot1
    with
        V1Dot2ActionBuilder,
        ElementContainerHelperV1Dot2,
        SelectActionBuilderHelperV1Dot2 {
  @protected
  String? _minHeight;

  /// Sets the minimum height for the adaptive card
  set minHeight(String minHeight) {
    _minHeight = minHeight;
  }

  /// Sets the background image for the adaptive card
  void setBackgroundImage(
    Uri url,
    void Function(BackgroundImageBuilder) backgroundImage,
  ) {
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

/// Adaptive card builder that builds adaptive cards for version 1.3
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

/// Adaptive card builder that builds adaptive cards for version 1.4
class AdaptiveCardBuilderV1Dot4 extends AdaptiveCardBuilderV1Dot3
    with
        V1Dot4ActionBuilder,
        ElementContainerHelperV1Dot4,
        SelectActionBuilderHelperV1Dot4 {
  @protected
  Refresh? _refresh;
  @protected
  Authentication? _authentication;

  /// Sets the refresh property for the adaptive card
  set refresh(void Function(RefreshBuilderV1Dot4) builder) {
    final refreshBuilder = RefreshBuilderV1Dot4();
    builder(refreshBuilder);
    _refresh = refreshBuilder.build();
  }

  /// Sets the authentication for the adaptive card
  set authentication(void Function(AuthenticationBuilder) builder) {
    final authenticationBuilder = AuthenticationBuilder();
    builder(authenticationBuilder);
    _authentication = authenticationBuilder.build();
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

/// Adaptive card builder that builds adaptive cards for version 1.5
class AdaptiveCardBuilderV1Dot5 extends AdaptiveCardBuilderV1Dot4
    with
        V1Dot5ActionBuilder,
        ElementContainerHelperV1Dot5,
        SelectActionBuilderHelperV1Dot5 {
  @protected
  bool? _rtl;

  /// Sets the rtl property for the adaptive card
  set rtl(bool rtl) {
    _rtl = rtl;
  }

  @override
  set refresh(void Function(RefreshBuilderV1Dot5) builder) {
    final refreshBuilder = RefreshBuilderV1Dot5();
    builder(refreshBuilder);
    _refresh = refreshBuilder.build();
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
