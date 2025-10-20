import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/widgets/header_widget.dart';

class AddressViewBody extends StatelessWidget {
  const AddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(34),
          HeaderWidget(title: 'add shipping address'),
        ],
      ),
    );
  }
}
