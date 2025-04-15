
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/painting.dart';

class IdleCultGame extends FlameGame with HasTappables {
  int followers = 0;
  late TextComponent followerText;
  late TextComponent tapButton;

  @override
  Future<void> onLoad() async {
    followerText = TextComponent(
      text: 'Followers: \$followers',
      position: Vector2(20, 20),
      anchor: Anchor.topLeft,
      textRenderer: TextPaint(style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 24)),
    );
    add(followerText);

    tapButton = TextComponent(
      text: 'Tap to Recruit',
      position: size / 2,
      anchor: Anchor.center,
      textRenderer: TextPaint(style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 32)),
    )
      ..priority = 1
      ..onTapDown = (event) {
        followers++;
        followerText.text = 'Followers: \$followers';
      };

    add(tapButton);
  }
}
