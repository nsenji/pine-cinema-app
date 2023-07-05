import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pine/custom_widgets/movieCard2.dart';

class InCinemaDetails extends StatefulWidget {
  const InCinemaDetails({super.key});

  @override
  State<InCinemaDetails> createState() => _InCinemaDetailsState();
}

class _InCinemaDetailsState extends State<InCinemaDetails> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var stackHeight = screenHeight * 0.35;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back,color: Colors.white,)),
          excludeHeaderSemantics: true,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: stackHeight,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: stackHeight * 0.22,
                      child: Image.asset(
                        'assets/images/avatar.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        top: (stackHeight) - stackHeight * 0.22,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.indigo,
                        )),
                    Positioned(
                        bottom: 0,
                        left: 30,
                        child: MovieCard2(image: 'assets/images/avatar.jpg'))
                  ],
                ),
              ),
              MovieCard2(image: 'assets/images/korea.jpg'),
              SizedBox(height: 20,),
              MovieCard2(image: 'assets/images/korea.jpg'),
              SizedBox(height: 20,),
              MovieCard2(image: 'assets/images/korea.jpg'),
              SizedBox(height: 20,),
              MovieCard2(image: 'assets/images/korea.jpg'),
              SizedBox(height: 20,),
              MovieCard2(image: 'assets/images/korea.jpg'),
              SizedBox(height: 20,),
              MovieCard2(image: 'assets/images/korea.jpg'),
              SizedBox(height: 20,),
              MovieCard2(image: 'assets/images/korea.jpg'),
              SizedBox(height: 20,),
              MovieCard2(image: 'assets/images/korea.jpg'),
              SizedBox(height: 20,),
              MovieCard2(image: 'assets/images/korea.jpg'),
              SizedBox(height: 20,),
              MovieCard2(image: 'assets/images/korea.jpg'),
              SizedBox(height: 20,),
              MovieCard2(image: 'assets/images/korea.jpg'),
              SizedBox(height: 20,),
              MovieCard2(image: 'assets/images/korea.jpg'),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
