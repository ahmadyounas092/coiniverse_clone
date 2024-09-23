import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CoinsList extends StatefulWidget {
  const CoinsList({super.key});

  @override
  State<CoinsList> createState() => _CoinsListState();
}

class _CoinsListState extends State<CoinsList> {
  final List c1Images = [Con1.IMG_ONE, Con1.IMG_TOW];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
          itemCount: 7,
          itemBuilder: (context, itemIndex, pageViewIndex) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                height: 305,
                width: 210,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 165,
                        width: double.infinity,
                        color: Colors.grey.shade50,
                        child: Align(
                          alignment: Alignment.center,
                          child: CarouselSlider(
                            items: c1Images.map((i){
                              return Builder(
                                  builder: (BuildContext context){
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(i, fit: BoxFit.cover,),
                                    );
                                  }
                              );
                            }).toList(),
                            options: CarouselOptions(
                              height: 165,
                              enableInfiniteScroll: false,
                              viewportFraction: 01
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4.5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 7.5),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Swissmint",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7.5),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Rhonegletscher, 10 CHF,\nproof",
                            style: TextStyle(
                                color: Colors.blueGrey.shade600,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 6,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: Colors.blueGrey.shade600,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                                children: const <TextSpan>[
                                  TextSpan(text: "F"),
                                  TextSpan(text: " 55.00"),
                                ]),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey.shade400,
                      ),
                      const SizedBox(height: 2,),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 9,
                            ),
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.red),
                              child: const Center(
                                  child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16,
                              )),
                            ),
                            const SizedBox(
                              width: 2.5,
                            ),
                            const Text(
                              "CHE",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 16),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.calendar_today_outlined,
                              color: Colors.blueGrey.shade200,
                              size: 12,
                            ),
                            const SizedBox(
                              width: 3.5,
                            ),
                            Text(
                              "2024",
                              style: TextStyle(
                                  color: Colors.blueGrey.shade600,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          options: CarouselOptions(
              height: 305,
              enableInfiniteScroll: true,
              viewportFraction: 0.57,
              enlargeStrategy: CenterPageEnlargeStrategy.height)),
    );
  }
}
