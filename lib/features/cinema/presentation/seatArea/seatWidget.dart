import 'package:flutter/material.dart';
import 'package:pine/features/cinema/data/seat_states.dart';
import 'package:pine/features/cinema/domain/seat.dart';
import 'package:pine/utils/constants.dart';

class SeatWidget extends StatefulWidget {
  final Seat seat;

  const SeatWidget({super.key, required this.seat});

  @override
  State<SeatWidget> createState() => _SeatawidgetState();
}

class _SeatawidgetState extends State<SeatWidget> {
  Color color = Constants.seatblankColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: !widget.seat.taken
          ? () {
              if (clicked.contains(widget.seat.seatNumber.toString())) {
                setState(() {
                  color = Constants.seatblankColor;
                  clicked.remove(widget.seat.seatNumber.toString());
                });
              } else {
                setState(() {
                  color = Constants.seatSelectedColor;
                  clicked.add(widget.seat.seatNumber.toString());
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
        child: Center(
            child: Text(
          widget.seat.seatNumber.toString(),
          style: const TextStyle(color: Colors.black),
        )),
      ),
    );
  }
}
