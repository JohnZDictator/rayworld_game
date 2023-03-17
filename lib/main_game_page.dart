import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:rayworld/rayworld_game.dart';

import 'helpers/direction.dart';
import 'helpers/joypad.dart';

class MainGamePage extends StatefulWidget {
  const MainGamePage({super.key});

  @override
  State<MainGamePage> createState() => _MainGamePageState();
}

class _MainGamePageState extends State<MainGamePage> {
  RayWorldGame game = RayWorldGame();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: Stack(
        children: [
          GameWidget(
            game: game,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Joypad(
                onDirectionChanged: onJoypadDirectionChanged,
              ),
            ),
          )
        ],
      ),
    );
  }

  void onJoypadDirectionChanged(Direction direction) {
    game.onJoypadDirectionChanged(direction);
  }
}
