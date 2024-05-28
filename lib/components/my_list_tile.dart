import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Widget icon;
  const MyListTile(
      {super.key,
      required this.icon,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      leading: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
