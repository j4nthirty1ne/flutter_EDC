import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';
import 'reusable_widgets.dart';

class ActionCardsSection extends StatelessWidget {
  const ActionCardsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSpacing.radiusXl),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D9E9E9E),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      ActionItemCard(
                        icon: Icons.attach_money,
                        title: 'បង់ប្រាក់តាមគណនី',
                        subtitle: 'បង់ប្រាក់គ្រប់គណនីទាំងអស់',
                        backgroundColor: Colors.green.shade50,
                        iconColor: Colors.green.shade600,
                      ),
                      Divider(
                        height: 1,
                        color: Colors.grey.shade200,
                      ),
                      ActionItemCard(
                        icon: Icons.price_change_outlined,
                        title: 'បង់ប្រាក់រហ័ស',
                        subtitle: 'ជ្រើសរើស/បង្កើត គំរូបង់ប្រាក់',
                        backgroundColor: Colors.amber.shade50,
                        iconColor: Colors.amber.shade700,
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  width: 1,
                  color: Colors.grey.shade200,
                  thickness: 1,
                ),
                Expanded(
                  flex: 1,
                  child: LinkedAccountsCard(),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade200),
          AutoPayCard(),
        ],
      ),
    );
  }
}

class LinkedAccountsCard extends StatelessWidget {
  const LinkedAccountsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.people,
                color: AppColors.primaryLight,
                size: AppIconSizes.xl,
              ),
              SizedBox(width: AppSpacing.md),
              Text(
                'គណនីបានភ្ជាប់',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: AppFontSizes.md,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            '1 គណនី',
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: AppFontSizes.md,
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.md,
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryLighter,
              borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
            ),
            child: const Text(
              'ភ្ជាប់គណនីថ្មី',
              style: TextStyle(
                color: AppColors.primaryLight,
                fontWeight: FontWeight.w600,
                fontSize: AppFontSizes.sm,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AutoPayCard extends StatelessWidget {
  const AutoPayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionItemCard(
      icon: Icons.credit_card,
      title: 'ទូទាត់វិក័យបត្រស្វ័យប្រវត្តិ',
      subtitle: 'វិក័យបត្រនឹងត្រូវបានទូទាត់ដោយស្វ័យប្រវត្តិរៀងរាល់ខែ',
      backgroundColor: Colors.purple.shade50,
      iconColor: Colors.purple.shade300,
    );
  }
}
