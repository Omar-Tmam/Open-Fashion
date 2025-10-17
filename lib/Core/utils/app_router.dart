import 'package:go_router/go_router.dart';
import 'package:open_fashion/Features/home_view/presentation/views/home_view.dart';
import 'package:open_fashion/Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: kSplashView, builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
    ],
  );
}
