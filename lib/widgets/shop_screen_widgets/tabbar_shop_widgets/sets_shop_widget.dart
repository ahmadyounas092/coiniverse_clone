import 'package:carousel_slider/carousel_slider.dart';
import 'package:code_db_1st/models/Shop_Screen/all_tabBar_data/all_tb_db.dart';
import 'package:code_db_1st/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../models/Shop_Screen/all_tabBar_data/all_tb_data.dart';

class SetsShopWidget extends StatefulWidget {
  const SetsShopWidget({super.key});

  @override
  State<SetsShopWidget> createState() => _AllState();
}

class _AllState extends State<SetsShopWidget> {
  List<AtbData> atbD = AllTbDb().getAtbData();
  final List kImages = [AtBImages.AK1_1, AtBImages.AK1_2];
  Map<int, int> activeIndices = {};
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < atbD.length; i++) {
      activeIndices[i] = 0;
    }
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 265,
            mainAxisSpacing: 9,
        ),
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (context, index){
          AtbData at = atbD[index];
          return Container(
            margin: const EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                      color: Color(0xffF7F7F7)
                  ),
                  child: Column(
                    children: [
                      const Spacer(),
                      CarouselSlider(
                          items: kImages.map((i){
                            return Builder(builder: (BuildContext context){
                              return Image.asset(i);
                            });
                          }).toList(),
                          options: CarouselOptions(
                            enableInfiniteScroll: false,
                            height: 115,
                            enlargeCenterPage: true,
                            onPageChanged: (index, reason)=>
                                setState(() {
                                  activeIndices[atbD.indexOf(at)] = index;
                                }),
                          )
                      ),
                      buildIndicator(atbD.indexOf(at)),
                      const SizedBox(
                        height: 2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 4,
                      ),
                      Text(at.name, style: TextStyle(color: Colors.blueGrey.shade500, fontWeight: FontWeight.w400, fontSize: 14),),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(at.title, style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 15, fontWeight: FontWeight.w600),),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(at.subTitle, style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 16, fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Divider(
                  height: 0.5,
                  color: Colors.blueGrey.shade200,
                ),
                const Spacer(),
                Row(
                  children: [
                    const SizedBox(
                      width: 7.5,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(at.countryImage, height: 18, width: 18, fit: BoxFit.cover,)),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(at.countryTitle, style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w400, fontSize: 15),),
                    const Spacer(),
                    Icon(Icons.calendar_today_outlined, size: 15, color: Colors.blueGrey.shade600,),
                    const SizedBox(
                      width: 4,
                    ),
                    Text("2024", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 16, fontWeight: FontWeight.w400),),
                    const SizedBox(
                      width: 6,
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          );
        }
    );
  }
  Widget buildIndicator(int carouselIndex) => AnimatedSmoothIndicator(
    activeIndex: activeIndices[carouselIndex] ?? 0,
    count: kImages.length,
    effect: SlideEffect(
        dotHeight: 7,
        dotWidth: 7,
        dotColor: Colors.grey.shade300,
        activeDotColor: Colors.blueGrey.shade400
    ),
  );
}
