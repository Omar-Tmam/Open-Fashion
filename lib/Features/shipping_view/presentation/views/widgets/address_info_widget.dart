import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_router.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/product_details/data/models/order_model.dart';

class AddressInfoWidget extends StatelessWidget {
  const AddressInfoWidget({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${orderModel.addressModel!.firstName} ${orderModel.addressModel!.lastName}",
                style: AppStyles.bodyLarge(context),
              ),
              Gap(6),
              Text(orderModel.addressModel!.address, style: AppStyles.bodyMedium(context)),
              Gap(6),
              Text(
                '${orderModel.addressModel!.city} ${orderModel.addressModel!.state} ${orderModel.addressModel!.zipCode}',
                style: AppStyles.bodyMedium(context),
              ),
              Gap(6),
              Text(orderModel.addressModel!.phone, style: AppStyles.bodyMedium(context)),
            ],
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            context.push(AppRouter.kAddressView, extra: orderModel);
          },
          icon: SvgPicture.asset(Assets.imgsForward, color: Colors.white),
        ),

        Gap(16),
      ],
    );
  }
}
