import 'package:flutter/material.dart';
import 'package:pine/app_pages/movies_showing.dart';
import 'package:intl/intl.dart';

import '../custom_widgets/cinemas_details_map.dart';
import '../custom_widgets/movieCard2.dart';
import '../custom_widgets/red_button_small.dart';

class Theatres extends StatefulWidget {
  const Theatres({super.key});

  @override
  State<Theatres> createState() => _TheatresState();
}

class _TheatresState extends State<Theatres> {
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
          style: textTheme.bodyLarge!.copyWith(fontSize: 20),
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
                          MovieCard2(
                            image: location['image'],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(
                                  location['name'],
                                  style: textTheme.bodyLarge!
                                      .copyWith(fontSize: 16),
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
                                text: 'Movies Showing',
                                width: 150,
                                onpressed: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      helpText:
                                          'Select date to show movies available that day',
                                          
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
                                  child: Icon(
                                    Icons.place,
                                    color: theme.primaryColor,
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
