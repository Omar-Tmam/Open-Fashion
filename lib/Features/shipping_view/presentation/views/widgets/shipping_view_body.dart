import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_router.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Core/widgets/custom_button.dart';
import 'package:open_fashion/Core/widgets/header_widget.dart';
import 'package:open_fashion/Features/product_details/data/models/order_model.dart';
import 'package:open_fashion/Features/product_details/presentation/views/widgets/total_price_section.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/widgets/custom_container.dart';

class ShippingViewBody extends StatelessWidget {
  const ShippingViewBody({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Gap(34),
                HeaderWidget(title: 'Shipping'),
                Gap(20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Shipping address'.toUpperCase(),
                    style: AppStyles.subTitle16(context),
                  ),
                ),
                Gap(12),

                orderModel.addressModel != null
                    ? AddressInfoWidget(orderModel: orderModel)
                    : CustomContainer(
                        title: 'Add shipping address',
                        icon: Assets.imgsPlus,
                        onTap: () {
                          context.push(AppRouter.kAddressView, extra: orderModel);
                        },
                      ),
                Gap(36),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Shipping Method'.toUpperCase(),
                    style: AppStyles.subTitle16(context),
                  ),
                ),
                Gap(12),
                CustomContainer(title: 'Pickup at store', icon: Assets.imgsDown, suffText: 'Free'),
                Gap(36),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Payment method'.toUpperCase(), style: AppStyles.subTitle16(context)),
                ),
                Gap(12),
                CustomContainer(title: 'select payment method', icon: Assets.imgsDown),
                Spacer(),
                TotalPriceSection(
                  productModel: orderModel.productModel,
                  count: orderModel.quantity,
                ),
                Gap(24),
              ],
            ),
          ),
        ),
        CustomButton(
          onTap: () {},
          widget: SvgPicture.asset(Assets.imgsShoppingbag, width: 26),
          text: 'Place order',
        ),
        Gap(20),
      ],
    );
  }
}

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
        InkWell(
          onTap: () => context.push(AppRouter.kAddressView, extra: orderModel),
          child: SvgPicture.asset(Assets.imgsForward, color: Colors.white),
        ),
        Gap(16),
      ],
    );
  }
}
