import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_router.dart';
import 'package:open_fashion/Features/product_details/data/models/order_model.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/widgets/address_info_widget.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/widgets/custom_container.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/widgets/shipping_view_body.dart';

class AddressBuilder extends StatelessWidget {
  const AddressBuilder({
    super.key,
    required this.orderNotifier,
    required this.widget,
  });

  final ValueNotifier<OrderModel> orderNotifier;
  final ShippingViewBody widget;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: orderNotifier, builder: (context, value, child) => 
    widget.orderModel.addressModel != null
        ? AddressInfoWidget(orderModel: widget.orderModel)
        : CustomContainer(
            title: 'Add shipping address',
            icon: Assets.imgsPlus,
            onTap: () {
              context.push(AppRouter.kAddressView, extra: widget.orderModel);
            },
          ),);
  }
}
