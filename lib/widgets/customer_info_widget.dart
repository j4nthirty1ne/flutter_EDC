import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';

class CustomerInfoSection extends StatelessWidget {
  const CustomerInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomerNameRow(),
        const SizedBox(height: AppSpacing.md),
        CustomerStatusRow(),
        const SizedBox(height: AppSpacing.lg),
        DigitalBillAndTelegramRow(),
        const SizedBox(height: AppSpacing.xl),
        CustomerIdAndLocationRow(),
        const SizedBox(height: AppSpacing.md),
        CustomerAddressWidget(),
      ],
    );
  }
}

class CustomerNameRow extends StatelessWidget {
  const CustomerNameRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Customer Name (KHR)',
          style: TextStyle(
            fontSize: AppFontSizes.xxl,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(AppSpacing.xs),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.more_horiz,
            color: Colors.grey,
            size: AppIconSizes.lg,
          ),
        ),
      ],
    );
  }
}

class CustomerStatusRow extends StatelessWidget {
  const CustomerStatusRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: AppSpacing.md,
          height: AppSpacing.md,
          decoration: BoxDecoration(
            color: Colors.green.shade400,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: AppSpacing.xs),
        Text(
          'កំពុងប្រើប្រាស់',
          style: TextStyle(
            color: Colors.green.shade400,
            fontSize: AppFontSizes.md,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class DigitalBillAndTelegramRow extends StatelessWidget {
  const DigitalBillAndTelegramRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DigitalBillBadge(),
        const SizedBox(width: AppSpacing.md),
        TelegramBadge(),
      ],
    );
  }
}

class DigitalBillBadge extends StatelessWidget {
  const DigitalBillBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green.shade600, width: 1.5),
        borderRadius: BorderRadius.circular(AppSpacing.radiusCircle),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.assignment,
            color: AppColors.primaryDark,
            size: AppIconSizes.sm,
          ),
          const SizedBox(width: AppSpacing.xs),
          const Text(
            'វិក័យបត្រឌីជីថល',
            style: TextStyle(
              fontSize: AppFontSizes.sm,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
          const SizedBox(width: AppSpacing.xs),
          Container(
            padding: const EdgeInsets.all(AppSpacing.xs),
            decoration: BoxDecoration(
              color: Colors.green.shade600,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: AppIconSizes.sm,
            ),
          ),
        ],
      ),
    );
  }
}

class TelegramBadge extends StatelessWidget {
  const TelegramBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(AppSpacing.radiusCircle),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.telegram,
            color: Colors.blue,
            size: AppIconSizes.lg,
          ),
          const SizedBox(width: AppSpacing.xs),
          const Text(
            'Telegram',
            style: TextStyle(
              fontSize: AppFontSizes.sm,
              color: Colors.black87,
            ),
          ),
          const SizedBox(width: AppSpacing.xs),
          Container(
            width: 24,
            height: 14,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(AppSpacing.radiusCircle),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.all(AppSpacing.xs),
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomerIdAndLocationRow extends StatelessWidget {
  const CustomerIdAndLocationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'ID',
          style: TextStyle(color: Colors.grey.shade500, fontSize: AppFontSizes.sm),
        ),
        const SizedBox(width: AppSpacing.lg),
        const Text(
          '212041',
          style: TextStyle(
            fontSize: AppFontSizes.md,
            color: Colors.black87,
          ),
        ),
        const SizedBox(width: AppSpacing.lg),
        Container(
          width: 3,
          height: 3,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: AppSpacing.lg),
        Text(
          'ទីតាំងភ្ជាប់ចរន្ត',
          style: TextStyle(color: Colors.grey.shade500, fontSize: AppFontSizes.sm),
        ),
        const SizedBox(width: AppSpacing.md),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xs,
            vertical: AppSpacing.xs,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(AppSpacing.radiusSm),
          ),
          child: const Text(
            'P2797-1 006 RD',
            style: TextStyle(
              fontSize: AppFontSizes.sm,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomerAddressWidget extends StatelessWidget {
  const CustomerAddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'ផ្ទះB3 ផ្លូវលំ ភូមិប៉ប្រកខាងត្បូង សង្កាត់កាកាបទី១ ខណ្ឌពោធិ៍សែនជ័យ រាជធានីភ្នំពេញ',
      style: TextStyle(
        color: Colors.grey.shade500,
        fontSize: AppFontSizes.md,
        height: 1.5,
      ),
    );
  }
}
