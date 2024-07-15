import 'package:flutter/material.dart';
import 'package:propertymanagementapp/helpers/house_list.dart';
import 'package:propertymanagementapp/widgets/house_view_container.dart';

class WhishlistScreen extends StatefulWidget {
  const WhishlistScreen({super.key});

  @override
  State<WhishlistScreen> createState() => _WhishlistScreenState();
}

class _WhishlistScreenState extends State<WhishlistScreen> {
  List<Map<String, dynamic>> wishListData =
      HouseList.houseList.where((item) => item['isFav'] == true).toList();

  removeFav({required int id}) {
    var item = HouseList.houseList.firstWhere((element) => element['id'] == id);
    item['isFav'] = false;
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Center(child: Text("Item Removed From Favorite")),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 18.0),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'WishList',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24.0),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
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
            height: 20,
          ),
          Expanded(
              child: wishListData.isNotEmpty
                  ? ListView.builder(
                      itemCount: wishListData.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 14),
                          child: HouseViewContainer(
                            houseImage: wishListData[index]['image'],
                            houseTitle: wishListData[index]['title'],
                            houseDescription: wishListData[index]
                                ['description'],
                            beds: wishListData[index]['beds'],
                            baths: wishListData[index]['baths'],
                            garage: wishListData[index]['garage'],
                            isFav: wishListData[index]['isFav'],
                            removeFav: () => setState(() {
                              removeFav(id: wishListData[index]['id']);
                              wishListData = [];
                            }),
                          ),
                        );
                      })
                  : const Center(
                      child: Text(
                      'No Item in WishList ✨',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700),
                    )))
        ]),
      ),
    ));
  }
}
