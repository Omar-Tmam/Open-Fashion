import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final iconColor = isDark ? Colors.white : Colors.black;

    return AppBar(
      leading: SizedBox.shrink(),
      leadingWidth: 0,
      backgroundColor: isDark ? Color(0xFF111111) : Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(Assets.imgsLogo, color: iconColor),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(Assets.imgsMenu, color: iconColor, width: 32),
              Row(
                children: [
                  SvgPicture.asset(Assets.imgsSearch, color: iconColor, width: 32),
                  const Gap(16),
                  SvgPicture.asset(Assets.imgsShoppingbag, color: iconColor, width: 32),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
