import 'package:flutter/material.dart';
import 'package:pine/utils/constants.dart';

class BarIcon extends StatefulWidget {
  final String name;
  final  bool active;
  const BarIcon({super.key, required this.name,required this.active});

  @override
  State<BarIcon> createState() => _BarIconState();
}

class _BarIconState extends State<BarIcon> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    switch (widget.name) {
      case 'movies':
        return Image.asset(
          'assets/images/movies.png',
          height: 25,
          width: 25,
          color: widget.active ? theme.primaryColor: Constants.navBarIconColorlight,
        );

      case 'theatres':
        return Image.asset(
          'assets/images/cinema2.png',
          height: 25,
          width: 25,
          color: widget.active ? theme.primaryColor: Constants.navBarIconColorlight,
        );

      case 'ticket':
        return Image.asset(
          'assets/images/tickets.png',
          height: 25,
          width: 25,
          color: widget.active ? theme.primaryColor: Constants.navBarIconColorlight,
        );

      case 'profile':
        return Image.asset(
          'assets/images/profile.png',
          height: 25,
          width: 25,
          color: widget.active ? theme.primaryColor: Constants.navBarIconColorlight,
        );
    }

    return Scaffold();
  }
}
