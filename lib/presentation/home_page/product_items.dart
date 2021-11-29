
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_example/core/routes.gr.dart';
import 'package:provider_example/model/product_model.dart';

import 'home_page.dart';

class ProductItems extends ConsumerWidget {
  final Product _product;
  final int? _count;

  const ProductItems(this._product, this._count, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      onTap: () =>
          AutoRouter.of(context).navigate(ProductDetailPageRoute(product: _product)),
      title: Text(_product.name),
      trailing: SizedBox(
        width: 160,
        child: Row(
          children: [
            Text('${ref.watch(cartProvider).map[_product] ?? 0}'),
            const SizedBox(width: 16),
            IconButton(
              onPressed: () => updateCart(_product, _count, true, ref),
              icon: const Icon(Icons.add),
            ),
            const SizedBox(width: 16),
            IconButton(
              onPressed: () => updateCart(_product, _count, false, ref),
              icon: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }

  void updateCart(Product product, int? count, bool isAdd, WidgetRef ref) {
    late int num;
    if (isAdd) {
      num = 1;
    } else {
      if (count == null || count == 0) {
        num = 0;
      } else {
        num = -1;
      }
    }
    ref.read(cartProvider.notifier).updateItem(product, num);
  }
}
