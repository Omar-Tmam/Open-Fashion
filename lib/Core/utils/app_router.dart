import 'package:go_router/go_router.dart';
import 'package:open_fashion/Features/home_view/data/models/product_model.dart';
import 'package:open_fashion/Features/home_view/presentation/views/home_view.dart';
import 'package:open_fashion/Features/product_details/presentation/views/product_details.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/shipping_view.dart';
import 'package:open_fashion/Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';
  static const kProductDetailsView = '/productDetailsView';
  static const kShippingView = '/shippingView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: kSplashView, builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: kProductDetailsView,
        builder: (context, state) => ProductDetails(productModel: state.extra as ProductModel),
      ),
      GoRoute(path: kShippingView,builder: (context, state) => ShippingView(),)
    ],
  );
}
