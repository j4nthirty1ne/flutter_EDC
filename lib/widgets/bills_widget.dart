import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';
import 'reusable_widgets.dart';

class RecentBillsSection extends StatelessWidget {
  const RecentBillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RecentBillsHeader(),
        const SizedBox(height: AppSpacing.lg),
        RecentBillsCard(),
      ],
    );
  }
}

class RecentBillsHeader extends StatelessWidget {
  const RecentBillsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(
              Icons.receipt,
              color: AppColors.primaryDeep,
              size: AppIconSizes.xxl,
            ),
            SizedBox(width: AppSpacing.md),
            Text(
              'វិក័យបត្រ ខែចុងក្រោយ',
              style: TextStyle(
                fontSize: AppFontSizes.xl,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        BillsPeriodSelector(),
      ],
    );
  }
}

class BillsPeriodSelector extends StatelessWidget {
  const BillsPeriodSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(AppSpacing.radiusSm),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.md,
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryDeep,
              borderRadius: BorderRadius.circular(AppSpacing.radiusSm),
            ),
            child: const Text(
              '1 ខែ',
              style: TextStyle(
                color: Colors.white,
                fontSize: AppFontSizes.sm,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.md,
            ),
            child: Text(
              '6 ខែ',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: AppFontSizes.sm,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecentBillsCard extends StatelessWidget {
  const RecentBillsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: [
          RecentBillsCardTitle(),
          const SizedBox(height: AppSpacing.lg),
          Divider(height: 1, color: Colors.grey.shade200),
          const SizedBox(height: AppSpacing.lg),
          InfoRow(
            label: 'ថ្ងៃធ្វើវិក្កយបត្រ',
            value: '11/02/2026',
          ),
          const SizedBox(height: AppSpacing.md),
          InfoRow(
            label: 'ថ្ងៃផុតកំណត់បង់ប្រាក់',
            value: '25/02/2026',
          ),
          const SizedBox(height: AppSpacing.md),
          InfoRow(
            label: 'ថាមពលប្រើប្រាស់',
            value: '136 kWh',
          ),
          const SizedBox(height: AppSpacing.md),
          RecentBillsCardTotal(),
        ],
      ),
    );
  }
}

class RecentBillsCardTitle extends StatelessWidget {
  const RecentBillsCardTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: Text(
            'វិក័យបត្រអគ្គីសនី 08/01/2026 - 06/02/2026',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSizes.md,
              color: Colors.black87,
            ),
          ),
        ),
        Text(
          'ទូទាត់រួច',
          style: TextStyle(
            color: Colors.green.shade400,
            fontWeight: FontWeight.w600,
            fontSize: AppFontSizes.md,
          ),
        ),
      ],
    );
  }
}

class RecentBillsCardTotal extends StatelessWidget {
  const RecentBillsCardTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'តម្លៃសរុប',
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: AppFontSizes.md,
          ),
        ),
        const Text(
          '82,960 ៛',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: AppFontSizes.lg,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
