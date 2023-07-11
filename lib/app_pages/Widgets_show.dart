import 'package:flutter/material.dart';

import '../../Custom_widgets/filter_chip.dart';
import '../../Custom_widgets/pine_logo.dart';
import '../../Custom_widgets/red_button.dart';
import '../custom_widgets/cast_and_crew_card.dart';
import '../custom_widgets/movieCard2.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Pine(),
              const SizedBox(
                height: 30,
              ),
              Button(
                text: 'Testing',
                onpressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              const CastAndCrewCard(image: 'assets/images/nsenji.png',),
              const SizedBox(
                height: 30,
              ),
              ChipFilter(
                label: 'Abomination',
                onpressed: () {
                 

                },
                
              )
              , const SizedBox(
                    height: 30,
                  )
                  ,const MovieCard2(image: 'assets/images/nsenji.png',)
            ],
          ),
        ));
  }
}
