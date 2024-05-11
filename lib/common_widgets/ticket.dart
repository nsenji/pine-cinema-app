import 'package:flutter/material.dart';

class Ticket extends StatefulWidget {
  const Ticket({super.key});

  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          elevation: 4,
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xFFEF5B6B),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Century Cinemax',
                    style: theme.textTheme.labelLarge!
                        .copyWith(color: Colors.white),
                  ),
                  Image.asset(
                    'assets/images/tickets.png',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 255, 235, 238),
          height: 70,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 17),
            child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('MOVIE', style: theme.textTheme.labelSmall),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'The prestige',
                          style: theme.textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
                              color: const Color(0xFF4D4C4C)),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DATE',
                          style: theme.textTheme.labelSmall,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Wed, 22-07-2024',
                          style: theme.textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                              color: const Color(0xFF4D4C4C)),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 0),
          color: const Color.fromARGB(255, 255, 235, 238),
          child: Row(
            children: [
              SizedBox(
                height: 30,
                width: 20,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: theme.scaffoldBackgroundColor,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15)))),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Flex(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      direction: Axis.horizontal,
                      children: List.generate(
                          (constraints.constrainWidth() / 15).floor(),
                          (index) => const SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              )),
                    );
                  },
                ),
              )),
              SizedBox(
                height: 30,
                width: 20,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: theme.scaffoldBackgroundColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15)))),
              )
            ],
          ),
        ),
        Material(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
          elevation: 4,
          child: Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 235, 238),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            height: 70,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 15),
              child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('PRICE', style: theme.textTheme.labelSmall),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Ugx. 234456',
                            style: theme.textTheme.bodyMedium!.copyWith(
                                fontWeight: FontWeight.w900,
                                fontSize: 17,
                                color: theme.primaryColor),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'TIME',
                              style: theme.textTheme.labelSmall,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '10:30 pm',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                  color: const Color(0xFF4D4C4C)),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'SEAT NUMBER',
                                  style: theme.textTheme.labelSmall,
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '99',
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      color: const Color(0xFF4D4C4C)),
                                  overflow: TextOverflow.ellipsis,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        )
      ],
    );
  }
}
