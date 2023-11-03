import 'package:flutter/material.dart';

class MovieCard1 extends StatefulWidget {
  final String image;
  const MovieCard1({super.key, required this.image});

  @override
  State<MovieCard1> createState() => _MovieCard1State();
}

class _MovieCard1State extends State<MovieCard1> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Card(
              elevation: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  widget.image,
                  height: 200,
                  width: 180,
                  fit: BoxFit.cover,
                ),
              ),
              
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Text(
              'The Prestige',
              style: theme.textTheme.labelSmall,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
