import 'package:flutter/material.dart';

class MovieCard2 extends StatelessWidget {
  final String image;
  const MovieCard2({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            height: 150,
            width: 120,
            image,
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: LinearProgressIndicator(
                  color: Color(0xFFEF5B6B),
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
          )),
    );
  }
}
