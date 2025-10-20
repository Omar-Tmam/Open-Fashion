import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.title, required this.icon, this.suffText, this.onTap});
  final String title;
  final String icon;
  final String? suffText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(44),
      ),
      child: Row(
        children: [
          Gap(20),
          Text(
            title,
            style: AppStyles.subTitle14(
              context,
            ).copyWith(color: Color(0xFF555555), fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Text(
            suffText ?? '',
            style: AppStyles.subTitle14(
              context,
            ).copyWith(color: Color(0xFF555555), fontWeight: FontWeight.w700),
          ),
          Gap(5),
          InkWell(
            onTap: onTap,
            child: SvgPicture.asset(icon, color: Colors.black, width: 22),
          ),
          Gap(20),
        ],
      ),
    );
  }
}
