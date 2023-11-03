import 'package:flutter/material.dart';
import 'package:pine/features/cinema/presentation/availableCinemasScreen.dart';
import 'package:pine/features/movies/presentation/movieStatusTabs.dart';
import 'package:pine/features/myTickets/presentation/myTicketsScreen.dart';
import 'package:pine/features/navBar/navBar_icons.dart';
import 'package:pine/features/profile/presentation/profileScreen.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int nowIndex = 0;
  void onTap(int index) {
    setState(() {
      nowIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    List pages = [
      const Movies(),
      const Theatres(),
      const MyTickets(),
      const Profile(),
    ];
    return Scaffold(
      body: pages[nowIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: theme.textTheme.displaySmall,
          selectedLabelStyle: theme.textTheme.displaySmall,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: nowIndex,
          onTap: onTap,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: theme.primaryColor,
          // unselectedItemColor: theme.disabledColor,
          selectedIconTheme: IconThemeData(color: theme.primaryColor),
          unselectedIconTheme: IconThemeData(color: theme.disabledColor),
          items: [
            BottomNavigationBarItem(
                label: "Movies",
                icon: BarIcon(
                    name: 'movies', active: nowIndex == 0 ? true : false)),
            BottomNavigationBarItem(
                label: "Theatres",
                icon: BarIcon(
                    name: 'theatres', active: nowIndex == 1 ? true : false)),
            BottomNavigationBarItem(
                label: "My Tickets",
                icon: BarIcon(
                    name: 'ticket', active: nowIndex == 2 ? true : false)),
            BottomNavigationBarItem(
                label: "Profile",
                icon: BarIcon(
                    name: 'profile', active: nowIndex == 3 ? true : false)),
          ]),
    );
  }
}
