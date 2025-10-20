import 'package:flutter/material.dart';
import 'package:open_fashion/Core/widgets/custom_app_bar.dart';
import 'package:open_fashion/Features/address_view/presentation/views/widgets/address_view_body.dart';

class AddressViewMobile extends StatelessWidget {
  const AddressViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: AddressViewBody(),
    );
  }
}