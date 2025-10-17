import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/custom_adaptive_layout.dart';
import 'package:open_fashion/Features/home_view/presentation/views/mobile_home_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAdaptiveLayout(mobileLayout: (context) => MobileHomeView(),tabletLayout: (context) => SizedBox(),);
  }
}