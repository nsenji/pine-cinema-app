import 'package:flutter/material.dart';
import 'package:pine/movies/presentation/comingSoon/movie_card_comingSoon.dart';


class ComingSoon extends StatefulWidget {
  const ComingSoon({super.key});

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  List<String> images = [
    'groot.jpg',
    'ham.jpg',
    'avatar_clip.jpg',
    'beast_clip.jpg',
    'nsenji.png',
    'black_adam.jpg',
    'bullet_train_clip.jpg',
    'john_wick.jpg',
    'korea.jpg',
    'metroplex.jpg',
    'nope_clip.jpg',
    'acacia.jpg',
    'the_woman_king.jpg',
    'transformers.jpg',
    'cyber.jpg',
    'travis.jpg',
    'wakanda.png',
    'arena_place.jpg',
    'thanos.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 0, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Coming soon',
                  style: theme.textTheme.bodyLarge,
                ),
                
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 14,
                    childAspectRatio: (150 / 220)),
                children: [
                  ...images.map((image) {
                    return MovieCardComingSoon(image: 'assets/images/$image');
                  }).toList()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
