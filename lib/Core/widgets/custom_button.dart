import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;
import 'package:open_fashion/Core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.widget, this.onTap});
  final Widget? widget;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
        height: 60,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget ?? SizedBox.shrink(),
            Gap(24),
            Text(
              text.toUpperCase(),
              style: AppStyles.subTitle16(context).copyWith(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
