import 'package:carousel_slider/carousel_slider.dart';
import 'package:code_db_1st/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MlcWidget extends StatefulWidget {
  const MlcWidget({super.key});

  @override
  State<MlcWidget> createState() => _MlcWidgetState();
}

class _MlcWidgetState extends State<MlcWidget> {
  int activeIndex = 0;
  int activeIndex1 = 0;
  int activeIndex2 = 0;
  int activeIndex3 = 0;
  final List mlc = [MlcC1.IMG_ONE, MlcC1.IMG_TWO];
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          height: 250,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.grey.shade300, offset: Offset(2, 2), blurRadius: 2)],
              color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                  color: Color(0xffF7F7F7),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    CarouselSlider(
                      items: mlc.map((i){
                        return Image.asset(i);
                      }).toList(),
                      options: CarouselOptions(
                        height: 110,
                        enableInfiniteScroll: false,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.height,
                        initialPage: 0,
                        onPageChanged: (index, reason)=>
                            setState(() {
                              activeIndex = index;
                            })
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    buildIndicator(),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    const Text("Monnaie de Paris", style: TextStyle(color: Colors.blueGrey, fontSize: 13, fontWeight: FontWeight.w400),),
                    const SizedBox(
                      height: 1,
                    ),
                    Text('Year of the dragon,\nHigh Relief 20€', style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 14, fontWeight: FontWeight.w500),),
                    const SizedBox(
                      height: 4,
                    ),
                    Text("€ 117.00", style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 17, fontWeight: FontWeight.w500),),
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
                          gradient: LinearGradient(colors: [Colors.indigo.shade900, Colors.white, Colors.white ,Colors.red.shade900], begin: Alignment.centerLeft),
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("FRA", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize: 14),),
                    const Spacer(),
                    Icon(Icons.calendar_today_outlined, size: 13, color: Colors.blueGrey.shade400,),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("2024", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize: 15),),
                    const SizedBox(
                      width: 6,
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          height: 250,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.grey.shade300, offset: Offset(2, 2), blurRadius: 2)],
              color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                  color: Color(0xffF7F7F7),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    CarouselSlider(
                      items: mlc.map((i){
                        return Image.asset(i);
                      }).toList(),
                      options: CarouselOptions(
                          height: 110,
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          initialPage: 0,
                          onPageChanged: (index, reason)=>
                              setState(() {
                                activeIndex1 = index;
                              })
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    buildIndicator1(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    const Text("Monnaie de Paris", style: TextStyle(color: Colors.blueGrey, fontSize: 13, fontWeight: FontWeight.w400),),
                    const SizedBox(
                      height: 1,
                    ),
                    Text('Year of the dragon,\nHigh Relief 20€', style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 14, fontWeight: FontWeight.w500),),
                    const SizedBox(
                      height: 4,
                    ),
                    Text("€ 117.00", style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 17, fontWeight: FontWeight.w500),),
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
                          gradient: LinearGradient(colors: [Colors.indigo.shade900, Colors.white, Colors.white ,Colors.red.shade900], begin: Alignment.centerLeft),
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("FRA", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize: 14),),
                    const Spacer(),
                    Icon(Icons.calendar_today_outlined, size: 13, color: Colors.blueGrey.shade400,),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("2024", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize: 15),),
                    const SizedBox(
                      width: 6,
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          height: 250,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.grey.shade300, offset: Offset(2, 2), blurRadius: 2)],
              color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                  color: Color(0xffF7F7F7),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    CarouselSlider(
                      items: mlc.map((i){
                        return Image.asset(i);
                      }).toList(),
                      options: CarouselOptions(
                          height: 110,
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          initialPage: 0,
                          onPageChanged: (index, reason)=>
                              setState(() {
                                activeIndex2 = index;
                              })
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    buildIndicator2(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    const Text("Monnaie de Paris", style: TextStyle(color: Colors.blueGrey, fontSize: 13, fontWeight: FontWeight.w400),),
                    const SizedBox(
                      height: 1,
                    ),
                    Text('Year of the dragon,\nHigh Relief 20€', style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 14, fontWeight: FontWeight.w500),),
                    const SizedBox(
                      height: 4,
                    ),
                    Text("€ 117.00", style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 17, fontWeight: FontWeight.w500),),
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
                          gradient: LinearGradient(colors: [Colors.indigo.shade900, Colors.white, Colors.white ,Colors.red.shade900], begin: Alignment.centerLeft),
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("FRA", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize: 14),),
                    const Spacer(),
                    Icon(Icons.calendar_today_outlined, size: 13, color: Colors.blueGrey.shade400,),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("2024", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize: 15),),
                    const SizedBox(
                      width: 6,
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10, left: 10),
          height: 250,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.grey.shade300, offset: Offset(2, 2), blurRadius: 2)],
              color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                  color: Color(0xffF7F7F7),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    CarouselSlider(
                      items: mlc.map((i){
                        return Image.asset(i);
                      }).toList(),
                      options: CarouselOptions(
                          height: 110,
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          initialPage: 0,
                          onPageChanged: (index, reason)=>
                              setState(() {
                                activeIndex3 = index;
                              })
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    buildIndicator3(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    const Text("Monnaie de Paris", style: TextStyle(color: Colors.blueGrey, fontSize: 13, fontWeight: FontWeight.w400),),
                    const SizedBox(
                      height: 1,
                    ),
                    Text('Year of the dragon,\nHigh Relief 20€', style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 14, fontWeight: FontWeight.w500),),
                    const SizedBox(
                      height: 4,
                    ),
                    Text("€ 117.00", style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 17, fontWeight: FontWeight.w500),),
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
                          gradient: LinearGradient(colors: [Colors.indigo.shade900, Colors.white, Colors.white ,Colors.red.shade900], begin: Alignment.centerLeft),
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("FRA", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize: 14),),
                    const Spacer(),
                    Icon(Icons.calendar_today_outlined, size: 13, color: Colors.blueGrey.shade400,),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("2024", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize: 15),),
                    const SizedBox(
                      width: 6,
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: mlc.length,
    effect: SlideEffect(
      dotHeight: 4,
      dotWidth: 4,
      dotColor: Colors.grey.shade300,
      activeDotColor: Colors.blueGrey.shade400
    ),
  );
  Widget buildIndicator1() => AnimatedSmoothIndicator(
    activeIndex: activeIndex1,
    count: mlc.length,
    effect: SlideEffect(
        dotHeight: 4,
        dotWidth: 4,
        dotColor: Colors.grey.shade300,
        activeDotColor: Colors.blueGrey.shade400
    ),
  );
  Widget buildIndicator2() => AnimatedSmoothIndicator(
    activeIndex: activeIndex2,
    count: mlc.length,
    effect: SlideEffect(
        dotHeight: 4,
        dotWidth: 4,
        dotColor: Colors.grey.shade300,
        activeDotColor: Colors.blueGrey.shade400
    ),
  );
  Widget buildIndicator3() => AnimatedSmoothIndicator(
    activeIndex: activeIndex3,
    count: mlc.length,
    effect: SlideEffect(
        dotHeight: 4,
        dotWidth: 4,
        dotColor: Colors.grey.shade300,
        activeDotColor: Colors.blueGrey.shade400
    ),
  );
}
