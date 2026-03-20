import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';
import 'reusable_widgets.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white,
            Colors.grey.shade50,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.lg,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left side: Menu and Logo
            Expanded(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryLight.withAlpha(20),
                    ),
                    child: IconButton(
                      padding: const EdgeInsets.all(AppSpacing.xs),
                      icon: const Icon(
                        Icons.menu,
                        color: AppColors.primaryDark,
                        size: AppIconSizes.lg,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: AppSpacing.lg),
                  const Text(
                    'EDC APP',
                    style: TextStyle(
                      color: AppColors.primaryDark,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      letterSpacing: 0.8,
                    ),
                  ),
                ],
              ),
            ),
            // Right side: Action buttons
            Row(
              children: [
                NotificationButton(onPressed: () {}),
                const SizedBox(width: AppSpacing.md),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.info.withAlpha(20),
                  ),
                  child: IconButton(
                    padding: const EdgeInsets.all(AppSpacing.xs),
                    icon: const Icon(
                      Icons.phone_in_talk_outlined,
                      color: AppColors.info,
                      size: AppIconSizes.lg,
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                ProfileButton(onPressed: () {}),
              ],
            ),
          ],
        ),
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
            color: AppColors.warning.withAlpha(20),
          ),
          child: IconButton(
            padding: const EdgeInsets.all(AppSpacing.xs),
            constraints: const BoxConstraints(),
            icon: const Icon(
              Icons.notifications_none,
              color: AppColors.warning,
              size: AppIconSizes.lg,
            ),
            onPressed: onPressed,
          ),
        ),
        Positioned(
          top: -4,
          right: -4,
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: Colors.red.shade500,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.shade300,
                  blurRadius: 4,
                ),
              ],
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
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primaryLight,
            AppColors.primaryDark,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryDark.withAlpha(76),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(2),
      child: CircleAvatar(
        radius: 16,
        backgroundColor: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.primaryLight,
                AppColors.primaryDark,
              ],
            ),
          ),
          child: const Icon(
            Icons.person,
            color: Colors.white,
            size: AppIconSizes.lg,
          ),
        ),
      ),
    );
  }
}
