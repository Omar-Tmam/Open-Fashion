import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/home_view/data/models/product_model.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(productModel.image, width: 200, height: 220),
        Gap(8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productModel.name.toUpperCase(),
                style: AppStyles.subTitle16(context),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Gap(10),
              Text(
                productModel.description,
                style: AppStyles.bodyLarge(context),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
              Gap(12),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                    child: SvgPicture.asset(Assets.imgsNeg, width: 24, height: 26),
                  ),
                  Gap(18),
                  Text('1', style: AppStyles.subTitle16(context).copyWith(fontSize: 20)),
                  Gap(18),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                    child: SvgPicture.asset(Assets.imgsPlus, width: 24, height: 26),
                  ),
                ],
              ),
              Gap(12),
              Text(
                productModel.price,
                style: AppStyles.subTitle16(context).copyWith(color: Colors.orange),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
