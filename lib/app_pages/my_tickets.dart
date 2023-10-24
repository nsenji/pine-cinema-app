
import 'package:flutter/material.dart';

class PlaceholderTickets extends StatefulWidget {
  const PlaceholderTickets({Key? key}) : super(key: key);

  @override
  State<PlaceholderTickets> createState() => _PlaceholderTicketsState();
}

class _PlaceholderTicketsState extends State<PlaceholderTickets> {
  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
      appBar: AppBar(
        title: const Text("PlaceholderTickets Tickets"),
        centerTitle: true,
      ),
      body: Stack(
          children: [
            Positioned(
                top: 5,
                right: 25,
                left: 20,
                child: Material(
                  child: Container(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    height: 75,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Row(children: [
                      Container(
                        padding: const EdgeInsets.only(right: 45),
                        height: 60,
                        width: 140,
                        child: const Column(
                          children: [
                            Text(
                              "DATE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 11),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'skhfk',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 15),
                        height: 60,
                        width: 80,
                        child: const Column(
                          children: [
                            Text(
                              "TIME",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 11),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('kshfsd',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15))
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 60,
                        padding: const EdgeInsets.only(left: 35),
                        child: const Column(
                          children: [
                            Text(
                              "TOTAL PRICE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 11),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "Ugx.37843",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    ))
                          ],
                        ),
                      )
                    ]),
                  ),
                )),
            Positioned(
                top: 80,
                right: 25,
                left: 20,
                child: SizedBox(
                  height: 1500,
                  child: ListView.builder(
                      padding: const EdgeInsets.only(top: 0),
                      itemCount:5,
                      itemBuilder: (_, index) {
                        return Container(
                          padding: const EdgeInsets.only(top: 0),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(top: 0),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      height:20,
                                      width: 10,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(10),
                                                  bottomRight: Radius.circular(10)))),
                                    ),
                                    Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: LayoutBuilder(
                                            builder: (BuildContext context,
                                                BoxConstraints constraints) {
                                              return Flex(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                mainAxisSize: MainAxisSize.max,
                                                direction: Axis.horizontal,
                                                children: List.generate(
                                                    (constraints.constrainWidth() / 15)
                                                        .floor(),
                                                        (index) => const SizedBox(
                                                      width: 5,
                                                      height: 1,
                                                      child: DecoratedBox(
                                                        decoration: BoxDecoration(
                                                            color: Color.fromARGB(
                                                                255, 0, 0, 0)),
                                                      ),
                                                    )),
                                              );
                                            },
                                          ),
                                        )),
                                    const SizedBox(
                                      height: 20,
                                      width: 10,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomLeft: Radius.circular(10)))),
                                    )
                                  ],
                                ),
                              ),
                              Center(
                                child: Material(
                                  child: SizedBox(
                                      height: 80,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 140,
                                            padding: const EdgeInsets.only(right: 10),
                                            child: const Column(
                                              children: [
                                                Text(
                                                  "SEAT NUMBER",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w300,
                                                      fontSize: 11),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                    "jjkfhfskd",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15))
                                              ],
                                            ),
                                          ),
                                          
                                            Container(
                                              padding: const EdgeInsets.only(left: 25),
                                              height: 60,
                                              width: 140,
                                              child: const Column(
                                                children: [
                                                  Text("PRICE",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.w300,
                                                          fontSize: 11)),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    34 <
                                                        21
                                                        ? "Ugx 10000"
                                                        : "Ugx 4000",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15,
                                                        ),
                                                  )
                                                ],
                                              ),
                                            ),
                                        ],
                                      )),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ))
          ])
      );
    }
  }
