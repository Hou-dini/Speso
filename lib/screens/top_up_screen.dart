import 'package:flutter/material.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Top Up Wallet'),
     ),
     body: const Center(
       child: CircularProgressIndicator(),
     ),
   );
  }
}
