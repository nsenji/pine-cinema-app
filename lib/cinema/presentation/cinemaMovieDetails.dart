import 'package:flutter/material.dart';
import 'package:pine/cinema/presentation/seatArea/select_seats.dart';
import 'package:pine/custom_widgets/cast_and_crew_avatar.dart';
import 'package:pine/custom_widgets/movieCard2_withoutLabelBelow.dart';
import 'package:pine/custom_widgets/red_button.dart';

import '../../custom_widgets/time_chip.dart';

class InCinemaDetailsShowing extends StatefulWidget {
  const InCinemaDetailsShowing({super.key});

  @override
  State<InCinemaDetailsShowing> createState() => _InCinemaDetailsShowingState();
}

class _InCinemaDetailsShowingState extends State<InCinemaDetailsShowing> {
  List<String> images = [
    'korea.jpg',
    'thanos.jpg',
    'groot.jpg',
    'nsenji.png',
    'cyber.jpg',
    'travis.jpg',
  ];
  var maxlines = true;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var screenHeight = MediaQuery.of(context).size.height;
    var stackHeight = screenHeight * 0.35;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
          child: Button(
            text: 'Book Ticket',
            onpressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    elevation: 2,
                    title: Text(
                      'Please select time you want to watch',
                      style: theme.textTheme.labelMedium!
                          .copyWith(fontSize: 15, color: theme.disabledColor),
                    ),
                    content: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                TimeChip(
                                  label: '10:30 pm',
                                  onpressed: () {},
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                TimeChip(
                                  label: '10:30 pm',
                                  onpressed: () {},
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                TimeChip(
                                  label: '10:30 pm',
                                  onpressed: () {},
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                TimeChip(
                                  label: '10:30 pm',
                                  onpressed: () {},
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                TimeChip(
                                  label: '10:30 pm',
                                  onpressed: () {},
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Button(
                              text: 'Continue',
                              onpressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SelectSeats()));
                              })
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
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
                      bottom: stackHeight * 0.29,
                      child: Image.asset(
                        'assets/images/avatar.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        top: (stackHeight) - stackHeight * 0.29,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 17, left: 155),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'WU-TANG: AN american Saga',
                                    style: theme.textTheme.bodyLarge!
                                        .copyWith(fontSize: 18),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.video_library_rounded,
                                          color: theme.primaryColor,
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          'Trailer',
                                          style: theme.textTheme.bodyLarge,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        )),
                    const Positioned(
                        bottom: 0,
                        left: 20,
                        child: MovieCard2(image: 'assets/images/avatar.jpg'))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'In a world on the brink of chaos, a courageous team of scientists embarks on a perilous mission to save humanity. They must race against time to find the ancient artifact that holds the key to restoring balance and preventing the ultimate catastrophe. As they journey through treacherous landscapes and encounter mysterious beings, their determination and resilience are put to the test. This epic adventure will keep you on the edge of your seat, blending heart-pounding action with thought-provoking themes. Get ready for a thrilling cinematic experience like no other!',
                      style: theme.textTheme.bodyMedium,
                      maxLines: maxlines ? 3 : null,
                      overflow: maxlines ? TextOverflow.ellipsis : null,
                      //  softWrap: true,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                            onTap: () {
                              if (maxlines == true) {
                                setState(() {
                                  maxlines = false;
                                });
                              } else {
                                setState(() {
                                  maxlines = true;
                                });
                              }
                            },
                            child: maxlines
                                ? Text(
                                    'Read More',
                                    style: theme.textTheme.bodySmall,
                                  )
                                : Text(
                                    'Read Less',
                                    style: theme.textTheme.bodySmall,
                                  ))),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      color: Color(0xFFB4B4B4),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: SizedBox(
                        height: 30,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber[600],
                              size: 20,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '8.3',
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              height: 3,
                              width: 3,
                              decoration: const BoxDecoration(
                                  color: Colors.grey, shape: BoxShape.circle),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Adventure',
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              height: 3,
                              width: 3,
                              decoration: const BoxDecoration(
                                  color: Colors.grey, shape: BoxShape.circle),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '150 min',
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              height: 3,
                              width: 3,
                              decoration: const BoxDecoration(
                                  color: Colors.grey, shape: BoxShape.circle),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'IMDB',
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: Color(0xFFB4B4B4),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Cast',
                          style: theme.textTheme.bodyLarge,
                        )),
                    const SizedBox(
                      height: 13,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...images
                              .map((image) => Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: [
                                        CastAndCrewCard(
                                          image: 'assets/images/$image',
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        SizedBox(
                                            width: 70,
                                            child: Text(
                                              'Leornaldo decaprio',
                                              style: theme.textTheme.bodyMedium!
                                                  .copyWith(fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ))
                                      ],
                                    ),
                                  ))
                              .toList()
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Crew',
                          style: theme.textTheme.bodyLarge,
                        )),
                    const SizedBox(
                      height: 13,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...images
                              .map((image) => Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: [
                                        CastAndCrewCard(
                                          image: 'assets/images/$image',
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        SizedBox(
                                            width: 70,
                                            child: Text(
                                              'Leornaldo decaprio',
                                              style: theme.textTheme.bodyMedium!
                                                  .copyWith(fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ))
                                      ],
                                    ),
                                  ))
                              .toList()
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
