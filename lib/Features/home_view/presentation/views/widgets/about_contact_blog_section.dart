import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class AboutContactBlogSection extends StatelessWidget {
  const AboutContactBlogSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('About', style: AppStyles.bodyMedium(context)),
        Text('Contact', style: AppStyles.bodyMedium(context)),
        Text('Blog', style: AppStyles.bodyMedium(context)),
      ],
    );
  }
}

