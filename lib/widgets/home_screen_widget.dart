import 'package:flutter/material.dart';
import '../constants/app_spacing.dart';
import 'app_bar_widget.dart';
import 'action_cards_widget.dart';
import 'customer_info_widget.dart';
import 'balance_card_widget.dart';
import 'bills_widget.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarWidget(),
              Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ActionCardsSection(),
                    const SizedBox(height: AppSpacing.xxxl),
                    const CustomerInfoSection(),
                    const SizedBox(height: AppSpacing.xxxl),
                    const BalanceCardSection(),
                    const SizedBox(height: AppSpacing.xxxl),
                    const RecentBillsSection(),
                    const SizedBox(height: AppSpacing.xxxl),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
