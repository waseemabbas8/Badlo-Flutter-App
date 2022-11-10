import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final double size;

  const CircularIcon({
    Key? key,
    required this.iconData,
    required this.color,
    this.size = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(2),
      child: Icon(iconData, color: Colors.white, size: size),
    );
  }
}
