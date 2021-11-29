// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:provider_example/model/product_model.dart' as _i8;
import 'package:provider_example/presentation/cart_page.dart' as _i3;
import 'package:provider_example/presentation/details/product_detail_page.dart'
    as _i5;
import 'package:provider_example/presentation/home_page/home_page.dart' as _i4;
import 'package:provider_example/presentation/home_page/home_root.dart' as _i2;
import 'package:provider_example/presentation/login_page.dart' as _i1;

class RootRouter extends _i6.RootStackRouter {
  RootRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    HomeRootRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.HomeRoot());
    },
    CartPageRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.CartPage());
    },
    HomePageRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    ProductDetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailPageRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i5.ProductDetailPage(key: args.key, product: args.product));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(LoginPageRoute.name, path: '/'),
        _i6.RouteConfig(HomeRootRoute.name, path: '/home-root', children: [
          _i6.RouteConfig(CartPageRoute.name,
              path: 'cart-page', parent: HomeRootRoute.name),
          _i6.RouteConfig(HomePageRoute.name,
              path: '', parent: HomeRootRoute.name),
          _i6.RouteConfig(ProductDetailPageRoute.name,
              path: 'product-detail-page', parent: HomeRootRoute.name)
        ]),
        _i6.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for [_i1.LoginPage]
class LoginPageRoute extends _i6.PageRouteInfo<void> {
  const LoginPageRoute() : super(name, path: '/');

  static const String name = 'LoginPageRoute';
}

/// generated route for [_i2.HomeRoot]
class HomeRootRoute extends _i6.PageRouteInfo<void> {
  const HomeRootRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: '/home-root', initialChildren: children);

  static const String name = 'HomeRootRoute';
}

/// generated route for [_i3.CartPage]
class CartPageRoute extends _i6.PageRouteInfo<void> {
  const CartPageRoute() : super(name, path: 'cart-page');

  static const String name = 'CartPageRoute';
}

/// generated route for [_i4.HomePage]
class HomePageRoute extends _i6.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '');

  static const String name = 'HomePageRoute';
}

/// generated route for [_i5.ProductDetailPage]
class ProductDetailPageRoute
    extends _i6.PageRouteInfo<ProductDetailPageRouteArgs> {
  ProductDetailPageRoute({_i7.Key? key, required _i8.Product product})
      : super(name,
            path: 'product-detail-page',
            args: ProductDetailPageRouteArgs(key: key, product: product));

  static const String name = 'ProductDetailPageRoute';
}

class ProductDetailPageRouteArgs {
  const ProductDetailPageRouteArgs({this.key, required this.product});

  final _i7.Key? key;

  final _i8.Product product;

  @override
  String toString() {
    return 'ProductDetailPageRouteArgs{key: $key, product: $product}';
  }
}
