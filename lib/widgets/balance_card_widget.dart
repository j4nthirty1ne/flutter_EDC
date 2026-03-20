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
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primaryDeep,
            AppColors.primaryDark,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryDeep.withAlpha(76),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BalanceCardHeader(),
          const SizedBox(height: AppSpacing.lg),
          const BalanceAmount(),
          const SizedBox(height: AppSpacing.md),
          const BalanceFooter(),
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
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(30),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.receipt_long,
            color: Colors.white,
            size: AppIconSizes.lg,
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
