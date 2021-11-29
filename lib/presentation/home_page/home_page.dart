import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_example/application/cart.dart';
import 'package:provider_example/application/cart_state.dart';
import 'package:provider_example/core/constants.dart';
import 'package:provider_example/core/routes.gr.dart';
import 'package:provider_example/model/user_model.dart';
import 'package:provider_example/presentation/home_page/product_items.dart';

import '../login_page.dart';

final cartProvider =
    StateNotifierProvider<CartNotifier, Cart>((ref) => CartNotifier());

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    final user = ref.watch(userProvider);
    final cartItems = ref.watch(cartProvider);

    if (user == null) {
      router.replace(const LoginPageRoute());
      return const SizedBox(); // user null -> some error message
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(user!.username),
          actions: [
            IconButton(
                onPressed: () =>
                    AutoRouter.of(context).navigate(const CartPageRoute()),
                icon: const Icon(Icons.add_shopping_cart)),
            IconButton(
                onPressed: () => ref.read(userProvider.notifier).logout(),
                icon: const Icon(Icons.logout)),
          ],
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            final product = products[index];
            final count = cartItems.map[product];
            return ProductItems(product, count);
          },
        ),
      );
    }
  }
}
