import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class CopyRightSection extends StatelessWidget {
  const CopyRightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface.withOpacity(0.1)),
      child: Center(
        child: Text(
          'Copyright © Omar-Tmam — All Rights Reserved.',
          style: AppStyles.bodySmall(
            context,
          ).copyWith(color: Colors.grey.withOpacity(0.7), letterSpacing: 0.5),
        ),
      ),
    );
  }
}
