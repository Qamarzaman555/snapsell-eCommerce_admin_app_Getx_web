import 'package:flutter/material.dart';

import '../../../../../../utils/constants/sizes.dart';
import '../widgets/dashboard_card.dart';

class DashboardDesktop extends StatelessWidget {
  const DashboardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              Text('Dashboard',
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Cards
              const Row(
                children: [
                  Expanded(
                    child: TDashboardCard(
                        title: 'Sales Total', subTitle: '\$365.6', stats: 25),
                  ),
                  SizedBox(width: TSizes.spaceBtwItems),
                  Expanded(
                    child: TDashboardCard(
                        title: 'Average Order Values',
                        subTitle: '\$25.0',
                        stats: 15),
                  ),
                  SizedBox(width: TSizes.spaceBtwItems),
                  Expanded(
                    child: TDashboardCard(
                        title: 'Total Orders', subTitle: '\$36', stats: 44),
                  ),
                  SizedBox(width: TSizes.spaceBtwItems),
                  Expanded(
                    child: TDashboardCard(
                        title: 'Visitors', subTitle: '\$25.035', stats: 2),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
