import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/widgets/custom_button.dart';
import 'package:open_fashion/Core/widgets/header_widget.dart';

class MobilePaymentViewBody extends StatefulWidget {
  const MobilePaymentViewBody({super.key});

  @override
  State<MobilePaymentViewBody> createState() => _MobilePaymentViewBodyState();
}

class _MobilePaymentViewBodyState extends State<MobilePaymentViewBody> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool showBackView = false;
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const Gap(34),
                    const HeaderWidget(title: 'payment method'),
                    const Gap(20),
                    CreditCardWidget(
                      cardNumber: cardNumber,
                      expiryDate: expiryDate,
                      cardHolderName: cardHolderName,
                      cvvCode: cvvCode,
                      showBackView: showBackView,
                      onCreditCardWidgetChange: (v) {},
                      obscureCardNumber: true,
                      obscureCardCvv: true,
                      isHolderNameVisible: true,
                    ),
                    CreditCardForm(
                      isCardHolderNameUpperCase: true,
                      obscureCvv: true,
                      obscureNumber: true,
                      cardNumber: cardNumber,
                      expiryDate: expiryDate,
                      cardHolderName: cardHolderName,
                      cvvCode: cvvCode,
                      onCreditCardModelChange: onCreditCardModelChange,
                      formKey: _key,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Gap(12),
          CustomButton(text: 'add card'),
          const Gap(20),
        ],
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel data) {
    setState(() {
      cardHolderName = data.cardHolderName;
      cardNumber = data.cardNumber;
      expiryDate = data.expiryDate;
      cvvCode = data.cvvCode;
      showBackView = data.isCvvFocused;
    });
  }
}
