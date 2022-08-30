import 'package:flutter/material.dart';

import 'components.dart';

class QuickServicesListItem extends StatelessWidget {
  const QuickServicesListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildCardItem(context);
  }

  Widget _buildCardItem(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: theme.colorScheme.onBackground,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              'Quick Services',
              style: theme.textTheme.bodyText2,
            ),
          ),
          const SizedBox(height: 8),
          _buildIconRow(),
        ],
      ),
    );
  }

  Widget _buildIconRow() {
    const airtimeAsset = 'assets/icons/airtime.svg';
    const payBillAsset = 'assets/icons/pay-bill.svg';
    const splitPayAsset = 'assets/icons/split-pay.svg';
    const referAsset = 'assets/icons/refer.svg';

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        IconCard(
            assetName: airtimeAsset,
            labelText: 'Buy Airtime',
            semanticsLabel: 'buy airtime'),
        IconCard(
            assetName: payBillAsset,
            labelText: 'Pay Bill',
            semanticsLabel: 'pay bill'),
        IconCard(
            assetName: splitPayAsset,
            labelText: 'Split Pay',
            semanticsLabel: 'split pay'),
        IconCard(
          assetName: referAsset,
          labelText: 'Refer&Earn',
          semanticsLabel: 'refer a friend and earn',
        ),
      ],
    );
  }
}
