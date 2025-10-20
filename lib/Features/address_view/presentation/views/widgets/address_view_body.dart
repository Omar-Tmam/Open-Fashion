import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/widgets/custom_button.dart';
import 'package:open_fashion/Core/widgets/header_widget.dart';
import 'package:open_fashion/Features/address_view/data/models/address_model.dart';
import 'package:open_fashion/Features/address_view/presentation/views/widgets/text_fields_section.dart';
import 'package:open_fashion/Features/product_details/data/models/order_model.dart';

class AddressViewBody extends StatefulWidget {
  const AddressViewBody({super.key, required this.orderModel});
  final OrderModel orderModel;
  @override
  State<AddressViewBody> createState() => _AddressViewBodyState();
}

class _AddressViewBodyState extends State<AddressViewBody> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController addressController;
  late TextEditingController cityController;
  late TextEditingController stateController;
  late TextEditingController zipCodeController;
  late TextEditingController phoneController;

  @override
  void initState() {
    firstNameController = TextEditingController(
      text: widget.orderModel.addressModel?.firstName ?? '',
    );
    lastNameController = TextEditingController(
      text: widget.orderModel.addressModel?.lastName ?? '',
    );
    addressController = TextEditingController(text: widget.orderModel.addressModel?.address ?? '');
    cityController = TextEditingController(text: widget.orderModel.addressModel?.city ?? '');
    stateController = TextEditingController(text: widget.orderModel.addressModel?.state ?? '');
    zipCodeController = TextEditingController(text: widget.orderModel.addressModel?.zipCode ?? '');
    phoneController = TextEditingController(text: widget.orderModel.addressModel?.phone ?? '');
    super.initState();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    cityController.dispose();
    stateController.dispose();
    zipCodeController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(34),
                  const HeaderWidget(title: 'add shipping address'),
                  const Gap(26),
                  TextFieldsSection(
                    cityController: cityController,
                    firstNameController: firstNameController,
                    lastNameController: lastNameController,
                    phoneController: phoneController,
                    stateController: stateController,
                    zipCodeController: zipCodeController,
                    addressController: addressController,
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
        CustomButton(
          onTap: () {
            if (_formKey.currentState!.validate()) {
              widget.orderModel.addressModel = AddressModel(
                address: addressController.text,
                city: cityController.text,
                firstName: firstNameController.text,
                lastName: lastNameController.text,
                phone: phoneController.text,
                state: stateController.text,
                zipCode: zipCodeController.text,
              );
              context.pop();
            }
          },

          text: widget.orderModel.addressModel == null ? 'Add now' : 'update',
        ),
        const Gap(20),
      ],
    );
  }
}
