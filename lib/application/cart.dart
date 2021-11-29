import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider_example/model/product_model.dart';

part 'cart.freezed.dart';

@freezed
class Cart with _$Cart {
  factory Cart(Map<Product, int> map) = _Cart;
}
