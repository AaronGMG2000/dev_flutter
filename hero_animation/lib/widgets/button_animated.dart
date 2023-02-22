import 'package:flutter/material.dart';

class ButtonAnimated extends StatelessWidget {
  final String? heroTag;
  final IconData icon;
  final Function()? onPressed;
  const ButtonAnimated({Key? key, required this.heroTag, required this.icon, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      onPressed: onPressed,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: LayoutBuilder(builder: (context, constraint) {
          return Icon(icon, size: constraint.biggest.height);
        }),
      ),
    );
  }
}
