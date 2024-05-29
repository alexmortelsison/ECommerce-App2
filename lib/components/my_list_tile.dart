import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final Widget icon;
  final void Function()? onPressed;
  final String text;
  const MyListTile({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
      title: Text(text),
    );
  }
}
