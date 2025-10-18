import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/home_view/data/models/cover_model.dart';

class CoverItem extends StatelessWidget {
  const CoverItem({super.key, required this.coverModel});
  final CoverModel coverModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(coverModel.img, fit: BoxFit.cover, height: 300, width: 240),
        Gap(10),
        Text(coverModel.name.toUpperCase(), style: AppStyles.subTitle14(context)),
      ],
    );
  }
}
