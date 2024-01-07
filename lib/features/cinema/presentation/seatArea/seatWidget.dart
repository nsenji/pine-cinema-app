import 'package:flutter/material.dart';
import 'package:pine/features/cinema/domain/seat.dart';

class SeatWidget extends StatefulWidget {
  final Seat seat;
  const SeatWidget({super.key, required this.seat});

  @override
  State<SeatWidget> createState() => _SeatawidgetState();
}

class _SeatawidgetState extends State<SeatWidget> {
  Color color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    List<String> taken = [
      "20",
      "45",
      "57",
      "24",
      "56",
      "87",
      "64",
      "87",
      "34",
      "817",
      "89",
      "123",
      "98",
      "176",
      "87",
      "112",
      "67",
      "09",
      "121",
      "145",
      "157"
    ];
    List<String> clicked = [
      "120",
      "145",
      "157",
      "124",
      "156",
      "187",
      "164",
      "187",
      "134",
      "17",
      "9",
      "23",
      "8",
      "16",
      "8",
      "112",
      "7",
      "09",
      "181",
      "155",
      "15"
    ];

    if (taken.contains(widget.seat.seatNumber.toString())) {
      setState(() {
        color = const Color.fromARGB(255, 243, 198, 198);
      });
    } else if (clicked.contains(widget.seat.seatNumber.toString())) {
      setState(() {
        color = const Color(0xFFEF5B6B);
      });
    }else{
      setState(() {
        color = Colors.grey;
      });
    }

    return Container(
      height: 37,
      width: 37,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(4)),
      child: Center(
          child: Text(
        widget.seat.seatNumber.toString(),
        style: const TextStyle(color: Colors.black),
      )),
    );
  }
}
