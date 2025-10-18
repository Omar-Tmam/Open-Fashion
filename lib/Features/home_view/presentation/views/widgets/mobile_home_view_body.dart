import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/home_view/presentation/views/widgets/cover_builder.dart';
import 'package:open_fashion/Features/home_view/presentation/views/widgets/product_builder.dart';

class MobileHomeViewBody extends StatelessWidget {
  const MobileHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Positioned(top: 10, right: 0, left: 0, child: SvgPicture.asset(Assets.imgs10)),
          Positioned(top: 40, right: 0, left: 0, child: SvgPicture.asset(Assets.imgsOctober)),
          Positioned(top: 85, right: 0, left: 0, child: SvgPicture.asset(Assets.imgsCollection)),
          Positioned.fill(
            top: 140,

            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(Assets.imgsMainImg),
                  Gap(20),
                  ProductBuilder(),

                  Gap(50),
                  Text(
                    'You may also like'.toUpperCase(),
                    style: AppStyles.bodyLarge(context).copyWith(fontSize: 26),
                  ),
                  Gap(20),
                  SvgPicture.asset(Assets.imgs12, width: 200),
                  Gap(50),
                  CoverBuilder(),
                  Gap(50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
