import'package:flutter/material.dart';

import 'home.dart';
import 'speso_app_theme.dart';

class SpesoApp extends StatelessWidget {
  const SpesoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = SpesoAppTheme();

    return MaterialApp(
      title: 'Speso',
      theme: theme.spesoTheme(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
