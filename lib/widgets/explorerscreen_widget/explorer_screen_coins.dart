import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ESCoins extends StatefulWidget {
  const ESCoins({super.key});

  @override
  State<ESCoins> createState() => _ESCoinsState();
}

class _ESCoinsState extends State<ESCoins> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            CupertinoButton(
                child: Text(
                  "BY LOCATION",
                  style: TextStyle(
                      color: Colors.blueGrey.shade600,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {}),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 125,
                  width: 123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: Colors.blueGrey.shade600, width: 0.8),
                        ),
                        child: CircleAvatar(
                            backgroundColor: Colors.grey.shade100,
                            radius: 35,
                            child: Image.asset(
                              "assets/ES_Coins/EU.png",
                              height: 62,
                              width: 62,
                            )),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Europe",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Container(
                  height: 125,
                  width: 123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blueGrey.shade600, width: 0.8),
                            borderRadius: BorderRadius.circular(100)),
                        child: CircleAvatar(
                            backgroundColor: Colors.grey.shade100,
                            radius: 35,
                            child: Image.asset(
                              "assets/ES_Coins/Aisa.png",
                              height: 55,
                              width: 55,
                            )),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Asia",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Container(
                  height: 125,
                  width: 123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blueGrey.shade600, width: 0.8),
                            borderRadius: BorderRadius.circular(100)),
                        child: CircleAvatar(
                            backgroundColor: Colors.grey.shade100,
                            radius: 35,
                            child: Image.asset(
                              "assets/ES_Coins/AM.png",
                              height: 55,
                              width: 52,
                            )),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "America",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 125,
                  width: 123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blueGrey.shade600, width: 0.8),
                            borderRadius: BorderRadius.circular(100)),
                        child: CircleAvatar(
                            backgroundColor: Colors.grey.shade100,
                            radius: 35,
                            child: Image.asset(
                              "assets/ES_Coins/OC.png",
                              height: 62,
                              width: 62,
                            )),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Oceania",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Container(
                  height: 125,
                  width: 123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blueGrey.shade600, width: 0.8),
                            borderRadius: BorderRadius.circular(100)),
                        child: CircleAvatar(
                            backgroundColor: Colors.grey.shade100,
                            radius: 35,
                            child: Image.asset(
                              "assets/ES_Coins/Africa.png",
                              height: 55,
                              width: 55,
                            )),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Africa",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Container(
                  height: 125,
                  width: 123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blueGrey.shade600, width: 0.8),
                            borderRadius: BorderRadius.circular(100)),
                        child: CircleAvatar(
                            backgroundColor: Colors.grey.shade100,
                            radius: 35,
                            child: Image.asset(
                              "assets/ES_Coins/universal.png",
                              height: 50,
                              width: 50,
                            )),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "A-Z",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff1E3D7D)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 3),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Coin Value",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 21),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.close,
                              size: 35,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Interested in the coin value?\nSubscribe nad get access to this\nand other Pro feautures",
                          style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 30),
                          height: 65,
                          width: 90,
                          child: Image.asset("assets/market_graph.jpg", height: 65, width: 90,),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 35,
                        width: 105,
                        decoration: BoxDecoration(
                          color: const Color(0xffF3A21B),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text("Explore Coin", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text("BY CATEGORY", style: TextStyle(color: Colors.blueGrey.shade500, fontSize: 20, fontWeight: FontWeight.w500),),
            const SizedBox(height: 17.5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 125,
                  width: 123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blueGrey.shade600, width: 0.8),
                            borderRadius: BorderRadius.circular(100)),
                        child: CircleAvatar(
                            backgroundColor: Colors.grey.shade100,
                            radius: 35,
                            child: const Icon(Icons.settings, color: Colors.blueGrey, size: 50,)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Recently Added",
                        style: TextStyle(
                            color: Colors.blueGrey.shade600,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Container(
                  height: 125,
                  width: 123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blueGrey.shade600, width: 0.8),
                            borderRadius: BorderRadius.circular(100)),
                        child: CircleAvatar(
                            backgroundColor: Colors.grey.shade100,
                            radius: 35,
                            child: const Icon(Icons.access_time, color: Colors.blueGrey, size: 50,)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Time Period",
                        style: TextStyle(
                            color: Colors.blueGrey.shade600,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Container(
                  height: 125,
                  width: 123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blueGrey.shade600, width: 0.8),
                            borderRadius: BorderRadius.circular(100)),
                        child: CircleAvatar(
                            backgroundColor: Colors.grey.shade100,
                            radius: 35,
                            child: const Icon(Icons.share_location, size: 50, color: Colors.blueGrey,)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Historical regions",
                        style: TextStyle(
                            color: Colors.blueGrey.shade600,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 125),
          ],
        ),
      ),
    );
  }
}
