import 'package:flutter/material.dart';

class ChipFilter extends StatefulWidget {
  final String label;
  final Function(bool) onpressed;

  const ChipFilter({super.key, required this.label, required this.onpressed});

  @override
  State<ChipFilter> createState() => _ChipFilterState();
}

class _ChipFilterState extends State<ChipFilter> {
  var isSelected = false;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return FilterChip(
      padding: const EdgeInsets.only(top: 6,bottom: 6),
      labelStyle: isSelected ? theme.textTheme.labelMedium:theme.textTheme.labelSmall,
      backgroundColor: theme.dialogBackgroundColor,
      selectedColor: theme.primaryColor,
      selected: isSelected,
      label: Text(widget.label),
      onSelected: (value) {
        setState(() {
          isSelected = !isSelected;
        });
        widget.onpressed(isSelected);
      },
    );
  }
}
