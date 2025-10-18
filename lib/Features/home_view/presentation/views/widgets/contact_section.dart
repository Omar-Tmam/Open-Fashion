import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/home_view/presentation/views/widgets/about_contact_blog_section.dart';
import 'package:open_fashion/Features/home_view/presentation/views/widgets/copy_right_section.dart';
import 'package:open_fashion/Features/home_view/presentation/views/widgets/social_media_section.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaSection(),
        Gap(30),
        SvgPicture.asset(
          Assets.imgs12,
          width: 140,
          height: 12,
          colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
        ),
        Gap(14),
        Text(
          'support@openui.design\n+60 825 876\n08:00 - 22:00 - Everyday',
          textAlign: TextAlign.center,
          style: AppStyles.bodyMedium(context).copyWith(height: 2),
        ),
        Gap(12),
        SvgPicture.asset(
          Assets.imgs12,
          width: 140,
          height: 12,
          colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
        ),
        Gap(30),
        AboutContactBlogSection(),
        Gap(24),
        Divider(thickness: 0.5, color: Colors.grey.withOpacity(0.3)),
        CopyRightSection(),
      ],
    );
  }
}

