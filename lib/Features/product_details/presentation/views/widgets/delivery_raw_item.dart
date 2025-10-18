import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class DeliveryRowItem extends StatelessWidget {
  const DeliveryRowItem({
    super.key,
    required this.iconPath,
    required this.title,
    this.trailingText,
  });

  final String iconPath;
  final String title;
  final String? trailingText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(indent: 16, endIndent: 16, thickness: 1, color: Colors.grey),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Row(
            children: [
              const Gap(20),
              SvgPicture.asset(iconPath, color: Colors.white, height: 30, width: 30),
              const Gap(16),
              Expanded(
                child: Text(title, style: AppStyles.bodyLarge(context).copyWith(fontSize: 20)),
              ),
              if (trailingText != null)
                Text(trailingText!, style: AppStyles.bodyLarge(context).copyWith(fontSize: 20)),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}
