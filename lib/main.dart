import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:open_fashion/Core/utils/app_router.dart';

void main() {
  debugPaintSizeEnabled = false;
  debugRepaintRainbowEnabled = false;

  runApp(const OpenFashion());
}

class OpenFashion extends StatelessWidget {
  const OpenFashion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          scrolledUnderElevation: 0,
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF111111),
        appBarTheme: const AppBarTheme(
          scrolledUnderElevation: 0,
          surfaceTintColor: Colors.transparent,
          backgroundColor: Color(0xFF111111),
          foregroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      themeMode: ThemeMode.dark,

      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
