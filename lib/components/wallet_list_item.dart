import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'components.dart';
import 'package:speso/models/wallet.dart';


class WalletListItem extends StatelessWidget {
  const WalletListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildCardItem(context);
  }

  Widget _buildCardItem(BuildContext context) {
    final theme = Theme.of(context);
    final Wallet wallet = Wallet();
    final NumberFormat formatter = NumberFormat.simpleCurrency(
        decimalDigits: 2, locale: Localizations.localeOf(context).toString());

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
          Align(
            alignment: Alignment.center,
            child: Text(
              'Wallet',
              style: theme.textTheme.bodyText2,
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.center,
            child: Text(
              formatter.format(wallet.balance),
              style: theme.textTheme.headline4,
            ),
          ),
          const SizedBox(height: 8),
          Divider(
            height: 4,
            indent: 8,
            endIndent: 8,
            color: theme.colorScheme.onPrimary.withOpacity(0.6),
          ),
          const SizedBox(height: 8),
          _buildIconRow(),
        ],
      ),
    );
  }

  Widget _buildIconRow() {
    const topUpAsset = 'assets/icons/top-up.svg';
    const withdrawAsset = 'assets/icons/withdraw.svg';
    const receiveAsset = 'assets/icons/receive.svg';
    const transactionsAsset = 'assets/icons/transactions.svg';

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        IconCard(
            assetName: topUpAsset,
            labelText: 'Top Up',
            semanticsLabel: 'top up wallet'),
        IconCard(
            assetName: withdrawAsset,
            labelText: 'Withdraw',
            semanticsLabel: 'withdraw from wallet'),
        IconCard(
            assetName: receiveAsset,
            labelText: 'Receive',
            semanticsLabel: 'receive funds'),
        IconCard(
            assetName: transactionsAsset,
            labelText: 'History',
            semanticsLabel: 'open transactions history')
      ],
    );
  }
}
