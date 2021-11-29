import 'package:flutter/material.dart';
import 'package:provider_example/model/product_model.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('${product.name} - ${product.price}€'),
                  const SizedBox(height: 30,),
                  Text(product.desc, maxLines: 5,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
