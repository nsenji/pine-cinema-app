import 'package:flutter/material.dart';
import 'package:pine/common_widgets/pine_logo.dart';
import 'package:pine/features/movies/presentation/OnDemandScreen.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Pine(),
          ),
          // actions: const [
          //   Padding(
          //     padding: EdgeInsets.only(right: 20),
          //     child: Icon(
          //       Icons.add_circle_outline_rounded,
          //       size: 27,
          //     ),
          //   )
          // ],
        ),
        body: OnDemand());
  }
}
