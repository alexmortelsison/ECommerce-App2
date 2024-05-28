import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget? child;
  final void Function()? onTap;
  const MyButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: child,
        ),
      ),
    );
  }
}
