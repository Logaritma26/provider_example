import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_example/application/user_state.dart';
import 'package:provider_example/core/constants.dart';
import 'package:provider_example/core/routes.gr.dart';
import 'package:provider_example/model/user_model.dart';

final userProvider =
    StateNotifierProvider<UserNotifier, User?>((ref) => UserNotifier());

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: DropDown(
          items: users.map((e) => e.username).toList(),
          hint: const Text("Username"),
          icon: const Icon(
            Icons.expand_more,
            color: Colors.blue,
          ),
          onChanged: (String? username) => login(username, ref, context),
        ),
      ),
    );
  }

  void login(String? username, WidgetRef ref, BuildContext context) {
    if (username == null) return;

    final User user =
        users.firstWhere((element) => element.username == username);

    ref.read(userProvider.notifier).login(user);
    AutoRouter.of(context).replace(const HomeRootRoute());
  }
}
