import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_example/model/user_model.dart';

class UserNotifier extends StateNotifier<User?> {
  UserNotifier() : super(null);

  void login(User user) {
    state = user;
  }

  void logout() {
    state = null;
  }
}
