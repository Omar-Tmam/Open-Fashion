import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/custom_adaptive_layout.dart';
import 'package:open_fashion/Features/address_view/presentation/views/address_view_mobile.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAdaptiveLayout(mobileLayout: (context) => AddressViewMobile(),tabletLayout: (context) => SizedBox(),);
  }
}