import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pine/features/cinema/controllers/seat_selection_controller.dart';
import 'package:pine/features/cinema/domain/seat.dart';
import 'package:pine/utils/constants.dart';

class SeatWidget extends ConsumerStatefulWidget {
  final Seat seat;

  const SeatWidget({super.key, required this.seat});

  @override
  ConsumerState<SeatWidget> createState() => _SeatawidgetState();
}

class _SeatawidgetState extends ConsumerState<SeatWidget> {
  Color color = Constants.seatblankColor;

  @override
  Widget build(BuildContext context) {
    var seatSelectionStateNotifier = ref.read(seatSelectionProvider.notifier);
    List seatSelectionState = ref.watch(seatSelectionProvider);
    return InkWell(
      onTap: !widget.seat.taken
          ? () {
              if (seatSelectionState.contains(widget.seat.seatNumber)) {
                setState(() {
                  color = Constants.seatblankColor;
                  seatSelectionStateNotifier
                      .remove(widget.seat.seatNumber);
                  seatSelectionStateNotifier
                      .reducePrice(widget.seat.seatNumber);
                });
              } else {
                setState(() {
                  color = Constants.seatSelectedColor;
                  seatSelectionStateNotifier
                      .add(widget.seat.seatNumber);
                  seatSelectionStateNotifier
                      .addPrice(widget.seat.seatNumber);
                });
              }
            }
          : null,
      child: Container(
        height: 37,
        width: 37,
        decoration: BoxDecoration(
            color: widget.seat.taken ? Constants.SeatTakenColor : color,
            borderRadius: BorderRadius.circular(4)),
        child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 3, top: 3),
              child: Text(
                widget.seat.seatNumber.toString(),
                style: const TextStyle(color: Colors.black, fontSize: 10),
              ),
            )),
      ),
    );
  }
}
