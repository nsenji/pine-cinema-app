import 'package:flutter/material.dart';
import 'package:pine/features/profile/presentation/avatar.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isSwitched = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
          scrolledUnderElevation: 0,
          elevation: 0,
          
          title: Text(
            'Profile',
            style: theme.textTheme.bodyLarge!.copyWith(fontSize: 22),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Avatar(
                      photoUrl: '',
                      radius: 45,
                      borderWidth: 2.0,
                      borderColor: theme.primaryColor,
                      onPressed: () {},
                    ),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 14),
                        height: 30,
                        width: 300,
                        child: Text(
                          'Joshua Kimmich',
                          style: theme.textTheme.bodyLarge!
                                        .copyWith(fontSize: 17),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: SizedBox(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.scaffoldBackgroundColor,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16)),
                              border: Border.all(color: Colors.grey),
                            ),
                            height: 55,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Watch List',
                                    style: theme.textTheme.bodyMedium!
                                        .copyWith(fontSize: 16),
                                  ),
                                  const Icon(Icons.arrow_forward_sharp)
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.scaffoldBackgroundColor,
                              border: const Border(
                                  right: BorderSide(color: Colors.grey),
                                  left: BorderSide(color: Colors.grey),
                                  bottom: BorderSide(color: Colors.grey)),
                            ),
                            height: 55,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Favourites',
                                      style: theme.textTheme.bodyMedium!
                                        .copyWith(fontSize: 16)),
                                  const Icon(Icons.arrow_forward_sharp)
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.scaffoldBackgroundColor,
                              border: const Border(
                                  right: BorderSide(color: Colors.grey),
                                  left: BorderSide(color: Colors.grey)),
                            ),
                            height: 55,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Go Premium',
                                      style: theme.textTheme.bodyMedium!
                                        .copyWith(fontSize: 16)),
                                  const Icon(Icons.arrow_forward_sharp)
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.scaffoldBackgroundColor,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16)),
                              border: const Border(
                                  bottom: BorderSide(color: Colors.grey),
                                  right: BorderSide(color: Colors.grey),
                                  left: BorderSide(color: Colors.grey),
                                  top: BorderSide(color: Colors.grey)),
                            ),
                            height: 55,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Payments',
                                      style: theme.textTheme.bodyMedium!
                                        .copyWith(fontSize: 16)),
                                  const Icon(Icons.arrow_forward_sharp)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 29),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Settings',
                      style: theme.textTheme.bodyLarge!.copyWith(fontSize: 17),
                    )),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.palette_outlined),
                                const SizedBox(width: 10),
                                Text(
                                  'Theme',
                                  style: theme.textTheme.bodyMedium!
                                      .copyWith(fontSize: 16),
                                ),
                              ],
                            ),
                            Transform.scale(
                              scale: 0.7,
                              child: Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    if (isSwitched == true) {
                                      setState(() {
                                        isSwitched = false;
                                      });
                                    } else {
                                      setState(() {
                                        isSwitched = true;
                                      });
                                    }
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.notifications_none),
                                const SizedBox(width: 10),
                                Text('Push Notification',
                                    style: theme.textTheme.bodyMedium!
                                      .copyWith(fontSize: 16)),
                              ],
                            ),
                            Transform.scale(
                            scale: 0.7,
                            child: Switch(
                              value: isSwitched2,
                              onChanged: (value) {
                                setState(() {
                                  if (isSwitched2 == true) {
                                    setState(() {
                                      isSwitched2 = false;
                                    });
                                  } else {
                                    setState(() {
                                      isSwitched2 = true;
                                    });
                                  }
                                });
                              },
                            ),
                          )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.email_outlined),
                                const SizedBox(width: 10),
                                Text('Email Notification',
                                    style: theme.textTheme.bodyMedium!
                                      .copyWith(fontSize: 16)),
                              ],
                            ),
                            Transform.scale(
                            scale: 0.7,
                            child: Switch(
                              value: isSwitched3,
                              onChanged: (value) {
                                setState(() {
                                  if (isSwitched3 == true) {
                                    setState(() {
                                      isSwitched3 = false;
                                    });
                                  } else {
                                    setState(() {
                                      isSwitched3 = true;
                                    });
                                  }
                                });
                              },
                            ),
                          )
                          ],
                        ),
                        const SizedBox(height: 20),
                        
                        const SizedBox(height:10),
                        InkWell(
                          onTap: () => {},
                          child: Padding(
                            padding: const EdgeInsets.only( right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                
                                Text('Logout',
                                    style: theme.textTheme.bodyLarge!
                                        .copyWith(fontSize: 17,color: theme.primaryColor)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
