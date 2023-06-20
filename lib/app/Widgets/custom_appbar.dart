import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {Key? key, required this.child, this.height = kToolbarHeight})
      : super(key: key);
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: child,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
