class Authentication {
  final String? text;
  final String? connectionName;
  final TokenExchangeResource? tokenExchangeResource;
  final List<AuthCardButton>? buttons;

  Authentication({
    required this.text,
    required this.connectionName,
    required this.tokenExchangeResource,
    required this.buttons,
  });

  Map<String, dynamic> toJson() {
    return {
      if (text != null) 'text': text,
      if (connectionName != null) 'connectionName': connectionName,
      if (tokenExchangeResource != null) 'tokenExchangeResource': tokenExchangeResource!.toJson(),
      if (buttons != null) 'buttons': buttons!.map((e) => e.toJson()).toList(),
    };
  }
}

class TokenExchangeResource {
  final String id;
  final Uri uri;
  final String providerId;

  TokenExchangeResource({
    required this.id,
    required this.uri,
    required this.providerId,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uri': uri.toString(),
      'providerId': providerId,
    };
  }
}

class AuthCardButton {
  final String type;
  final String value;
  final String? title;
  final Uri? image;

  AuthCardButton({
    required this.type,
    required this.value,
    required this.title,
    required this.image,
  });

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'value': value,
      if (title != null) 'title': title,
      if (image != null) 'image': image.toString(),
    };
  }
}
