import 'dart:math';

import 'package:flutter/cupertino.dart';
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
import 'package:open_fashion/Features/shipping_view/presentation/views/widgets/address_info_widget.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/widgets/custom_container.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/widgets/dialog_body.dart';

class ShippingViewBody extends StatefulWidget {
  const ShippingViewBody({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  State<ShippingViewBody> createState() => _ShippingViewBodyState();
}

class _ShippingViewBodyState extends State<ShippingViewBody> {
  late ValueNotifier<OrderModel> orderNotifier;
  @override
  void initState() {
    super.initState();
    orderNotifier = ValueNotifier(widget.orderModel);
  }

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

                widget.orderModel.addressModel != null
                    ? AddressInfoWidget(orderModel: widget.orderModel)
                    : CustomContainer(
                        title: 'Add shipping address',
                        icon: Assets.imgsPlus,
                        onTap: () {
                          context.push(AppRouter.kAddressView, extra: widget.orderModel);
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

                orderNotifier.value.paymentModel == null
                    ? CustomContainer(
                        onTap: () {
                          context.push(AppRouter.kPaymentView, extra: orderNotifier);
                        },
                        title: 'select payment method',
                        icon: Assets.imgsDown,
                      )
                    : Text(orderNotifier.value.paymentModel!.cardHolder),
                Spacer(),
                TotalPriceSection(
                  productModel: widget.orderModel.productModel,
                  count: widget.orderModel.quantity,
                ),
                Gap(24),
              ],
            ),
          ),
        ),
        CustomButton(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: Border.symmetric(),
                  child: SizedBox(
                    width: double.infinity,
                    height: 500,
                    child: DialogBody(),
                  ),
                );
              },
            );
          },
          widget: SvgPicture.asset(Assets.imgsShoppingbag, width: 26),
          text: 'Place order',
        ),
        Gap(20),
      ],
    );
  }
}


