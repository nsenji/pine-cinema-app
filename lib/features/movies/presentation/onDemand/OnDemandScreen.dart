import 'package:flutter/material.dart';
import 'package:pine/common_widgets/filter_chip.dart';
import 'package:pine/common_widgets/movie_card1_mainWithLabel.dart';
import 'package:pine/common_widgets/search_widget.dart';
import 'package:pine/features/movies/data/list_of_movies.dart';

class OnDemand extends StatefulWidget {
  const OnDemand({super.key});

  @override
  State<OnDemand> createState() => _OnDemandState();
}

class _OnDemandState extends State<OnDemand> {
  final TextEditingController _searchContoller = TextEditingController();

  List<String> images = [
    'acacia.jpg',
    'arena_place.jpg',
    'avatar_clip.jpg',
    'beast_clip.jpg',
    'black_adam.jpg',
    'bullet_train_clip.jpg',
    'cyber.jpg',
    'groot.jpg',
    'ham.jpg',
    'john_wick.jpg',
    'korea.jpg',
    'metroplex.jpg',
    'nope_clip.jpg',
    'nsenji.png',
    'thanos.jpg',
    'the_woman_king.jpg',
    'transformers.jpg',
    'travis.jpg',
    'wakanda.png'
  ];

  List<String> categories = [
    'All',
    'Action',
    'Horror',
    'Animation',
    'Sci-fi',
    'Comedy',
    'Drama',
    'Documentary',
    'Adventure',
    'Romance',
    'Nolan'
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: TextFieldWidget(
                cancelText: () {
                  setState(() {
                    _searchContoller.clear();
                  });
                },
                suffixVisible: _searchContoller.text.isNotEmpty,
                controller: _searchContoller,
                label: "Search for movie",
                onChanged: (value) {}),
          ),
          const SizedBox(
            height: 7,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories.map(
                (value) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ChipFilter(label: value, onpressed: () {}),
                  );
                },
              ).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Most Popular',
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: movies.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 14,
                    childAspectRatio: (150 / 220)),
                itemBuilder: (context, index) {
                  return MovieCard1(movieDetails: movies[index]);
                },
                
              ),
            ),
          )
        ],
      ),
    );
  }
}
