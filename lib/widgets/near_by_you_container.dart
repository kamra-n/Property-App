import 'package:flutter/material.dart';

class NearByYouContainer extends StatefulWidget {
  final String houseImage;
  final String houseTitle;
  final String houseDescription;
  final String beds;
  final String baths;
  final String garage;
  const NearByYouContainer(
      {super.key,
      required this.houseImage,
      required this.houseTitle,
      required this.houseDescription,
      required this.beds,
      required this.baths,
      required this.garage});

  @override
  State<NearByYouContainer> createState() => _NearByYouContainerState();
}

class _NearByYouContainerState extends State<NearByYouContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14.0),
                bottomLeft: Radius.circular(14.0),
                topRight: Radius.circular(14.0),
                bottomRight: Radius.circular(14.0)),
            child: Image.asset(
              widget.houseImage,
              height: 100.0,
              width: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 100.0,
            width: 210.0,
            decoration: const BoxDecoration(
                color: Color(0XFFEAF1FF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14.0),
                    bottomLeft: Radius.circular(14.0),
                    topRight: Radius.circular(14.0),
                    bottomRight: Radius.circular(14.0))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.houseTitle,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.houseDescription,
                    style: const TextStyle(
                        color: Color(0XFF0F2F44),
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 5),
                      Image.asset(
                        './assets/images/bed-empty.png',
                        height: 14.0,
                        width: 14.0,
                      ),
                      const SizedBox(width: 5),
                      Text(widget.beds,
                          style: const TextStyle(
                              color: Color(0XFF0F2F44),
                              fontSize: 9.0,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(width: 5),
                      const Text('Beds',
                          style: TextStyle(
                              color: Color(0XFF0F2F44),
                              fontSize: 9.0,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(width: 5),
                      Image.asset(
                        './assets/images/bath.png',
                        height: 14.0,
                        width: 14.0,
                      ),
                      const SizedBox(width: 5),
                      Text(widget.baths,
                          style: const TextStyle(
                              color: Color(0XFF0F2F44),
                              fontSize: 9.0,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(width: 5),
                      const Text('Baths',
                          style: TextStyle(
                              color: Color(0XFF0F2F44),
                              fontSize: 9.0,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(width: 5),
                      Image.asset(
                        './assets/images/car.png',
                        height: 14.0,
                        width: 14.0,
                      ),
                      const SizedBox(width: 5),
                      Text(widget.garage,
                          style: const TextStyle(
                              color: Color(0XFF0F2F44),
                              fontSize: 9.0,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(width: 5),
                      const Text('Garage',
                          style: TextStyle(
                              color: Color(0XFF0F2F44),
                              fontSize: 9.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
