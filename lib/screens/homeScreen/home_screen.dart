import 'package:flutter/material.dart';
import 'package:propertymanagementapp/helpers/house_list.dart';
import 'package:propertymanagementapp/widgets/house_view_container.dart';
import 'package:propertymanagementapp/widgets/near_by_you_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int rowIndex = 0;
  List rowText = ['House', 'Apparment', 'Flot', 'Land'];

  // In another class

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 13.0, color: Color(0XFF0F2F44)),
                        ),
                        Text(
                          'Los,Angeles,CA',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0XFF0F2F44),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            color: const Color(0XffEAF1FF),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/images/bookmark.png',
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'Discover Best\nSuitable Property',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24.0),
                ),
                const SizedBox(
                  height: 18,
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: rowText.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              rowIndex = index;
                            });
                          },
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            margin: const EdgeInsets.only(right: 12.0),
                            height: 10.0,
                            // width: 90.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: index == rowIndex
                                    ? const Color(0XFF0F2F44)
                                    : const Color(0XFFEAF1FF)),
                            child: Center(
                              child: Text(
                                rowText[index],
                                style: TextStyle(
                                    color: index == rowIndex
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 16.0),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                showWidget(rowIndex)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget showWidget(int numb) {
  if (numb == 0) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Best For you',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 310,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: HouseList.houseList.length,
            itemBuilder: (context, index) {
              return HouseViewContainer(
                houseImage: HouseList.houseList[index]['image'],
                houseTitle: HouseList.houseList[index]['title'],
                houseDescription: HouseList.houseList[index]['description'],
                beds: HouseList.houseList[index]['beds'],
                baths: HouseList.houseList[index]['baths'],
                garage: HouseList.houseList[index]['garage'],
                isFav: HouseList.houseList[index]['isFav'],
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Nearby your location',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 5,
        ),
        Flexible(
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: HouseList.houseList.length,
              itemBuilder: (context, index) {
                return NearByYouContainer(
                  houseImage: HouseList.houseList[index]['image'],
                  houseTitle: HouseList.houseList[index]['title'],
                  houseDescription: HouseList.houseList[index]['description'],
                  beds: HouseList.houseList[index]['beds'],
                  baths: HouseList.houseList[index]['baths'],
                  garage: HouseList.houseList[index]['garage'],
                );
              }),
        )
      ],
    );
  } else {
    return Text('Condition is false');
  }
}
