import 'package:flame/components.dart';
import 'package:flame/parallax.dart';

class DinoWorld extends ParallaxComponent with HasGameRef {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    parallax = await gameRef.loadParallax(
      [
        ParallaxImageData('plx-1.png'),
        ParallaxImageData('plx-2.png'),
        ParallaxImageData('plx-3.png'),
        ParallaxImageData('plx-4.png'),
        ParallaxImageData('plx-5.png'),
      ],
      baseVelocity: Vector2(20, 0),
      velocityMultiplierDelta: Vector2(1.1, 1.0),
    );
  }
}
