import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pine/common_widgets/filter_chip.dart';
import 'package:pine/common_widgets/get_genre_from_list.dart';
import 'package:pine/common_widgets/movie_card1_mainWithLabel.dart';
import 'package:pine/common_widgets/search_widget.dart';
import 'package:pine/features/movies/controllers/filter_state.dart';
import 'package:pine/features/movies/controllers/most_popular_state.dart';
import 'package:pine/features/movies/data/list_of_movies.dart';

class OnDemand extends ConsumerStatefulWidget {
  const OnDemand({super.key});

  @override
  ConsumerState<OnDemand> createState() => _OnDemandState();
}

class _OnDemandState extends ConsumerState<OnDemand> {
  void _getSearchResultList(
      String value,
      StateOfMostPopularMoviesController stateOfMostPopularMoviesController,
      List currentMovieState) {
    List searchResultList = currentMovieState
        .where((element) => element["Title"]
            .toString()
            .toLowerCase()
            .contains(value.toLowerCase()))
        .toList();

    stateOfMostPopularMoviesController
        .setMovieList(searchResultList as List<Map>);
  }

  void _addToFilterResult(String value, List currentMovieState,
      FilterStateController filterStateController) {
    List filterResultList = currentMovieState
        .where((element) => getGenre(element['Genre'])
            .toString()
            .toLowerCase()
            .contains(value.toLowerCase()))
        .toList();

    filterStateController.setList(filterResultList as List<Map>);
  }

  void _removeFromFilterResult(String value, List currentMovieState,
      FilterStateController filterStateController) {
    List filterResultList = currentMovieState
        .where((element) => getGenre(element['Genre'])
            .toString()
            .toLowerCase()
            .contains(value.toLowerCase()))
        .toList();

    filterStateController.removeList(filterResultList as List<Map>);
  }

  final TextEditingController _searchContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Map> popularMoviesState = ref.watch(stateOfMoviesProvider);
    var popularMoviesController = ref.read(stateOfMoviesProvider.notifier);
    var stateFilterController = ref.read(filterStateProvider.notifier);

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
                    popularMoviesController.setMovieList(movies);
                  });
                },
                suffixVisible: _searchContoller.text.isNotEmpty,
                controller: _searchContoller,
                label: "Search for movie",
                onChanged: (value) {
                  _getSearchResultList(value, popularMoviesController, movies);
                }),
          ),
          const SizedBox(
            height: 7,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: genres.map(
                (chipValue) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ChipFilter(
                        label: chipValue,
                        onpressed: (boolState) {
                          if (boolState) {
                            _addToFilterResult(
                                chipValue, movies, stateFilterController);
                          } else {
                            _removeFromFilterResult(chipValue, movies, stateFilterController);
                          }
                        }),
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
