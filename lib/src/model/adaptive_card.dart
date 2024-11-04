import 'package:adaptive_card_builder/src/model/action.dart';
import 'package:adaptive_card_builder/src/model/authentication.dart';
import 'package:adaptive_card_builder/src/model/background_image.dart';
import 'package:adaptive_card_builder/src/model/element.dart';
import 'package:adaptive_card_builder/src/model/refresh.dart';
import 'package:adaptive_card_builder/src/model/union.dart';

class AdaptiveCard {
  final AdaptiveCardVersion version;
  final Refresh? refresh;
  final Authentication? authentication;
  final List<Element>? body;
  final List<CardAction>? actions;
  final ISelectAction? selectAction;
  final String? fallbackText;
  final Union<BackgroundImage, Uri>? backgroundImage;
  final String? minHeight;
  final bool? rtl;
  final String? speak;
  final String? lang;
  final VerticalContentAlignment? verticalContentAlignment;

  AdaptiveCard({
    required this.version,
    this.refresh,
    this.authentication,
    this.body,
    this.actions,
    this.selectAction,
    this.fallbackText,
    this.backgroundImage,
    this.minHeight,
    this.rtl,
    this.speak,
    this.lang,
    this.verticalContentAlignment,
  });

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'type': 'AdaptiveCard',
      'version': version.toJson(),
      r'$schema': 'https://adaptivecards.io/schemas/adaptive-card.json',
      if (actions != null) 'actions': actions!.map((e) => e.toJson()).toList(),
      if (refresh != null) 'refresh': refresh!.toJson(),
      if (authentication != null) 'authentication': authentication!.toJson(),
      if (body != null) 'body': body!.map((e) => e.toJson()).toList(),
      if (selectAction != null) 'selectAction': selectAction!.toJson(),
      if (fallbackText != null) 'fallbackText': fallbackText,
      if (backgroundImage?.isLeft == true)
        'backgroundImage': backgroundImage!.left!.toJson(),
      if (backgroundImage?.isRight == true)
        'backgroundImage': backgroundImage!.right!.toString(),
      if (minHeight != null) 'minHeight': minHeight,
      if (rtl != null) 'rtl': rtl,
      if (speak != null) 'speak': speak,
      if (lang != null) 'lang': lang,
      if (verticalContentAlignment != null)
        'verticalContentAlignment': verticalContentAlignment!.toJson(),
    };
    return json;
  }
}

enum AdaptiveCardVersion {
  v1_0,
  v1_1,
  v1_2,
  v1_3,
  v1_4,
  v1_5,
  ;

  String toJson() => switch (this) {
        AdaptiveCardVersion.v1_0 => '1.0',
        AdaptiveCardVersion.v1_1 => '1.1',
        AdaptiveCardVersion.v1_2 => '1.2',
        AdaptiveCardVersion.v1_3 => '1.3',
        AdaptiveCardVersion.v1_4 => '1.4',
        AdaptiveCardVersion.v1_5 => '1.5',
      };
}

enum VerticalContentAlignment {
  top,
  center,
  bottom,
  ;

  String toJson() => switch (this) {
        VerticalContentAlignment.top => 'top',
        VerticalContentAlignment.center => 'center',
        VerticalContentAlignment.bottom => 'bottom',
      };
}
