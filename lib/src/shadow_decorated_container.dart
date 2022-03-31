import 'package:flutter/material.dart';

class ShadowDecoratedContainer extends StatelessWidget {
  double radius;
  Color color;
  Widget child;

  ShadowDecoratedContainer(
      {Key? key, required this.radius, required this.color,required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0c000000),
            blurRadius: 10,
            offset: Offset(2, 2),
          ),
          BoxShadow(
            color: Color(0x0c000000),
            blurRadius: 10,
            offset: Offset(-2, -2),
          ),
        ],
        color: color,
      ),
      child: child,
    );
  }
}
