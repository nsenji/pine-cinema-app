import 'package:flutter/material.dart';

class MovieCard1 extends StatelessWidget {
  final Map movieDetails;
  const MovieCard1({super.key, required this.movieDetails});

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
                  child: Image.network(
                   movieDetails["Poster_Url"],
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
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Text(
              movieDetails["Title"],
              style: theme.textTheme.labelSmall,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
