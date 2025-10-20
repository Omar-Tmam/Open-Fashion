import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Features/address_view/presentation/views/widgets/custom_text_field.dart';

class TextFieldsSection extends StatelessWidget {
  const TextFieldsSection({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
    required this.addressController,
    required this.cityController,
    required this.stateController,
    required this.zipCodeController,
    required this.phoneController,
  });
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController addressController;
  final TextEditingController cityController;
  final TextEditingController stateController;
  final TextEditingController zipCodeController;
  final TextEditingController phoneController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(label: 'First name', controller: firstNameController),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CustomTextField(label: 'Last name', controller: lastNameController),
            ),
          ],
        ),
        const Gap(20),
        CustomTextField(label: 'Country', controller: addressController),
        const Gap(20),
        CustomTextField(label: 'City', controller: cityController),
        const Gap(20),
        Row(
          children: [
            Expanded(
              child: CustomTextField(label: 'Address', controller: stateController),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CustomTextField(label: 'ZIP code', controller: zipCodeController),
            ),
          ],
        ),
        const Gap(20),
        CustomTextField(label: 'Phone number', controller: phoneController),
      ],
    );
  }
}
