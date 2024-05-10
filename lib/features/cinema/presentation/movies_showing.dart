import 'package:flutter/material.dart';
import 'package:pine/features/cinema/presentation/movie_card_cinema.dart';
import 'package:pine/features/movies/data/list_of_movies.dart';

class MoviesShowing extends StatefulWidget {
  final showDate;
  final String location;
  const MoviesShowing(
      {super.key, required this.location, required this.showDate});

  @override
  State<MoviesShowing> createState() => _MoviesShowingState();
}

class _MoviesShowingState extends State<MoviesShowing> {
  List<String> images = [
    'korea.jpg',
    'metroplex.jpg',
    'nope_clip.jpg',
    'acacia.jpg',
    'arena_place.jpg',
    'thanos.jpg',
    'groot.jpg',
    'ham.jpg',
    'john_wick.jpg',
    'the_woman_king.jpg',
    'transformers.jpg',
    'avatar_clip.jpg',
    'beast_clip.jpg',
    'nsenji.png',
    'black_adam.jpg',
    'bullet_train_clip.jpg',
    'cyber.jpg',
    'travis.jpg',
    'wakanda.png'
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'Showing at ${widget.location}',
          style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Showing',
                  style: theme.textTheme.bodyLarge!.copyWith(fontSize: 17),
                ),
                Text(
                  widget.showDate.toString(),
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: theme.primaryColor, fontSize: 17),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: moviesInCinema.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 14,
                    childAspectRatio: (130 / 220)),
                itemBuilder: (context, index) {
                  return MovieCardCinema(movieDetails: moviesInCinema[index]);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
