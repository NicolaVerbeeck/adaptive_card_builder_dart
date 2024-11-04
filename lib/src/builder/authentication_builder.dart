import 'package:adaptive_card_builder/src/model/authentication.dart';

class AuthenticationBuilder {
  String? _text;
  String? _connectionName;
  TokenExchangeResource? _tokenExchangeResource;
  List<AuthCardButton>? _buttons;

  void setText(String text) {
    _text = text;
  }

  void setConnectionName(String connectionName) {
    _connectionName = connectionName;
  }

  void setTokenExchangeResource(TokenExchangeResource tokenExchangeResource) {
    _tokenExchangeResource = tokenExchangeResource;
  }

  void setButtons(List<AuthCardButton> buttons) {
    _buttons = buttons;
  }

  Authentication build() {
    return Authentication(
      text: _text,
      connectionName: _connectionName,
      tokenExchangeResource: _tokenExchangeResource,
      buttons: _buttons,
    );
  }
}

class AuthCardButtonBuilder {
  final String _type;
  final String _value;
  String? _title;
  Uri? _image;

  void setTitle(String title) {
    _title = title;
  }

  void setImage(Uri image) {
    _image = image;
  }

  AuthCardButtonBuilder({
    required String type,
    required String value,
  })  : _type = type,
        _value = value;

  AuthCardButton build() {
    return AuthCardButton(
      type: _type,
      value: _value,
      title: _title,
      image: _image,
    );
  }
}
