import 'package:flutter/material.dart';

class HouseViewContainer extends StatefulWidget {
  final String houseImage;
  final String houseTitle;
  final String houseDescription;
  final String beds;
  final String baths;
  final String garage;
  final bool? isFav;

  const HouseViewContainer(
      {super.key,
      required this.houseImage,
      required this.houseTitle,
      required this.houseDescription,
      required this.beds,
      required this.baths,
      required this.garage,
      this.isFav});

  @override
  State<HouseViewContainer> createState() => _HouseViewContainerState();
}

class _HouseViewContainerState extends State<HouseViewContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(14.0),
                  topRight: Radius.circular(14.0)),
              child: Image.asset(
                widget.houseImage,
                height: 180.0,
                width: 305.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 130.0,
              width: 305.0,
              decoration: const BoxDecoration(
                  color: Color(0XFF0E3146),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14.0),
                      bottomRight: Radius.circular(14.0))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.houseTitle,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Visibility(
                              visible: widget.isFav!,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 29.0,
                                  height: 29.0,
                                  decoration: BoxDecoration(
                                      color: const Color(0XffEAF1FF),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset(
                                    'assets/images/smallbookmark.png',
                                  ),
                                ),
                              ))
                        ]),
                    Text(
                      widget.houseDescription,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 214, 210, 210),
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 5),
                        Image.asset(
                          './assets/images/bed-empty.png',
                          height: 24.0,
                          width: 24.0,
                        ),
                        const SizedBox(width: 5),
                        Text(widget.beds,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 214, 210, 210),
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500)),
                        const SizedBox(width: 5),
                        const Text('Beds',
                            style: TextStyle(
                                color: Color.fromARGB(255, 214, 210, 210),
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500)),
                        const SizedBox(width: 5),
                        Image.asset(
                          './assets/images/bath.png',
                          height: 24.0,
                          width: 24.0,
                        ),
                        const SizedBox(width: 5),
                        Text(widget.baths,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 214, 210, 210),
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500)),
                        const SizedBox(width: 5),
                        const Text('Baths',
                            style: TextStyle(
                                color: Color.fromARGB(255, 214, 210, 210),
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500)),
                        const SizedBox(width: 5),
                        Image.asset(
                          './assets/images/car.png',
                          height: 24.0,
                          width: 24.0,
                        ),
                        const SizedBox(width: 5),
                        Text(widget.garage,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 214, 210, 210),
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500)),
                        const SizedBox(width: 5),
                        const Text('Garage',
                            style: TextStyle(
                                color: Color.fromARGB(255, 214, 210, 210),
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500)),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
