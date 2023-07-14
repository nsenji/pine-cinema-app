import 'package:flutter/material.dart';

import 'package:pine/app_pages/confirmation.dart';

import '../Custom_widgets/red_button.dart';
import '../custom_widgets/ticket_view.dart';

class TicketConfirmation extends StatefulWidget {
  const TicketConfirmation({super.key});

  @override
  State<TicketConfirmation> createState() => _TicketConfirmationState();
}

class _TicketConfirmationState extends State<TicketConfirmation> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Century Cinemax',
          style: textTheme.bodyLarge!.copyWith(fontSize: 22),
        ),
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
        child: Button(
          text: 'Confirm',
          onpressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => ()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [TicketView()],
          ),
        ),
      ),
    );
  }
}
