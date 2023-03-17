import 'package:flame/flame.dart';
import 'package:flutter/material.dart';

import 'main_game_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RayWorld',
      home: MainGamePage(),
    );
  }
}
