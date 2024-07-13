import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Detail',
                    style:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 24.0),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                          color: const Color(0XffEAF1FF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'assets/images/back.png',
                        height: 22,
                        width: 22,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(14.0),
                    topRight: Radius.circular(14.0),
                    bottomLeft: Radius.circular(14.0),
                    bottomRight: Radius.circular(14.0)),
                child: Image.asset(
                  'assets/images/property3.jpeg',
                  height: 270.0,
                  width: 300.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'CRAFTSMAN HOUSE',
                              style: TextStyle(
                                color: Color(0XFF0F2F44),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '520 N Beaudry Ave, Los Angeles',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 214, 210, 210),
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                color: const Color(0XffEAF1FF),
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              'assets/images/bookmark.png',
                            ),
                          ),
                        )
                      ]),
                  Row(
                    children: [
                      const SizedBox(width: 5),
                      Image.asset(
                        './assets/images/bed-empty.png',
                        height: 24.0,
                        width: 24.0,
                      ),
                      const SizedBox(width: 5),
                      const Text('4',
                          style: TextStyle(
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
                      const Text('4',
                          style: TextStyle(
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
                      const Text('4',
                          style: TextStyle(
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
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // CircleAvatar(
                      //   radius: 30.0,
                      //   backgroundImage:
                      //       AssetImage('./assets/images/useravatar.jpeg'),
                      // ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(48),
                        child: Image.asset(
                          './assets/images/useravatar.jpeg',
                          height: 70.0,
                          width: 70.0,
                          fit: BoxFit.fill,
                        ),
                      ),

                      const SizedBox(
                        width: 8,
                      ),
                      const Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rebecca Tetha',
                            style: TextStyle(
                                color: Color(0XFF0F2F44),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700),
                          ),
                          Text('Owner Craftsman House',
                              style: TextStyle(
                                  color: Color(0XFF0F2F44),
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w700))
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 84,
                    decoration: BoxDecoration(
                        color: const Color(0XFF103144),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          size: 18,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Call',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 15),
                width: 300,
                constraints: const BoxConstraints(maxWidth: 300),
                child: const Text(
                  'Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras',
                  style: TextStyle(
                      color: Color(0XFF0F2F44),
                      fontSize: 12.0,
                      height: 1.5,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const Text(
                'Gallery',
                style: TextStyle(
                    color: Color(0XFF0F2F44),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(14.0),
                        topRight: Radius.circular(14.0),
                        bottomLeft: Radius.circular(14.0),
                        bottomRight: Radius.circular(14.0)),
                    child: Image.asset(
                      'assets/images/property.jpeg',
                      height: 65.0,
                      width: 65.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(14.0),
                        topRight: Radius.circular(14.0),
                        bottomLeft: Radius.circular(14.0),
                        bottomRight: Radius.circular(14.0)),
                    child: Image.asset(
                      'assets/images/property2.jpeg',
                      height: 65.0,
                      width: 65.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(14.0),
                        topRight: Radius.circular(14.0),
                        bottomLeft: Radius.circular(14.0),
                        bottomRight: Radius.circular(14.0)),
                    child: Image.asset(
                      'assets/images/property3.jpeg',
                      height: 65.0,
                      width: 65.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(14.0),
                        topRight: Radius.circular(14.0),
                        bottomLeft: Radius.circular(14.0),
                        bottomRight: Radius.circular(14.0)),
                    child: Image.asset(
                      'assets/images/property4.jpeg',
                      height: 65.0,
                      width: 65.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Price',
                style: TextStyle(
                    color: Color(0XFF0F2F44),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '\$5990000',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w800),
                  ),
                  Container(
                    height: 36,
                    width: 128,
                    decoration: BoxDecoration(
                        color: const Color(0XFF103144),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
