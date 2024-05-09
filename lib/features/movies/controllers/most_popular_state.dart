import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pine/features/movies/data/list_of_movies.dart';

class StateOfMostPopularMoviesController extends StateNotifier<List<Map>> {
  StateOfMostPopularMoviesController() : super(movies);

  void setMovieList(List<Map> incomingList) {
    state = incomingList;
  }
}

final stateOfMoviesProvider =
    StateNotifierProvider<StateOfMostPopularMoviesController, List<Map>>((ref) {
  return StateOfMostPopularMoviesController();
});
