import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/widgets/custom_button.dart';
import 'package:open_fashion/Core/widgets/header_widget.dart';
import 'package:open_fashion/Features/address_view/presentation/views/widgets/custom_text_field.dart';

class AddressViewBody extends StatelessWidget {
   AddressViewBody({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(34),
                const HeaderWidget(title: 'add shipping address'),
                const Gap(26),

                Form(
                  key: _formKey,
                  child: TextFieldsSection()),

                const Spacer(),
              ],
            ),
          ),
        ),

        CustomButton(text: 'Add now'),
        const Gap(20),
      ],
    );
  }
}

class TextFieldsSection extends StatefulWidget {
  const TextFieldsSection({super.key});

  @override
  State<TextFieldsSection> createState() => _TextFieldsSectionState();
}

class _TextFieldsSectionState extends State<TextFieldsSection> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final phoneController = TextEditingController();

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
        CustomTextField(label: 'Address', controller: addressController),
        const Gap(20),
        CustomTextField(label: 'City', controller: cityController),
        const Gap(20),

        Row(
          children: [
            Expanded(
              child: CustomTextField(label: 'State', controller: stateController),
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
