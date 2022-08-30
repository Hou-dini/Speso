import 'package:flutter/material.dart';

// Builds an avatar to display on RideCard
class RideAvatar extends StatelessWidget {
  const RideAvatar({
    required this.asset,
    required this.semanticsLabel,
    Key? key}) : super(key: key);
  
  final String asset;
  final String semanticsLabel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 80,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Image.asset(asset,
        fit: BoxFit.contain,
        semanticLabel: semanticsLabel,),
      ),
    );
  }
}
