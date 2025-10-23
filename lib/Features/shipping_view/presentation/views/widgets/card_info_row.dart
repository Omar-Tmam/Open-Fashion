import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class CardInfoRow extends StatelessWidget {
  const CardInfoRow({super.key, required this.value, required this.onPressed});
  final String value;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final lastDigits = value.length >= 2 ? value.substring(value.length - 2) : value;

    return Row(
      children: [
        SvgPicture.asset(Assets.imgsMasterCard),
        const Gap(12),
        Text('Master Card ending  ••••$lastDigits', style: AppStyles.bodyLarge(context)),
        Spacer(),
        IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(Assets.imgsForward, color: Colors.white),
        ),
      ],
    );
  }
}
