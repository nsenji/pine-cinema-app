import 'package:flutter/material.dart';

import '../custom_widgets/ticket.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 20,left:20,top: 40),
        child: Ticket(),
      ),
    );
  }
}