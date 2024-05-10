import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeatSelectionController extends StateNotifier<List> {
  SeatSelectionController() : super([]);

  int sumOfprice = 0;
  int vip = 15000;
  int ordinary = 10000;

  void add(item) {
    state.add(item);
  }

  void remove(item) {
    state.remove(item);
  }

  dynamic get seatNumber {
    return state;
  }

  dynamic addPrice(item) {
    if (item < 22 && item > 0) {
      sumOfprice += vip;
    }
    if (item > 21) {
      sumOfprice += ordinary;
    }
  }

  dynamic reducePrice(item) {
    if (item < 22 && item > 0) {
      sumOfprice -= vip;
    }
    if (item > 21) {
      sumOfprice -= ordinary;
    }
  }

  dynamic get totalPrice {
    return sumOfprice;
  }



}

final seatSelectionProvider =
    StateNotifierProvider<SeatSelectionController, List>((ref) {
  return SeatSelectionController();
});
