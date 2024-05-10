import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pine/common_widgets/cast_and_crew_avatar.dart';
import 'package:pine/common_widgets/get_genre_from_list.dart';
import 'package:pine/common_widgets/red_button.dart';
import 'package:pine/common_widgets/time_chip.dart';
import 'package:pine/features/cinema/presentation/seatArea/select_seats.dart';
import 'package:pine/features/movies/data/list_of_movies.dart';

class MovieDetailsCinema extends StatefulWidget {
  final Map movie;
  const MovieDetailsCinema({super.key, required this.movie});

  @override
  State<MovieDetailsCinema> createState() => _InCinemaDetailsShowingState();
}

class _InCinemaDetailsShowingState extends State<MovieDetailsCinema> {
  var maxlines = true;
  @override
  Widget build(BuildContext context) {
    List? castList = widget.movie["cast"];

    var theme = Theme.of(context);
    var screenHeight = MediaQuery.of(context).size.height;
    var stackHeight = screenHeight * 0.48;
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
                                        builder: (context) =>
                                            const SelectSeats()));
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
                      bottom: stackHeight * 0.20,
                      child: CachedNetworkImage(
                          imageUrl: widget.movie["Poster_Url"],
                          fit: BoxFit.cover,
                          progressIndicatorBuilder: (context, url,
                                  downloadProgress) =>
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: LinearProgressIndicator(
                                      value: downloadProgress.progress),
                                ),
                              )),
                    ),
                    Positioned(
                        bottom: 0,
                        top: (stackHeight) - stackHeight * 0.20,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 17, left: 155),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.movie["Title"],
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
                    Positioned(
                        bottom: 0,
                        left: 20,
                        child:
                            DetailsMovieCard(image: widget.movie["Poster_Url"]))
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
                      widget.movie["Overview"],
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
                              widget.movie["Vote_Average"].toString(),
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
                              getGenre(widget.movie["Genre"]),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: castList == null
                            ? nullCast
                                .map((name) => Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Column(
                                        children: [
                                          CastAndCrewCard(
                                            image:
                                                'assets/images/placeholder.jpg',
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          SizedBox(
                                              width: 70,
                                              child: Text(
                                                name,
                                                style: theme
                                                    .textTheme.bodyMedium!
                                                    .copyWith(fontSize: 13),
                                                textAlign: TextAlign.center,
                                              ))
                                        ],
                                      ),
                                    ))
                                .toList()
                            : castList
                                .map((name) => Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CastAndCrewCard(
                                            image:
                                                'assets/images/placeholder.jpg',
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          SizedBox(
                                              width: 70,
                                              child: Text(
                                                name,
                                                style: theme
                                                    .textTheme.bodyMedium!
                                                    .copyWith(fontSize: 13),
                                                textAlign: TextAlign.center,
                                              ))
                                        ],
                                      ),
                                    ))
                                .toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
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

class DetailsMovieCard extends StatelessWidget {
  final String image;
  const DetailsMovieCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: CachedNetworkImage(
            height: 150,
            width: 120,
            imageUrl: image,
            fit: BoxFit.cover,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: LinearProgressIndicator(
                        value: downloadProgress.progress),
                  ),
                )),
      ),
    );
  }
}
