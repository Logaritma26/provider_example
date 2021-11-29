import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_page/home_page.dart';

class CartPage extends ConsumerStatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  @override
  Widget build(BuildContext context) {
    final mapList = ref
        .watch(cartProvider)
        .map
        .entries
        .toList()
        .where((element) => element.value > 0);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: mapList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(mapList.elementAt(index).key.name),
                trailing: Text('quantity: ' + mapList.elementAt(index).value.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}
