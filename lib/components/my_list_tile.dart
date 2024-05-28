import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Widget icon;
  const MyListTile({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: icon,
        onPressed: onPressed,
      ),
      title: Text(text),
    );
  }
}
