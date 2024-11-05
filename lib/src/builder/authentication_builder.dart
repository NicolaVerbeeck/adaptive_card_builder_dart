import 'package:adaptive_card_builder/src/model/authentication.dart';

/// Authentication builder for cards. Since v 1.4
class AuthenticationBuilder {
  String? _text;
  String? _connectionName;
  TokenExchangeResource? _tokenExchangeResource;
  List<AuthCardButton>? _buttons;

  /// Text that can be displayed to the end user when prompting them to authenticate
  set text(String text) {
    _text = text;
  }

  /// The identifier for registered OAuth connection setting information
  set connectionName(String connectionName) {
    _connectionName = connectionName;
  }

  /// Provides information required to enable on-behalf-of single sign-on user authentication
  set tokenExchangeResource(TokenExchangeResource tokenExchangeResource) {
    _tokenExchangeResource = tokenExchangeResource;
  }

  /// Buttons that should be displayed to the user when prompting for authentication.
  /// The array MUST contain one button of type “signin”. Other button types are not currently supported
  set buttons(List<AuthCardButton> buttons) {
    _buttons = buttons;
  }

  /// Builds the authentication object with the provided configuration
  Authentication build() {
    return Authentication(
      text: _text,
      connectionName: _connectionName,
      tokenExchangeResource: _tokenExchangeResource,
      buttons: _buttons,
    );
  }
}

/// Builder for authentication buttons
class AuthCardButtonBuilder {
  final String _type;
  final String _value;
  String? _title;
  Uri? _image;

  /// Title of the button
  set title(String title) {
    _title = title;
  }

  /// Image URL for the button
  set image(Uri image) {
    _image = image;
  }

  /// Constructor for the AuthCardButtonBuilder
  AuthCardButtonBuilder({
    required String type,
    required String value,
  })  : _type = type,
        _value = value;

  /// Builds the authentication button with the provided configuration
  AuthCardButton build() {
    return AuthCardButton(
      type: _type,
      value: _value,
      title: _title,
      image: _image,
    );
  }
}
