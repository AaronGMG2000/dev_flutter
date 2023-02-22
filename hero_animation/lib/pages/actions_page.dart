import 'package:flutter/material.dart';
import 'package:hero_animation/widgets/button_animated.dart';

class ActionsPage extends StatelessWidget {
  static const String routeName = 'ActionsPage';

  const ActionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ButtonAnimated(heroTag: 'prueba', icon: Icons.add),
                  ButtonAnimated(heroTag: 'prueba2', icon: Icons.add),
                  ButtonAnimated(heroTag: 'prueba3', icon: Icons.add),
                ],
              ),
              const SizedBox(height: 60),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ButtonAnimated(heroTag: 'prueba4', icon: Icons.add),
                  ButtonAnimated(heroTag: 'prueba5', icon: Icons.add),
                  ButtonAnimated(heroTag: 'prueba6', icon: Icons.add),
                ],
              ),
              const SizedBox(height: 60),
              const ButtonAnimated(heroTag: 'add', icon: Icons.add),
            ],
          ),
        ),
      ),
    );
  }
}
