import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/size_config.dart';

class CustomAdaptiveLayout extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout;

  const CustomAdaptiveLayout({super.key, required this.mobileLayout, required this.tabletLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < SizeConfig.tabletBreakPoint
            ? mobileLayout(context)
            : tabletLayout(context);
      },
    );
  }
}
