import 'package:code_db_1st/models/CI_ES_Collection/es_c_database.dart';
import 'package:code_db_1st/models/CI_ES_Collection/popular_collections_data.dart';
import 'package:code_db_1st/models/CI_ES_Collection/popular_collections_db.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../models/CI_ES_Collection/es_collection_data.dart';

class CollectionWidget extends StatefulWidget {
  const CollectionWidget({super.key});

  @override
  State<CollectionWidget> createState() => _CollectionWidgetState();
}

class _CollectionWidgetState extends State<CollectionWidget> {
  List<ES_CData> esData = [];
  List<PopularData> pData = PopularDB().pdb();

  @override
  void initState() {
    ESDB esd = ESDB();
    esData = esd.getAllData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "LIKED COLLECTIONS",
                  style: TextStyle(
                      color: Colors.blueGrey.shade600,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Text(
                  "View all",
                  style: TextStyle(
                      color: Colors.indigo.shade400,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              dashPattern: const [5, 5],
              color: Colors.blueGrey.shade600,
              strokeWidth: 2,
              child: SizedBox(
                height: 44,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You haven't liked any collections yet.",
                      style: TextStyle(
                          color: Colors.blueGrey.shade600,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text(
                  "POPULAR CATEGORIES",
                  style: TextStyle(
                      color: Colors.blueGrey.shade600,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Text(
                  "View all",
                  style: TextStyle(
                      color: Colors.indigo.shade400,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 2, right: 2),
            height: 140,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: esData.length,
                itemBuilder: (context, int index) {
                  ES_CData e = esData[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 6, right: 6),
                    child: Center(
                      child: Container(
                        height: 140,
                        width: 165,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 45,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)),
                                  child: Image.asset(
                                    e.img,
                                    height: 45,
                                    width: double.infinity,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                e.title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blueGrey.shade600,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              ),
                              const Spacer(),
                              Text(
                                e.subtitle,
                                style: const TextStyle(
                                    color: Colors.blueGrey, fontSize: 14),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text(
                  "SIMILAR TO YOURS",
                  style: TextStyle(
                      color: Colors.blueGrey.shade600,
                      fontSize: 19,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Text(
                  "View all",
                  style: TextStyle(
                      color: Colors.indigo.shade400,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              dashPattern: const [5, 5],
              color: Colors.blueGrey.shade600,
              strokeWidth: 2,
              child: SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Add coins to you collections to get suggestions\nbased on your interests and collections",
                      style: TextStyle(
                          color: Colors.blueGrey.shade600,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 33,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text(
                  "EDITORIAL PICKS",
                  style: TextStyle(
                      color: Colors.blueGrey.shade600,
                      fontSize: 19,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Text(
                  "View all",
                  style: TextStyle(
                      color: Colors.indigo.shade400,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 270,
            margin: const EdgeInsets.only(left: 4, right: 4),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  height: 270,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16)),
                            color: Color(0xff51A2BD),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/coiniverse.png",
                                    height: 25,
                                    width: 25,
                                  )),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "coiniverse",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.5),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.indigoAccent.shade200,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/ES_Collection/Editorial_picks_bg/forest.jpeg",
                                  height: 110,
                                  width: 110,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                                child: Image.asset(
                                  "assets/ES_Collection/Editorial_picks_bg/coin_ep.png",
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              Positioned(
                                  top: 50,
                                  left: 70,
                                  bottom: 10,
                                  child: Image.asset(
                                    "assets/coiniverse.png",
                                    height: 25,
                                    width: 25,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 2.5,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(
                                  "Finnish Nation...",
                                  style: TextStyle(
                                      color: Colors.blueGrey.shade800,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ))),
                        const SizedBox(
                          height: 0.5,
                        ),
                        Text(
                          "Finland's national\nlandscapes symbolis...",
                          style: TextStyle(
                              color: Colors.blueGrey.shade600,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Divider(
                          height: 0.5,
                          color: Colors.blueGrey.shade500,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.euro_rounded,
                              size: 25,
                              color: Colors.blueGrey.shade600,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "9",
                              style: TextStyle(
                                  color: Colors.blueGrey.shade600,
                                  fontSize: 17),
                            ),
                            const SizedBox(
                              width: 28,
                            ),
                            const Icon(
                              Icons.heart_broken_outlined,
                              size: 25,
                              color: Colors.indigo,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("80",
                                style: TextStyle(
                                    color: Colors.blueGrey.shade600,
                                    fontSize: 17)),
                            const Spacer(),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  height: 270,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16)),
                            color: Color(0xff51A2BD),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/coiniverse.png",
                                    height: 25,
                                    width: 25,
                                  )),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "coiniverse",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.5),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.indigoAccent.shade200,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/ES_Collection/Editorial_picks_bg/mountains.jpg",
                                  height: 110,
                                  width: 110,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                                child: Image.asset(
                                  "assets/ES_Collection/Editorial_picks_bg/coin_ep.png",
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              Positioned(
                                  top: 50,
                                  left: 70,
                                  bottom: 10,
                                  child: Image.asset(
                                    "assets/coiniverse.png",
                                    height: 25,
                                    width: 25,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 2.5,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Text(
                                  "Finnish Presidents",
                                  style: TextStyle(
                                      color: Colors.blueGrey.shade800,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ))),
                        const SizedBox(
                          height: 0.5,
                        ),
                        Text(
                          "By the decision of the\nMinistry of Finance, Mi...",
                          style: TextStyle(
                              color: Colors.blueGrey.shade600,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Divider(
                          height: 0.5,
                          color: Colors.blueGrey.shade500,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.euro_rounded,
                              size: 25,
                              color: Colors.blueGrey.shade600,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "9",
                              style: TextStyle(
                                  color: Colors.blueGrey.shade600,
                                  fontSize: 17),
                            ),
                            const SizedBox(
                              width: 28,
                            ),
                            const Icon(
                              Icons.heart_broken_outlined,
                              size: 25,
                              color: Colors.indigo,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("74",
                                style: TextStyle(
                                    color: Colors.blueGrey.shade600,
                                    fontSize: 17)),
                            const Spacer(),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  height: 270,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16)),
                            color: Color(0xff51A2BD),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/coiniverse.png",
                                    height: 25,
                                    width: 25,
                                  )),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "coiniverse",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.5),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.indigoAccent.shade200,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/ES_Collection/Editorial_picks_bg/desert.jpg",
                                  height: 110,
                                  width: 110,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                                child: Image.asset(
                                  "assets/ES_Collection/Editorial_picks_bg/coin_ep.png",
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              Positioned(
                                  top: 50,
                                  left: 70,
                                  bottom: 10,
                                  child: Image.asset(
                                    "assets/coiniverse.png",
                                    height: 25,
                                    width: 25,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 2.5,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(
                                  "Special 2...",
                                  style: TextStyle(
                                      color: Colors.blueGrey.shade800,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ))),
                        const SizedBox(
                          height: 0.5,
                        ),
                        Text(
                          "Collection of special\nFinnish two-euro coins.",
                          style: TextStyle(
                              color: Colors.blueGrey.shade600,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Divider(
                          height: 0.5,
                          color: Colors.blueGrey.shade500,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.euro_rounded,
                              size: 25,
                              color: Colors.blueGrey.shade600,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "32",
                              style: TextStyle(
                                  color: Colors.blueGrey.shade600,
                                  fontSize: 17),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            const Icon(
                              Icons.heart_broken_outlined,
                              size: 25,
                              color: Colors.indigo,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("146",
                                style: TextStyle(
                                    color: Colors.blueGrey.shade600,
                                    fontSize: 17)),
                            const Spacer(),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text(
                  "Popular Collections",
                  style: TextStyle(
                      color: Colors.blueGrey.shade600,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  "View all",
                  style: TextStyle(
                      color: Colors.indigo.shade400,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Container(
            height: 270,
            margin: const EdgeInsets.only(left: 4, right: 4),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pData.length,
              itemBuilder: (context , int index){
                PopularData d = pData[index];
                return Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  height: 270,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16)),
                          color: Color(0xff51A2BD),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  d.tcImg,
                                  height: 25,
                                  width: 25,
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              d.name,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12.5),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Center(
                        child: Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.indigoAccent.shade200,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  d.bgImg,
                                  height: 110,
                                  width: 110,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                                child: Image.asset(
                                  "assets/ES_Collection/Editorial_picks_bg/coin_ep.png",
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              Positioned(
                                  top: 50,
                                  left: 70,
                                  bottom: 10,
                                  child: Image.asset(
                                    "assets/coiniverse.png",
                                    height: 25,
                                    width: 25,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 2.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text(
                          d.title,
                          style: TextStyle(
                              color: Colors.blueGrey.shade800,
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                      ),
                      const SizedBox(
                        height: 0.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          d.subtitle,
                          style: TextStyle(
                              color: Colors.blueGrey.shade600,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Divider(
                        height: 0.5,
                        color: Colors.blueGrey.shade500,
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(width: 5,),
                          Row(children: [
                            Icon(
                              Icons.euro_rounded,
                              size: 25,
                              color: Colors.blueGrey.shade600,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              d.d1,
                              style: TextStyle(
                                  color: Colors.blueGrey.shade600,
                                  fontSize: 17),
                            ),
                          ],
                          ),
                         Row(
                           children: [
                             const Icon(
                               Icons.heart_broken_outlined,
                               size: 25,
                               color: Colors.indigo,
                             ),
                             const SizedBox(
                               width: 5,
                             ),
                             Text(d.d2,
                                 style: TextStyle(
                                     color: Colors.blueGrey.shade600,
                                     fontSize: 17)),
                           ],
                         ),
                          const SizedBox(width: 5,),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 105,
          )
        ],
      ),
    );
  }
}
