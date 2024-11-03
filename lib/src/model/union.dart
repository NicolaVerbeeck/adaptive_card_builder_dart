
class Union<L,R> {
  final L? left;
  final R? right;

  Union.left(this.left) : right = null;
  Union.right(this.right) : left = null;

  bool get isLeft => left != null;
  bool get isRight => right != null;

  @override
  String toString() {
    if (isLeft) {
      return 'Left($left)';
    } else {
      return 'Right($right)';
    }
  }

  T fold<T>(T Function(L) onLeft, T Function(R) onRight) {
    if (isLeft) {
      return onLeft(left!);
    } else {
      return onRight(right!);
    }
  }
}