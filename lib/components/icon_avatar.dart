import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// This widget creates an IconAvatar from an SVG asset
class IconAvatarSVG extends StatelessWidget {
  const IconAvatarSVG({
    required this.assetName,
    required this.semanticsLabel,
    Key? key}) : super(key: key);

  final String assetName;
  final String semanticsLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(assetName,
            fit: BoxFit.contain,
            height: 30.0,
            width: 30.0,
            clipBehavior: Clip.antiAlias,
            semanticsLabel:semanticsLabel,),
    );
  }
}
