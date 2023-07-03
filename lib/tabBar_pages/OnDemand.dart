import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pine/custom_widgets/filter_chip.dart';

class OnDemand extends StatefulWidget {
  const OnDemand({super.key});

  @override
  State<OnDemand> createState() => _OnDemandState();
}

class _OnDemandState extends State<OnDemand> {
  List<String> categories = ['All', 'Action', 'Horror', 'Animation','Sci-fi','Comedy','Drama' ,'Documentary','Adventure','Romance','Nolan'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only( right: 8),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: 7,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: 
                  categories.map((value) { 
                   return  Padding(
                     padding: const EdgeInsets.all(4.0),
                     child: ChipFilter(label: value, onpressed: (){}),
                   );
                  },).toList()
                ,
              ),
            )
          ],
        )),
      ),
    );
  }
}
