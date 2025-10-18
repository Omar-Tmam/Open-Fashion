import 'package:flutter/material.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Features/product_details/presentation/views/widgets/delivery_raw_item.dart';

class DeliverySection extends StatelessWidget {
  const DeliverySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        DeliveryRowItem(iconPath: Assets.imgsVoucher, title: 'Add promo code'),
        DeliveryRowItem(
          iconPath: Assets.imgsDoortoDoorDelivery,
          title: 'Delivery',
          trailingText: 'Free',
        ),
      ],
    );
  }
}
