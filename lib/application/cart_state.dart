import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_example/model/product_model.dart';

import 'cart.dart';

class CartNotifier extends StateNotifier<Cart> {
  CartNotifier() : super(Cart({}));

  void updateItem(Product newProduct, int num) {
    state.map.update(newProduct, (value) => value+num, ifAbsent: () => 1);
    final Cart newCart = Cart(state.map);
    state = newCart;
    state.map.forEach((key, value) {
      print('${key.name} + $value');
    });
  }

  void resetCart() => state = Cart({});

  Map<Product, int> get() => state.map;

  int? getItem(Product product) {
    return state.map[product];
  }
}

