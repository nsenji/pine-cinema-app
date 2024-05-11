import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:pine/common_widgets/custom_snackbar.dart';

import 'package:pine/common_widgets/red_button_small.dart';
import 'package:pine/features/cinema/controllers/selected_date_and_time_controller.dart';
import 'package:pine/features/cinema/data/availableCinemasData.dart';
import 'package:pine/features/cinema/presentation/movies_showing.dart';

class Theatres extends ConsumerStatefulWidget {
  const Theatres({super.key});

  @override
  ConsumerState<Theatres> createState() => _TheatresState();
}

class _TheatresState extends ConsumerState<Theatres> {
  @override
  Widget build(BuildContext context) {
    dynamic showDate;
    var textTheme = Theme.of(context).textTheme;
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        title: Text(
          'Cinemas',
          style: textTheme.bodyLarge!.copyWith(fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Column(children: [
          ...locations.map(
            (location) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          CinemaImage(
                            image: location['image'],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  location['name'],
                                  style: textTheme.bodyLarge!
                                      .copyWith(fontSize: 18),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                location['building'],
                                style: textTheme.bodyMedium!
                                    .copyWith(fontSize: 15),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                location['address'],
                                style:
                                    textTheme.bodyLarge!.copyWith(fontSize: 15),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ButtonSmall(
                                height: 37,
                                text: 'Movies Showing',
                                width: 150,
                                onpressed: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      helpText: 'Select date ',
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2023),
                                      lastDate: DateTime(2101));

                                  if (pickedDate != null) {
                                    String formattedDate =
                                        DateFormat('EE, d-MM-y')
                                            .format(pickedDate);

                                    setState(() {
                                      showDate = formattedDate;
                                      ref
                                          .read(selectedDateStateProvider
                                              .notifier)
                                          .state = showDate;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MoviesShowing(
                                                      showDate: showDate,
                                                      location:
                                                          location['name'])));
                                    });
                                  } else {
                                    print("Date is not selected");
                                  }
                                },
                              )
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: GestureDetector(
                                    onTap: () {
                                      CustomSnackBar.show(
                                          context: context,
                                          message: "Not Available",
                                          error: true);
                                    },
                                    child: Icon(
                                      Icons.place,
                                      color: theme.primaryColor,
                                    ),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              );
            },
          ).toList()
        ]),
      )),
    );
  }
}

class CinemaImage extends StatelessWidget {
  final String image;
  const CinemaImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          image,
          height: 150,
          width: 120,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
