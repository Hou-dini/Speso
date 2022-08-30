import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:speso/components/components.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final settingsIcon = SvgPicture.asset(
      'assets/icons/settings.svg',
      color: colorScheme.onPrimary,
      height: 24,
      width: 24,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: settingsIcon)
        ],
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const<Widget>[
            SizedBox(height: 8),
            WalletListItem(),
            SizedBox(height: 24),
            QuickServicesListItem(),
            SizedBox(height: 24),
            TransportServiceListItem(),
          ],
        ),
      ),
    );
  }
}
