import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_router.dart';

void main() {
  runApp(const OpenFashion());
}

class OpenFashion extends StatelessWidget {
  const OpenFashion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(debugShowCheckedModeBanner: false, routerConfig: AppRouter.router);
  }
}
