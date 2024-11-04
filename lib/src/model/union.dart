class Union<L, R> {
  final bool _isLeft;
  final L? left;
  final R? right;

  Union.left(this.left)
      : right = null,
        _isLeft = true;
  Union.right(this.right)
      : left = null,
        _isLeft = false;

  bool get isLeft => _isLeft;
  bool get isRight => !_isLeft;

  @override
  String toString() {
    if (isLeft) {
      return 'Left($left)';
    } else {
      return 'Right($right)';
    }
  }

  T fold<T>(T Function(L?) onLeft, T Function(R?) onRight) {
    if (isLeft) {
      return onLeft(left);
    } else {
      return onRight(right);
    }
  }
}
