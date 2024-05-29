import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget icon;
  final void Function()? onPressed;
  const MyButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: icon,
            ),
          )),
    );
  }
}
