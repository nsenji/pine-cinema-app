import 'package:flutter/material.dart';

class MovieCard2 extends StatefulWidget {
  final String image;
  const MovieCard2({super.key, required this.image});

  @override
  State<MovieCard2> createState() => _MovieCard2State();
}

class _MovieCard2State extends State<MovieCard2> {
  @override
  Widget build(BuildContext context) {
    return
      Card(
        elevation: 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            height: 150,
            width: 120,
            widget.image,
            fit: BoxFit.cover,
          ),
        ),
      )
    ;
  }
}
