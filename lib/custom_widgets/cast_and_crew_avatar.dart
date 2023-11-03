import 'package:flutter/material.dart';

class CastAndCrewCard extends StatefulWidget {
  final String image;
  const CastAndCrewCard({super.key, required this.image});

  @override
  State<CastAndCrewCard> createState() => _CastAndCrewCardState();
}

class _CastAndCrewCardState extends State<CastAndCrewCard> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundImage: 
      AssetImage(
        widget.image,
      ),
    );
  }
}
