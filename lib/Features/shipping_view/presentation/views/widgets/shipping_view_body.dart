import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Core/widgets/header_widget.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/widgets/custom_container.dart';

class ShippingViewBody extends StatelessWidget {
  const ShippingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Gap(34),
          HeaderWidget(title: 'checkout'),
          Gap(20),
          CustomContainer(title: 'Add shipping address', icon: Assets.imgsPlus),
        ],
      ),
    );
  }
}

