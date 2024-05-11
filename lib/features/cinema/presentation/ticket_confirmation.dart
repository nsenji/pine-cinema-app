import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pine/common_widgets/red_button.dart';
import 'package:pine/features/cinema/controllers/seat_selection_controller.dart';

class TicketConfirmation extends ConsumerStatefulWidget {
  final Map movie;
  const TicketConfirmation({super.key, required this.movie});

  @override
  ConsumerState<TicketConfirmation> createState() => _TicketConfirmationState();
}

class _TicketConfirmationState extends ConsumerState<TicketConfirmation> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: true,
        title: Text(
          'Century Cinemax',
          style: textTheme.bodyLarge!.copyWith(fontSize: 22),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
        child: Button(
          text: 'Confirm',
          onpressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => ()));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  child: CachedNetworkImage(
                      imageUrl: widget.movie["Poster_Url"],
                      fit: BoxFit.cover,
                      progressIndicatorBuilder: (context, url,
                              downloadProgress) =>
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: LinearProgressIndicator(
                                  value: downloadProgress.progress),
                            ),
                          )),
                  height: 300,
                ),
                Container(
                  height: 20,
                  width: double.maxFinite,
                  color: Color.fromARGB(255, 255, 235, 238),
                ),
                Container(
                  color: Color.fromARGB(255, 255, 235, 238),
                  padding: EdgeInsets.only(top: 0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 10,
                        child: const DecoratedBox(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)))),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max, //Builder here
                              direction: Axis.horizontal,
                              children: List.generate(
                                  (constraints.constrainWidth() / 15).floor(),
                                  (index) => SizedBox(
                                        //try changing this back to a sized box
                                        width: 5,
                                        height: 1,
                                        child: const DecoratedBox(
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                      )),
                            );
                          },
                        ),
                      )),
                      SizedBox(
                        height: 20,
                        width: 10,
                        child: const DecoratedBox(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)))),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: ref.watch(seatSelectionProvider).length,
                (_, index) {
              return Container(
                padding: EdgeInsets.only(top: 0),
                child: Column(
                  children: [
                    Center(
                      child: Material(
                        child: Container(
                            color: Color.fromARGB(255, 255, 235, 238),
                            height: 80,
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 140,
                                  padding: EdgeInsets.only(right: 10),
                                  child: Column(
                                    children: [
                                      const Text(
                                        "SEAT NUMBER",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                          ref
                                              .watch(
                                                  seatSelectionProvider)[index]
                                              .toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15))
                                    ],
                                  ),
                                ),
                                Expanded(child: Container()),
                                Container(
                                  padding: EdgeInsets.only(left: 25),
                                  height: 60,
                                  width: 140,
                                  child: Column(
                                    children: [
                                      const Text("PRICE",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11)),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        ref.watch(seatSelectionProvider)[
                                                    index] <
                                                20
                                            ? "Ugx 15000"
                                            : "Ugx 10000",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 255, 235, 238),
                      padding: EdgeInsets.only(top: 0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 20,
                            width: 10,
                            child: const DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                          ),
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max, //Builder here
                                  direction: Axis.horizontal,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 15)
                                          .floor(),
                                      (index) => SizedBox(
                                            //try changing this back to a sized box
                                            width: 5,
                                            height: 1,
                                            child: const DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0)),
                                            ),
                                          )),
                                );
                              },
                            ),
                          )),
                          SizedBox(
                            height: 20,
                            width: 10,
                            child: const DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10)))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ]),
      ),
    );
  }
}
