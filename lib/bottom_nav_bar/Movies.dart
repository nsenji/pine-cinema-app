import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pine/custom_widgets/pine_logo.dart';

import '../tabBar_pages/ComingSoon.dart';
import '../tabBar_pages/InCinemas.dart';
import '../tabBar_pages/OnDemand.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: const Pine(),
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
          bottom: TabBar(
              dragStartBehavior: DragStartBehavior.start,
              isScrollable: false,
              labelStyle: theme.textTheme.bodyLarge,
              labelColor: theme.primaryColor,
              unselectedLabelColor: theme.disabledColor,
              indicatorColor: theme.primaryColor,
              controller: _tabController,
              tabs: [
                Tab(
                    child: Text(
                  'On Demand',
                  // style: theme.textTheme.bodyLarge,
                )),
                Tab(
                    child: Text(
                  'In Cinemas',
                  // style: theme.textTheme.bodyLarge,
                )),
                Tab(
                    child: Text(
                  'Coming Soon',
                  // style: theme.textTheme.bodyLarge,
                )),
              ]),
        ),
        body: TabBarView(
            controller: _tabController,
            children: const [OnDemand(), InCinemas(), ComingSoon()]));
  }
}
