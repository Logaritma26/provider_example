class User {
  final String username;
  final UserType type;

  User({required this.username, required this.type});
}

enum UserType {
  standard,
  pro,
  guest, // unconfirmed account
}
