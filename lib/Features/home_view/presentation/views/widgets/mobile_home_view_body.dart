import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/assets.dart';

class MobileHomeViewBody extends StatelessWidget {
  const MobileHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(top: 10, right: 0, left: 0, child: SvgPicture.asset(Assets.imgs10)),
        Positioned(top: 40, right: 0, left: 0, child: SvgPicture.asset(Assets.imgsOctober)),
        Positioned(top: 85, right: 0, left: 0, child: SvgPicture.asset(Assets.imgsCollection)),
        Positioned(
          top: 140,
          left: 0,
          right: 0,
          child: Column(children: [Image.asset(Assets.imgsMainImg), Gap(20)]),
        ),
      ],
    );
  }
}
