import 'package:flame/components.dart';
import 'package:flame/collisions.dart';

class WorldCollidable extends PositionComponent {
  WorldCollidable() {
    add(RectangleHitbox());
  }
}
