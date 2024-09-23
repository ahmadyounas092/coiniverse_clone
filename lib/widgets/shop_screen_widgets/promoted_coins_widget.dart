import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/constants.dart';

class PromotedCoins extends StatefulWidget {
  const PromotedCoins({super.key});

  @override
  State<PromotedCoins> createState() => _PromotedCoinsState();
}

class _PromotedCoinsState extends State<PromotedCoins> {
  Map<int, int> activeIndices = {};
  final List scImages = [Shopc1.IMG_ONE, Shopc1.IMG_TWO];
  @override
  void initState() {
    for(int i = 0; i < scImages.length; i++){
      activeIndices[i] = 0;
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 7,
      itemBuilder: (context, itemIndex, pageViewIndex) {
        return Container(
          width: 225,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 175,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  color: Color(0xffF7F7F7),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 25,
                        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 2),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50)),
                            color: Color(0xff084F51)),
                        child: const Text(
                          "Pre-order!",textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    CarouselSlider(
                      items: scImages.map((i){
                        return Builder(
                            builder: (BuildContext context){
                              return Center(
                                child: Image.asset(i,),
                              );
                            });
                      }
                      ).toList(),
                      options: CarouselOptions(
                          height: 140,
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true,
                          initialPage: 0,
                          onPageChanged: (index, reason)=>
                              setState(() {
                                activeIndices[itemIndex] = index;
                              })
                      ),
                    ),
                    const SizedBox(
                      height: 1.5,
                    ),
                    buildIndicator(itemIndex),
                  ],
                ),
              ),
              const SizedBox(
                height: 7.5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Munze Deutschland", style: TextStyle(color: Colors.blueGrey, fontSize: 14, fontWeight: FontWeight.w400),),
                    const SizedBox(
                      height: 2,
                    ),
                    Text('20 euro "75 Years of\nBasic Law"', style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 16, fontWeight: FontWeight.w500),),
                    const SizedBox(
                      height: 6,
                    ),
                    Text("38.95", style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 20, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Divider(
                height: 0.2,
                color: Colors.grey.shade400,
              ),
              const Spacer(),
              Center(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [Colors.black, Colors.red, Colors.yellow], begin: Alignment.topCenter),
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("DEU", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w300, fontSize: 18),),
                    const Spacer(),
                    Icon(Icons.calendar_today_outlined, size: 16, color: Colors.blueGrey.shade400,),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("2024", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize: 18),),
                    const SizedBox(
                      width: 6,
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        );
      },
      options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.6,
          enableInfiniteScroll: true,
          viewportFraction: 0.60,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          enlargeCenterPage: true),
    );
  }
  Widget buildIndicator(int carouselIndex) => AnimatedSmoothIndicator(
    activeIndex : activeIndices[carouselIndex] ?? 0,
    count: scImages.length,
    effect: SlideEffect(
        dotWidth: 7,
        dotHeight: 7,
        activeDotColor: Colors.blueGrey.shade400,
        dotColor: Colors.grey.shade300
    ),
  );
}
