import 'package:flutter/material.dart';

class MainTextButton extends StatelessWidget {
  const MainTextButton({
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
