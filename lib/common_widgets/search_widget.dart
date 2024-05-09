import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final bool obscureText;
  final bool authText;
  final TextEditingController controller;
  final Color textcolor;
  final Color borderSideColor;
  final String label;
  final Color labelColor;
  final TextInputType keyBoardType;
  final Color backgroundColor;
  final bool suffixVisible;
  final VoidCallback cancelText;
  final void Function(String) onChanged;

  const TextFieldWidget(
      {super.key,
      this.authText = false,
      required this.cancelText,
      required this.suffixVisible,
      this.obscureText = false,
      required this.controller,
      this.textcolor = Colors.black,
      this.borderSideColor = Colors.black,
      required this.label,
      this.labelColor = Colors.grey,
      this.keyBoardType = TextInputType.name,
      this.backgroundColor = Colors.white,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ? true : false,
      onFieldSubmitted: (value) {
        // this will  handle the checks when the field is submitted
        // but before the button to proceed is pressed
      },

      // this is used for search functionality where it returns
      // some of the results depending on the values that are
      // already in the field
      onChanged: onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field cannot be empty';
        }
        return null;
      },
      style:
          TextStyle(color: authText ? Colors.white : textcolor, fontSize: 17),
      controller: controller,
      decoration: InputDecoration(
          suffixIcon: suffixVisible
              ? IconButton(
                  onPressed: cancelText,
                  icon: Icon(
                    Icons.cancel,
                    color: Color(0xFFEF5B6B),
                  ),
                )
              : null,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderSideColor)),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xFFEF5B6B),
          ),
          contentPadding: const EdgeInsets.only(top: 12, bottom: 12, left: 13),
          filled: true,
          fillColor: backgroundColor,
          // errorText:
          //     widget.controllerExist.isEmpty ? null : widget.controllerExist,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderSideColor)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderSideColor)),
          label: Text(label),
          labelStyle: TextStyle(color: labelColor)
          //hintText: 'username',

          ),
      keyboardType: TextInputType.name,

      //  keyboardType: TextInputType.name,
    );
  }
}
