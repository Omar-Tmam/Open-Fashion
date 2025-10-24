import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/widgets/dialog_submit.dart';

class DialogBody extends StatelessWidget {
  const DialogBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentGeometry.centerRight,
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(CupertinoIcons.clear),
            ),
          ),
          Gap(18),
          Text('Payment success'.toUpperCase(), style: AppStyles.title18(context)),
          Gap(40),
          SvgPicture.asset(Assets.imgsDone),
          Gap(40),
          Text('Your payment was success', style: AppStyles.bodyLarge(context)),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Payment ID: ${Random().nextInt(999999).toString().padLeft(6, '0')}',
                  style: AppStyles.bodyMedium(context),
                ),
              ],
            ),
          ),
          Gap(20),
          SvgPicture.asset(Assets.imgs12, color: Colors.white),
          Gap(20),
          Text('Rate your purchase', style: AppStyles.bodyLarge(context)),
          Gap(6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.imgsDisappointed),
              Gap(20),
              SvgPicture.asset(Assets.imgsHappy),
              Gap(20),
              SvgPicture.asset(Assets.imgsInLove),
            ],
          ),
          Spacer(),
          DialogSubmit(),
        ],
      ),
    );
  }
}
