import 'package:go_router/go_router.dart';
import 'package:open_fashion/Features/splash/presentation/views/splash_view.dart';
abstract class AppRouter {
  static const kSplashView = '/';

  static final router = GoRouter(
    routes: [
      GoRoute(path: kSplashView, builder: (context, state) => SplashView()),
    ],
  );
}
