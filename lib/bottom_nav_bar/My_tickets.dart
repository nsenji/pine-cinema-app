import 'package:flutter/material.dart';

import '../custom_widgets/ticket.dart';

class MyTickets extends StatefulWidget {
  const MyTickets({Key? key}) : super(key: key);

  @override
  State<MyTickets> createState() => _MyTicketsState();
}

class _MyTicketsState extends State<MyTickets> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            scrolledUnderElevation: 0,
            actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.notifications_outlined,
                size: 27,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.add_circle_outline_rounded,
                size: 27,
              ),
            )
          ],
            title:  Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text("My Tickets",style: theme.textTheme.bodyLarge!.copyWith(fontSize: 22)),
            ),
          ),
          body: const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                child: Column(
                        children: [
                Ticket(),
                SizedBox(height: 20,),
                Ticket(),
                SizedBox(height: 20,),
                Ticket(),
                SizedBox(height: 20,),
                Ticket(),
                SizedBox(height: 20,),
                Ticket(),
                SizedBox(height: 20,),
                        ],
                      ),
              ))),
    );
  }
}
