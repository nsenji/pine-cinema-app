import 'package:flutter/material.dart';

class TimeChip extends StatefulWidget {
  final String label;
  final VoidCallback onpressed;

  const TimeChip({super.key, required this.label, required this.onpressed});

  @override
  State<TimeChip> createState() => _TimeChipState();
}

class _TimeChipState extends State<TimeChip> {
  var isSelected = false;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InputChip(
      labelPadding: EdgeInsets.only(top: 6,bottom: 6,left: 10,right: 10),
      padding: const EdgeInsets.only(top: 6,bottom: 6),
      labelStyle: isSelected ? theme.textTheme.labelMedium!.copyWith(fontSize:15,fontWeight: FontWeight.bold ):theme.textTheme.labelSmall!.copyWith(fontSize:15,fontWeight: FontWeight.bold ),
      backgroundColor: theme.dialogBackgroundColor,
      selectedColor: theme.primaryColor,
      selected: isSelected,
      label: Text(widget.label),
      onSelected: (bool) {
        setState(() {
          isSelected = !isSelected;
        });
        widget.onpressed;
      },
    );
  }
}
