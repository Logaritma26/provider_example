
import 'package:provider_example/model/product_model.dart';
import 'package:provider_example/model/user_model.dart';

final users = [
  User(username: 'louise', type: UserType.guest),
  User(username: 'frank', type: UserType.guest),
  User(username: 'alex', type: UserType.standard),
  User(username: 'kaan', type: UserType.pro),
];


const String description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fermentum libero mauris, sed placerat metus volutpat ac. Aliquam hendrerit posuere augue, quis faucibus enim sagittis tincidunt. Nulla lacinia facilisis porta. Phasellus odio ex, molestie non luctus non, accumsan quis tortor. Ut euismod sem rhoncus pretium porttitor. Quisque mollis, lectus non pharetra ultricies, leo ipsum consectetur lorem, vel venenatis libero ante vel nulla. Nunc suscipit, dui vitae condimentum scelerisque, purus est convallis nibh, vel tincidunt urna leo ut mi. Nunc pulvinar ornare elit vel consequat. Ut id diam sed lorem laoreet porta ac vitae nisi. Mauris sollicitudin magna purus, in fringilla massa condimentum euismod.\n\nDonec semper euismod velit et porttitor. Duis semper, elit at auctor dapibus, orci ante posuere orci, et consequat ex risus eget tortor. Pellentesque volutpat cursus elementum. Morbi bibendum accumsan massa, ut blandit mi aliquet posuere. Nunc vel massa scelerisque, elementum lorem et, bibendum odio. Suspendisse mi nunc, rhoncus vitae volutpat auctor, fermentum non leo. Vivamus at fringilla tellus. Sed feugiat sodales facilisis. Quisque vel nisl purus. Maecenas id auctor lorem, sit amet hendrerit nunc. Nam fringilla lorem ac blandit rhoncus. Phasellus nec nunc dictum, interdum metus quis, ultricies libero. Duis ullamcorper cursus nulla, sed tristique mauris molestie sed. Phasellus euismod imperdiet sem ac pharetra.';

final products = [
  Product(name: 'pasta', price: 15, desc: description),
  Product(name: 'oil', price: 25, desc: description),
  Product(name: 'herbs', price: 11, desc: description),
  Product(name: 'meat', price: 10, desc: description),
  Product(name: 'mushroom', price: 5, desc: description),
  Product(name: 'beans', price: 4, desc: description),
  Product(name: 'pizza', price: 19, desc: description),
  Product(name: 'beer', price: 34, desc: description),
  Product(name: 'fries', price: 47, desc: description),
  Product(name: 'ham', price: 46, desc: description),
  Product(name: 'eggs', price: 12, desc: description),
  Product(name: 'tomato', price: 31, desc: description),
  Product(name: 'kebab', price: 21, desc: description),
  Product(name: 'pasta', price: 2, desc: description),
  Product(name: 'pasta 2', price: 3, desc: description),
  Product(name: 'wine', price: 100, desc: description),
  Product(name: 'wine 2', price: 159, desc: description),
  Product(name: 'ice cream', price: 24, desc: description),
  Product(name: 'pierogi', price: 17, desc: description),
];