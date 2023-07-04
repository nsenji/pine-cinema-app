import 'package:flutter/material.dart';

class MovieCardComingSoon extends StatefulWidget {
  final String image;
  const MovieCardComingSoon({super.key, required this.image});

  @override
  State<MovieCardComingSoon> createState() => _MovieCardComingSoonState();
}

class _MovieCardComingSoonState extends State<MovieCardComingSoon> {
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
              '23/02/24',
              style: theme.textTheme.labelSmall,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
