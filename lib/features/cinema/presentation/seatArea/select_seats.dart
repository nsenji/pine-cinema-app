import 'package:flutter/material.dart';

import 'package:pine/common_widgets/red_button.dart';
import 'package:pine/features/cinema/domain/seat.dart';
import 'package:pine/features/cinema/presentation/seatArea/curvedScreen.dart';
import 'package:pine/features/cinema/presentation/seatArea/seatWidget.dart';
import 'package:pine/features/cinema/presentation/ticket_confirmation.dart';

class SelectSeats extends StatefulWidget {
  const SelectSeats({super.key});

  @override
  State<SelectSeats> createState() => _SelectSeatsState();
}

class _SelectSeatsState extends State<SelectSeats> {
  /// function to generate the row where the seat is located
  String getRowLetter(int seatNumber) {
    int columns = 15;

    // Calculate the row number
    int rowNumber = seatNumber ~/ columns;
    if (seatNumber % columns != 0) {
      rowNumber++;
    }

    // Convert row number to corresponding letter
    String rowLetter = String.fromCharCode('A'.codeUnitAt(0) + rowNumber - 1);

    return rowLetter;
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        title: Text(
          'Select Seats',
          style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Container(
                  height: 13,
                  width: 13,
                  color: const Color.fromARGB(255, 243, 198, 198),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text("Taken")
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
        child: Button(
          text: 'Continue',
          onpressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TicketConfirmation()));
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 85),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (var i = 0; i < 13; i++)
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 4, right: 10, left: 10),
                          child: SizedBox(
                            height: 37,
                            child: Center(
                              child: Text(
                                String.fromCharCode(i + 65),
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  CurvedScreen(
                    screenWidth: 600,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                      child: SizedBox(
                    height: 530,
                    width: 610,
                    child: GridView.builder(
                        itemCount: 15 * 13,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 15,
                                childAspectRatio: 1),
                        itemBuilder: (context, index) {
                          final int seatNumber = (index + 1);
                          return SeatWidget(
                            seat: Seat(
                                seatNumber: seatNumber,
                                rowLetter: getRowLetter(seatNumber)),
                          );
                        }),
                  )),
                ],
              ),
              const SizedBox(
                width: 35,
              )
            ],
          ),
        ),
      ),
    );
  }
}
