import 'package:adaptive_card_builder/src/model/action.dart';
import 'package:adaptive_card_builder/src/model/refresh.dart';

class RefreshBuilder {
  ExecuteAction? _action;
  List<String>? _userIds;

  void setAction(ExecuteAction action) {
    _action = action;
  }

  void setUserIds(List<String> userIds) {
    _userIds = userIds;
  }

  Refresh build() {
    return Refresh(
      action: _action,
      userIds: _userIds,
    );
  }
}
