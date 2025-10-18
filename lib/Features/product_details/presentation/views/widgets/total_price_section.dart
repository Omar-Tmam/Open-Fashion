import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class TotalPriceSection extends StatelessWidget {
  const TotalPriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text('Est. Total'.toUpperCase(), style: AppStyles.title18(context)),
          Spacer(),
          Text('\$300', style: AppStyles.title18(context).copyWith(color: Colors.orange)),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
