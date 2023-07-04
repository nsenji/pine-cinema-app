import 'package:flutter/material.dart';

class Pine extends StatelessWidget {
  const Pine({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Pine.',
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontFamily: 'Montserrat',
        fontSize: 27
      ),
    );
  }
}
