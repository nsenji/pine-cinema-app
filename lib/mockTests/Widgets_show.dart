import 'package:flutter/material.dart';
import 'package:pine/common_widgets/cast_and_crew_avatar.dart';
import 'package:pine/common_widgets/movieCard2_withoutLabelBelow.dart';
import 'package:pine/common_widgets/pine_logo.dart';
import 'package:pine/common_widgets/red_button.dart';



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
              // ChipFilter(
              //   label: 'Abomination',
              //   onpressed: () {
                 

              //   },
                
              // )
               const SizedBox(
                    height: 30,
                  )
                  ,const MovieCard2(image: 'assets/images/nsenji.png',)
            ],
          ),
        ));
  }
}
