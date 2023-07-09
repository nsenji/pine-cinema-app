import 'package:flutter/material.dart';

class ButtonSmall extends StatefulWidget {
  final String text;
  final double height;
  final double width;
  final VoidCallback onpressed;
  const ButtonSmall(
      {super.key,
      required this.text,
      required this.onpressed,
      this.width = 90,
      this.height = 30});

  @override
  State<ButtonSmall> createState() => _ButtonSmallState();
}

class _ButtonSmallState extends State<ButtonSmall> {
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
            height: widget.height,
            width: widget.width,
            child: Center(
                child: Text(
              widget.text,
              style: theme.textTheme.labelMedium,
            ))),
      ),
    );
  }
}
