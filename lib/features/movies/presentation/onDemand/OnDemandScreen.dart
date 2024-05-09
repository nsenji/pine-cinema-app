import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pine/common_widgets/filter_chip.dart';
import 'package:pine/common_widgets/movie_card1_mainWithLabel.dart';
import 'package:pine/common_widgets/search_widget.dart';
import 'package:pine/features/movies/controllers/most_popular_state.dart';

class OnDemand extends ConsumerStatefulWidget {
  const OnDemand({super.key});

  @override
  ConsumerState<OnDemand> createState() => _OnDemandState();
}

class _OnDemandState extends ConsumerState<OnDemand> {
  final TextEditingController _searchContoller = TextEditingController();

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
    List<Map> popularMoviesState = ref.watch(stateOfMoviesProvider);
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
                itemCount: popularMoviesState.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 14,
                    childAspectRatio: (150 / 220)),
                itemBuilder: (context, index) {
                  return MovieCard1(movieDetails: popularMoviesState[index]);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
