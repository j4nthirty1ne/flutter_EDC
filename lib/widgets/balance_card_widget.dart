import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';
import 'reusable_widgets.dart';

class BalanceCardSection extends StatelessWidget {
  const BalanceCardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.xl),
      decoration: BoxDecoration(
        color: AppColors.primaryDeep,
        borderRadius: BorderRadius.circular(AppSpacing.radiusSm),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BalanceCardHeader(),
          const SizedBox(height: AppSpacing.lg),
          const BalanceAmount(),
          const SizedBox(height: AppSpacing.md),
          BalanceFooter(),
        ],
      ),
    );
  }
}

class BalanceCardHeader extends StatelessWidget {
  const BalanceCardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(AppSpacing.xs),
          child: const Icon(
            Icons.receipt_long,
            color: Colors.white,
            size: AppIconSizes.xxl,
          ),
        ),
        Text(
          'គិតត្រឹមថ្ងៃ 07/03/2026',
          style: TextStyle(
            color: Colors.white.withAlpha(204),
            fontSize: AppFontSizes.sm,
          ),
        ),
      ],
    );
  }
}

class BalanceAmount extends StatelessWidget {
  const BalanceAmount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '10 ៛',
      style: TextStyle(
        color: Colors.white,
        fontSize: AppFontSizes.xxxl,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BalanceFooter extends StatelessWidget {
  const BalanceFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'សមតុល្យចុងក្រោយ',
          style: TextStyle(
            color: Colors.white.withAlpha(204),
            fontSize: AppFontSizes.md,
          ),
        ),
        DarkButton(
          label: 'បង់ប្រាក់',
          onPressed: () {},
        ),
      ],
    );
  }
}
