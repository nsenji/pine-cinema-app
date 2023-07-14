import 'package:flutter/material.dart';

class Money extends StatelessWidget {
  String location;
  Money({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          top: 20,
          right: 25,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage("assets/images/avatar.jpg"),
                    fit: BoxFit.cover)),
            height: 300,
          )),
      Positioned(
          top: 320,
          right: 25,
          left: 20,
          child: Material(
            color: Colors.black,
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                padding: EdgeInsets.only(top: 10, left: 10),
                height: 75,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 45),
                        height: 60,
                        // width: AppLayout.getWidth(140),
                        child: Column(
                          children: [
                            const Text(
                              "DATE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 11),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'date',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      // Expanded(child: Container()),
                      Container(
                        padding: EdgeInsets.only(right: 15),
                        height: 60,
                        // width: AppLayout.getWidth(60),
                        child: Column(
                          children: [
                            const Text(
                              "TIME",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 11),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            const Text('14:30',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15))
                          ],
                        ),
                      ),
                      // Expanded(child: Container()),
                      Container(
                        // width: AppLayout.getWidth(130),
                        height: 60,
                        padding: EdgeInsets.only(left: 35),
                        child: Column(
                          children: [
                            const Text(
                              "TOTAL PRICE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 11),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                location == "METROPLEX NAALYA"
                                    ? "Ugx.353443"
                                    : "Ugx.35434",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ))
                          ],
                        ),
                      )
                    ]),
              );
            }),
          )),
      Positioned(
          top: 465,
          right: 25,
          left: 20,
          child: SizedBox(
            height: 265,
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 0),
                itemCount: 5,
                itemBuilder: (_, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 10,
                                child: const DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10)))),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.all(12),
                                child: LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    return Flex(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize:
                                          MainAxisSize.max, //Builder here
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
                            child: Container(
                                height: 80,
                                color: Colors.white,
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
                                          Text("34",
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
                                            '45345',
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
                        )
                      ],
                    ),
                  );
                }),
          )),
      Positioned(
        right: 24,
        top: 600,
        left: 20,
        child: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => Money(
                          location: location,
                        )))),
            child: const Text("PAYMENT"),
          ),
        ),
      ),
    ]);
  }
}
