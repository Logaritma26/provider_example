import 'package:auto_route/auto_route.dart';
import 'package:provider_example/presentation/cart_page.dart';
import 'package:provider_example/presentation/details/product_detail_page.dart';
import 'package:provider_example/presentation/home_page/home_page.dart';
import 'package:provider_example/presentation/home_page/home_root.dart';
import 'package:provider_example/presentation/login_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: LoginPage,
      initial: true,
    ),
    AutoRoute(
      page: HomeRoot,
      children: [
        AutoRoute(page: CartPage),
        AutoRoute(page: HomePage, initial: true),
        AutoRoute(page: ProductDetailPage),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $RootRouter {}
