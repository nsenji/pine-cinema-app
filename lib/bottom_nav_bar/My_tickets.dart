import 'package:flutter/material.dart';

class MyTickets extends StatefulWidget {
  const MyTickets({Key? key}) : super(key: key);

  @override
  State<MyTickets> createState() => _MyTicketsState();
}

class _MyTicketsState extends State<MyTickets> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title:  Text("My Tickets",style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20)),
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Column(
                      children: const [
              MyTickets(),
              SizedBox(height: 20,),
              MyTickets(),
              SizedBox(height: 20,),
              MyTickets(),
              SizedBox(height: 20,),
              MyTickets(),
              SizedBox(height: 20,),
              MyTickets(),
              SizedBox(height: 20,),
                      ],
                    ),
            )));
  }
}
