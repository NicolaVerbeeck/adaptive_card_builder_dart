import 'package:adaptive_card_builder/src/model/action.dart';

class Refresh {
  final List<String>? userIds;
  final DateTime? expires;
  final ExecuteAction? action;

  Refresh({
    required this.userIds,
    required this.expires,
    required this.action,
  });

  Map<String, dynamic> toJson() {
    return {
      if (userIds != null) 'userIds': userIds,
      if (expires != null) 'expires': expires!.toIso8601String(),
      if (action != null) 'action': action!.toJson(),
    };
  }
}
