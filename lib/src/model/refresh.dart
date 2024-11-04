import 'package:adaptive_card_builder/src/model/action.dart';

class Refresh {
  final List<String>? userIds;
  final ExecuteAction? action;

  Refresh({
    required this.userIds,
    required this.action,
  });

  Map<String, dynamic> toJson() {
    return {
      if (userIds != null) 'userIds': userIds,
      if (action != null) 'action': action!.toJson(),
    };
  }
}
