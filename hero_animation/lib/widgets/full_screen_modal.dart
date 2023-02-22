import 'package:flutter/material.dart';
import 'package:hero_animation/main.dart';

class FullScreenModal extends PageRoute<void> {
  final WidgetBuilder builder;
  FullScreenModal({required this.builder});

  @override
  Color? get barrierColor => Colors.black.withOpacity(0.6);

  @override
  bool get barrierDismissible => true;

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 700);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    final result = builder(context);
    return FadeTransition(
      opacity: Tween<double>(begin: 0, end: 1).animate(animation),
      child: Semantics(
        scopesRoute: true,
        explicitChildNodes: true,
        child: result,
      ),
    );
  }
}

dynamic showFullModal(Widget child) async {
  Navigator.of(MyApp.navigatorKey.currentContext!)
      .push(
        FullScreenModal(
          builder: (_) => child,
        ),
      )
      .then((value) => debugPrint('cerrado'));
}
