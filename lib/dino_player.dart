import 'dart:async';

import 'package:flame/components.dart';

class DinoPlayer extends SpriteComponent with HasGameRef {
  DinoPlayer() : super(size: Vector2.all(100));

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('lib/assets/images/dino_sprite.png');
    position = gameRef.size / 2;
  }
}
