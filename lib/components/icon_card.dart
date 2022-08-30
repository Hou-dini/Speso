import 'package:flutter/material.dart';

import 'icon_avatar.dart';
import 'package:speso/screens/screens.dart';

// This widget creates an IconCard with a corresponding label
class IconCard extends StatelessWidget {
  const IconCard({
    required this.assetName,
    required this.labelText,
    required this.semanticsLabel,
    Key? key,
  }) : super(key: key);

  final String assetName;
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
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const TopUpScreen()));
          },
          child: Column(
            children: <Widget>[
              IconAvatarSVG(
                  assetName: assetName, semanticsLabel: semanticsLabel),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: FittedBox(
                  fit: BoxFit.contain,
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
