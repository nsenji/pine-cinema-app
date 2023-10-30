import 'package:flutter/material.dart';
import 'package:pine/app_pages/ticket_confirmation.dart';
import 'package:pine/custom_widgets/red_button.dart';
import 'package:pine/custom_widgets/seatWidget.dart';
import 'package:pine/fromAbdul/curvedScreen.dart';

class SelectSeats extends StatefulWidget {
  const SelectSeats({super.key});

  @override
  State<SelectSeats> createState() => _SelectSeatsState();
}

class _SelectSeatsState extends State<SelectSeats> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
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
                SizedBox(
                  width: 8,
                ),
                Text("Taken")
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 35,
                  )
                ],
              ),
              Column(
                children: [
                  CurvedScreen(
                    screenWidth: 600,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                      child: SizedBox(
                    height: 530,
                    width: 610,
                    child: GridView.builder(
                        itemCount: 15 * 13,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            crossAxisCount: 15,
                            childAspectRatio: 1),
                        itemBuilder: (context, index) {
                          final String seatNumber = (index + 1).toString();
                          return SeatWidget(number: seatNumber);
                        }),
                  )),
                ],
              ),
              SizedBox(
                width: 35,
              )
            ],
          ),
        ),
      ),
    );
  }
}
