import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';
import 'reusable_widgets.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      child: Row(
        children: [
          IconCircleButton(
            icon: Icons.menu,
            onPressed: () {},
            size: AppIconSizes.xxl,
          ),
          const SizedBox(width: AppSpacing.lg),
          const Text(
            'EDC APP',
            style: TextStyle(
              color: AppColors.primaryDark,
              fontWeight: FontWeight.w600,
              fontSize: AppFontSizes.xl,
              letterSpacing: 0.5,
            ),
          ),
          const Spacer(),
          NotificationButton(onPressed: () {}),
          const SizedBox(width: AppSpacing.md),
          IconCircleButton(
            icon: Icons.phone_in_talk_outlined,
            onPressed: () {},
            size: AppIconSizes.xxl,
          ),
          const SizedBox(width: AppSpacing.md),
          ProfileButton(onPressed: () {}),
        ],
      ),
    );
  }
}

class NotificationButton extends StatelessWidget {
  final VoidCallback onPressed;

  const NotificationButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primaryDark, width: 1.5),
          ),
          child: IconButton(
            padding: const EdgeInsets.all(AppSpacing.xs),
            constraints: const BoxConstraints(),
            icon: const Icon(
              Icons.notifications_none,
              color: AppColors.primaryDark,
              size: AppIconSizes.lg,
            ),
            onPressed: onPressed,
          ),
        ),
        Positioned(
          top: -2,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(1.5),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Container(
              width: 5,
              height: 5,
              decoration: const BoxDecoration(
                color: AppColors.primaryDark,
                shape: BoxShape.circle,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ProfileButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ProfileButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.primaryDark, width: 1.5),
      ),
      padding: const EdgeInsets.all(AppSpacing.xs),
      child: CircleAvatar(
        radius: 14,
        backgroundColor: Colors.grey.shade300,
        child: const Icon(
          Icons.person,
          color: Colors.white,
          size: AppIconSizes.lg,
        ),
      ),
    );
  }
}
