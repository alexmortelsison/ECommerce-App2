import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final void Function()? onPressed;
  final Widget icon;
  final String text;
  const MyListTile({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(onPressed: onPressed, icon: icon),
      title: Text(text),
    );
  }
}
