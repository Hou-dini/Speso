import 'package:flutter/material.dart';

import 'components.dart';

class TransportServiceListItem extends StatelessWidget {
  const TransportServiceListItem({Key? key}) : super(key: key);

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
              'Transport Services',
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
    const lyftAsset = 'assets/ride_icons/lyft.jpg';
    const yangoAsset = 'assets/ride_icons/yango.png';
    const boltAsset = 'assets/ride_icons/bolt.png';
    const uberAsset = 'assets/ride_icons/uber.png';

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        _RideCard(
            asset: lyftAsset,
            labelText: 'Lyft',
            semanticsLabel: 'lyft taxi service'),
        _RideCard(
            asset: yangoAsset,
            labelText: 'Yango',
            semanticsLabel: 'yango taxi service'),
        _RideCard(
            asset: boltAsset,
            labelText: 'Bolt',
            semanticsLabel: 'bolt taxi service'),
        _RideCard(
            asset: uberAsset,
            labelText: 'Uber',
            semanticsLabel: 'uber taxi service'),
      ],
    );
  }
}

class _RideCard extends StatelessWidget {
  const _RideCard({
    required this.asset,
    required this.labelText,
    required this.semanticsLabel,
    Key? key,
  }) : super(key: key);

  final String asset;
  final String labelText;
  final String semanticsLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final width = size.width / 4 - 24;

    return SizedBox(
      height: 80,
      width: width,
      child: Card(
        elevation: 4.0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: theme.colorScheme.surface,
        child: InkWell(
          splashColor: theme.colorScheme.onSurface,
          onTap: () {},
          child: Column(
            children: <Widget>[
              RideAvatar(asset: asset, semanticsLabel: semanticsLabel),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: FittedBox(
                  fit: BoxFit.none,
                  child: Text(
                    labelText,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: theme.textTheme.caption!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
