import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pine/features/movies/controllers/most_popular_state.dart';
import 'package:pine/features/movies/data/list_of_movies.dart';

class FilterStateController extends StateNotifier<List<Map>> {
  final StateOfMostPopularMoviesController mostPopularStateNotifier;
  FilterStateController({required this.mostPopularStateNotifier}) : super([]);

  List<Map> removeElements(List<Map> a, List<Map> b) {
    List<Map> result = [];

    // Iterate over elements in list a
    for (var elementA in a) {
      bool foundInB = false;
      // Iterate over elements in list b
      for (var elementB in b) {
        // Check if the elementA is equal to elementB
        if (elementA == elementB) {
          foundInB = true;
          break;
        }
      }
      // If the elementA is not found in list b, add it to the result list
      if (!foundInB) {
        result.add(elementA);
      }
    }

    return result;
  }

  void setList(List<Map> incomingList) {
    List<Map> newList = incomingList + state;
    state = newList;
    mostPopularStateNotifier.setMovieList(state);
  }

  void removeList(List<Map> incomingList) {
    List<Map> newList = removeElements(state, incomingList);
    state = newList;
    if(state.isEmpty){
    mostPopularStateNotifier.setMovieList(movies);
    }else{
    mostPopularStateNotifier.setMovieList(state);
    }
  }
}

final filterStateProvider =
    StateNotifierProvider<FilterStateController, List>((ref) {
  var mostPopularStateController = ref.read(stateOfMoviesProvider.notifier);
  return FilterStateController(
      mostPopularStateNotifier: mostPopularStateController);
});
