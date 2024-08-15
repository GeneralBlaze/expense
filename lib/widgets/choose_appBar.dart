import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCupertinoNavigationBar extends StatelessWidget
    implements PreferredSizeWidget, ObstructingPreferredSizeWidget {
  final Widget middle;
  final Widget trailing;

  CustomCupertinoNavigationBar({required this.middle, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: middle,
      trailing: trailing,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(44.0);

  @override
  bool shouldFullyObstruct(BuildContext context) => true;
}
