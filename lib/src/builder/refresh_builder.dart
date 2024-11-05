import 'package:adaptive_card_builder/src/builder/action/action_builder.dart';
import 'package:adaptive_card_builder/src/model/action.dart';
import 'package:adaptive_card_builder/src/model/refresh.dart';

/// Refresh builder for cards. Since v 1.4
class RefreshBuilderV1Dot4 {
  ExecuteAction? _action;
  List<String>? _userIds;

  /// Action that should be executed when the card is refreshed
  set action(void Function(ExecuteActionBuilderV1Dot4) builder) {
    final actionBuilder = ExecuteActionBuilderV1Dot4();
    builder(actionBuilder);
    _action = actionBuilder.build();
  }

  /// List of user IDs that should be refreshed
  set userIds(List<String> userIds) {
    _userIds = userIds;
  }

  /// Builds the refresh object with the provided configuration
  Refresh build() {
    return Refresh(
      action: _action,
      userIds: _userIds,
    );
  }
}

/// Refresh builder for cards version 1.5
class RefreshBuilderV1Dot5 extends RefreshBuilderV1Dot4 {
  /// Action that should be executed when the card is refreshed
  @override
  set action(void Function(ExecuteActionBuilderV1Dot5) builder) {
    final actionBuilder = ExecuteActionBuilderV1Dot5();
    builder(actionBuilder);
    _action = actionBuilder.build();
  }

  @override
  Refresh build() {
    return Refresh(
      action: _action,
      userIds: _userIds,
    );
  }
}
