import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String text;
  final VoidCallback onpressed;
  const Button(
      {super.key,
      required this.text,
      required this.onpressed,
      });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      onTap: widget.onpressed,
      child: Material(
        borderRadius: BorderRadius.circular(8),
        elevation: 4,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: theme.primaryColor),
            height: 45,
            child: Center(
                child: Text(
              widget.text,
              style: theme.textTheme.labelLarge,
            ))),
      ),
    );
  }
}
