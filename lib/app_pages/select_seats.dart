import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pine/app_pages/ticket_confirmation.dart';

import '../Custom_widgets/red_button.dart';

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
        title: Text(
          'Select Seats',
          style: theme.textTheme.bodyLarge!.copyWith(fontSize: 22),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
        child: Button(
          text: 'Continue',
          onpressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TicketConfirmation()));
          },
        ),
      ),
    );
  }
}
