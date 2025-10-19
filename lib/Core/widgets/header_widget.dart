import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title.toUpperCase(), style: AppStyles.title18(context).copyWith(fontSize: 24)),
        SvgPicture.asset(
          Assets.imgs12,
          colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
        ),
      ],
    );
  }
}
