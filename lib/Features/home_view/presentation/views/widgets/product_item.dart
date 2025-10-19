import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_router.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/home_view/data/models/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: () {
                context.push(AppRouter.kProductDetailsView, extra: productModel);
              },
              child: Image.asset(productModel.image),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: SvgPicture.asset(Assets.imgsHeart, color: Colors.orange),
            ),
          ],
        ),
        Gap(10),
        Text(
          productModel.name,
          style: AppStyles.bodyLarge(context),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Gap(10),
        Text(
          productModel.description,
          style: AppStyles.bodyMedium(context),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        Gap(10),
        Text(
          '\$${productModel.price}',
          style: AppStyles.bodyLarge(context).copyWith(color: Colors.orange),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
