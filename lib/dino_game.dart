import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'dino_player.dart';
import 'dino_world.dart';

class DinoGame extends FlameGame {
  final DinoPlayer _dinoPlayer = DinoPlayer();
  final DinoWorld _dinoWorld = DinoWorld();

  @override
  Future<void> onLoad() async {
    super.onLoad();
    await add(_dinoWorld);
    await add(_dinoPlayer);
    _dinoPlayer.position = _dinoWorld.size / 1.5;
    camera.followComponent(_dinoPlayer,
        worldBounds: Rect.fromLTRB(0, 0, _dinoWorld.size.x, _dinoWorld.size.y));
  }
}

extension on CameraComponent {
  void followComponent(DinoPlayer dinoPlayer, {required Rect worldBounds}) {}
}
