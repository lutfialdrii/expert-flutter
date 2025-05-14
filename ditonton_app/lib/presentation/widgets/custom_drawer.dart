import 'package:flutter/widgets.dart';

class CustomDrawer extends StatelessWidget {
  final Widget content;

  const CustomDrawer({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(),
        Transform(
          transform: Matrix4.identity()..scale(0.7),
          alignment: Alignment.centerLeft,
          child: content,
        ),
      ],
    );
  }
}
