import 'package:adaptive_card_builder/adaptive_card_builder.dart';
import 'package:test/test.dart';

void main() {
  group('V1.0 Builder tests', () {
    late AdaptiveCardBuilderV1Dot0 sut;

    setUp(() {
      sut = AdaptiveCardBuilderFactory.v1_0();
    });

    test('setBackgroundImageUri', () {
      sut.backgroundImageUri = Uri.parse('https://example.com/image.jpg');
      expect(sut.build().toJson(), {
        'type': 'AdaptiveCard',
        'version': '1.0',
        r'$schema': 'https://adaptivecards.io/schemas/adaptive-card.json',
        'backgroundImage': 'https://example.com/image.jpg',
      });
    });
    test('setFallbackText', () {
      sut.fallbackText = 'Fallback text';
      expect(sut.build().toJson(), {
        'type': 'AdaptiveCard',
        'version': '1.0',
        r'$schema': 'https://adaptivecards.io/schemas/adaptive-card.json',
        'fallbackText': 'Fallback text',
      });
    });
    test('setSpeak', () {
      sut.speak = 'Speak text';
      expect(sut.build().toJson(), {
        'type': 'AdaptiveCard',
        'version': '1.0',
        r'$schema': 'https://adaptivecards.io/schemas/adaptive-card.json',
        'speak': 'Speak text',
      });
    });
    test('setLang', () {
      sut.lang = 'EN';
      expect(sut.build().toJson(), {
        'type': 'AdaptiveCard',
        'version': '1.0',
        r'$schema': 'https://adaptivecards.io/schemas/adaptive-card.json',
        'lang': 'EN',
      });
    });
    test('addSubmitAction', () {
      sut.addSubmitAction((builder) {
        builder
          ..id = 'some-id'
          ..data = 'any data'
          ..title = 'a title';
      });
      expect(sut.build().toJson(), {
        'type': 'AdaptiveCard',
        'version': '1.0',
        r'$schema': 'https://adaptivecards.io/schemas/adaptive-card.json',
        'actions': [
          {
            'type': 'Action.Submit',
            'data': 'any data',
            'id': 'some-id',
            'title': 'a title',
          }
        ],
      });
    });
    test('addOpenUrlAction', () {
      sut.addOpenUrlAction(Uri.parse('https://example.com'), (builder) {
        builder
          ..id = 'some-id'
          ..title = 'a title';
      });
      expect(sut.build().toJson(), {
        'type': 'AdaptiveCard',
        'version': '1.0',
        r'$schema': 'https://adaptivecards.io/schemas/adaptive-card.json',
        'actions': [
          {
            'type': 'Action.OpenUrl',
            'url': 'https://example.com',
            'id': 'some-id',
            'title': 'a title',
          }
        ],
      });
    });
    test('addShowCardAction', () {
      sut.addShowCardAction((builder) {
        builder
          ..id = 'some-id'
          ..title = 'a title'
          ..card = (childBuilder) {
            childBuilder.lang = 'DE';
          };
      });
      expect(sut.build().toJson(), {
        'type': 'AdaptiveCard',
        'version': '1.0',
        r'$schema': 'https://adaptivecards.io/schemas/adaptive-card.json',
        'actions': [
          {
            'type': 'Action.ShowCard',
            'card': {
              'type': 'AdaptiveCard',
              'version': '1.0',
              r'$schema': 'https://adaptivecards.io/schemas/adaptive-card.json',
              'lang': 'DE',
            },
            'id': 'some-id',
            'title': 'a title',
          }
        ],
      });
    });
  });
}
