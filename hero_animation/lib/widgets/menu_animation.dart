import 'package:flutter/material.dart';
import 'package:hero_animation/pages/actions_page.dart';
import 'package:hero_animation/widgets/button_animated.dart';
import 'package:hero_animation/widgets/full_screen_modal.dart';

class MenuAnimation extends StatelessWidget {
  const MenuAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ButtonAnimated(heroTag: 'prueba', icon: Icons.add),
        const ButtonAnimated(heroTag: 'prueba2', icon: Icons.add),
        const ButtonAnimated(heroTag: 'prueba3', icon: Icons.add),
        const ButtonAnimated(heroTag: 'prueba4', icon: Icons.add),
        const ButtonAnimated(heroTag: 'prueba5', icon: Icons.add),
        const ButtonAnimated(heroTag: 'prueba6', icon: Icons.add),
        ButtonAnimated(heroTag: 'add', icon: Icons.add, onPressed: () => showFullModal(const ActionsPage())),
      ],
    );
  }
}
