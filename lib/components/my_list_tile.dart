import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final IconData? icon;
  final String text;
  final void Function()? onPressed;
  const MyListTile({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
      ),
      title: Text(text),
    );
  }
}
