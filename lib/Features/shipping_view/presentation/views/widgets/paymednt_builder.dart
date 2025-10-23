import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_router.dart';
import 'package:open_fashion/Features/product_details/data/models/order_model.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/widgets/card_info_row.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/widgets/custom_container.dart';

class PaymentBuilder extends StatelessWidget {
  const PaymentBuilder({super.key, required this.orderNotifier});

  final ValueNotifier<OrderModel> orderNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: orderNotifier,
      builder: (context, value, child) {
        return value.paymentModel == null
            ? CustomContainer(
                onTap: () {
                  context.push(AppRouter.kPaymentView, extra: orderNotifier);
                },
                title: 'select payment method',
                icon: Assets.imgsDown,
              )
            : CardInfoRow(
                onPressed: () {
                  context.push(AppRouter.kPaymentView, extra: orderNotifier);
                },
                value: value.paymentModel!.cardNumber,
              );
      },
    );
  }
}
