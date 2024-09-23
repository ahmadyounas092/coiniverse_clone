import 'package:code_db_1st/widgets/MyCoins_screen_widgets/header_container_widget.dart';
import 'package:flutter/material.dart';

class MyCoinScreen extends StatefulWidget {
  const MyCoinScreen({super.key});

  @override
  State<MyCoinScreen> createState() => _MyCoinScreenState();
}

class _MyCoinScreenState extends State<MyCoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blueGrey.shade50,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
                child: CoinsHeader(),
              ),
              const SizedBox(
                height: 22.5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Ahmad Younis",
                      style: TextStyle(
                          color: Colors.blueGrey.shade600,
                          fontSize: 21,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "0 followers | 0 following",
                    style: TextStyle(
                        color: Colors.blueGrey.shade700,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 27.5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Badges",
                    style: TextStyle(
                        color: Colors.blueGrey.shade700,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You don't have any badges yet",
                    style: TextStyle(
                        color: Colors.blueGrey.shade700, fontSize: 13),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter your code",
                    style: TextStyle(
                        color: Colors.blueGrey.shade700,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xff465A65),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 12),
                        child: Row(
                          children: [
                            Icon(
                              Icons.badge,
                              size: 18,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 7.5,
                            ),
                            Text(
                              "Did you get a code?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Tap here to claim your code!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 342,
                margin: const EdgeInsets.only(left: 14, right: 14, top: 14),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 13,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          Container(
                            height: 28,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xff1E3D7D)
                            ),
                            child: const Center(
                              child: Row(
                                children: [
                                  Spacer(),
                                  Icon(Icons.king_bed, size: 15, color: Color(0xffDD9111),),
                                  Spacer(),
                                  Text("Club", style: TextStyle(color: Colors.white, fontSize: 15),),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Coin AI", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 22, fontWeight: FontWeight.w500),),
                          const SizedBox(
                            width: 12,
                          ),
                          Icon(Icons.info_outline, size: 28, color: Colors.blueGrey.shade600,),
                          const Spacer(),
                          Container(
                            height: 28,
                            width: 45,
                            decoration: BoxDecoration(
                              color: const Color(0xff9A9A9A),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: const Center(
                              child: Text("Beta", style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      margin: const EdgeInsets.only(left: 12, right: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 1, blurRadius: 7, offset: const Offset(3, 3))],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                  child: Text("History of coins", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 18),)),
                              const SizedBox(
                                height: 5,
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                  child: Text("What's the history behind the Morgan\nSilver Dollar?", style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w300),)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      margin: const EdgeInsets.only(left: 12, right: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 1, blurRadius: 7, offset: const Offset(3, 3))],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Tips on coin collecting", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 18),)),
                              const SizedBox(
                                height: 5,
                              ),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("How to catalog my coins?", style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w300),)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Divider(
                      height: 0.4,
                      color: Colors.grey.shade200,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 55,
                              width: 285,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(width: 1.5, color: Colors.black),
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12))
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black, width: 1.5),
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12))
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                                    borderSide: BorderSide(color: Colors.black, width: 1.5)
                                  ),
                                  hintText: "Ask me about coins!",
                                  hintStyle: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.w400, fontSize: 15)
                                ),
                              ),
                            ),
                            Container(
                              height: 42.5,
                              width: 65,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: const Center(
                                child: Icon(Icons.arrow_forward_ios_outlined, size: 28, color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(left: 14, right: 14),
                decoration: const BoxDecoration(
                  color: Color(0xffE8F0F8),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                ),
                child: Center(
                  child: Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 40,
                        ),
                        const Icon(Icons.gif_box, color: Colors.indigo, size: 20,),
                        const SizedBox(width: 3,),
                        RichText(
                          textAlign: TextAlign.center,
                            text: TextSpan(
                          style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 16, fontWeight: FontWeight.w500),
                          children: [
                            const TextSpan(text: "Enjoy three free questions, or "),
                            TextSpan(text: "upgrade to\nClub ", style: TextStyle(color: Colors.indigo.shade500)),
                            const TextSpan(text: "for unlimited access"),
                          ]
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Collections",
                    style: TextStyle(
                        color: Colors.blueGrey.shade600,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                child: Container(
                  height: 155,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff1E3D7D),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.king_bed, color: Color(0xffDD9111), size: 22,),
                              SizedBox(
                                width: 8,
                              ),
                              Text("Statistics & Values", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22),),
                            ],
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          const Text("Do you want to explore your collection\nstatistics and coin values?", style: TextStyle(color: Colors.white, fontSize: 15),),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 33,
                            width: 115,
                            decoration: BoxDecoration(
                              color: const Color(0xffFEB333),
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: const Center(
                              child: Text("Explore Club", style: TextStyle(color: Colors.white, fontSize: 16),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff51A2BD),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xff74B5C9),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Center(
                        child: Icon(Icons.menu, color: Colors.white, size: 40,),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("My Coins", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
                        SizedBox(
                          height: 5,
                        ),
                        Text("0 coins", style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_outlined, size: 30, color: Colors.white,),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffFF8560),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xffFE9D80),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Icon(Icons.star, color: Colors.white, size: 40,),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Wishlist", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("0 coins", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_outlined, size: 30, color: Colors.white,),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffFF5E80),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xffFE7D99),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Icon(Icons.favorite, color: Colors.white, size: 40,),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Likes", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("0 coins", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_outlined, size: 30, color: Colors.white,),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                child: Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(Icons.visibility_off_outlined, color: Colors.blueGrey.shade600, size: 23,),
                              const SizedBox(
                                width: 5,
                              ),
                              Text("Your Profile is private", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 20),),
                              const Spacer(),
                              const Icon(Icons.close, size: 36, color: Colors.blueGrey,),
                              const SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Set your profile as public if you want to share\nyour collections with other collectors", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize: 15),),
                          const SizedBox(
                            height: 5.5,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 15),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Go to settings",
                                style: TextStyle(color: Colors.indigo.shade400, fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "My Collections",
                    style: TextStyle(
                        color: Colors.blueGrey.shade600,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 12),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(0, 2))],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_circle_outline, size: 40, color: Colors.indigo.shade400,),
                        const SizedBox(
                          height: 2,
                        ),
                        Text("Add new collection", style: TextStyle(color: Colors.indigo.shade400, fontSize: 14, fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "BROWSE TEMPLATES",
                    style: TextStyle(
                        color: Colors.blueGrey.shade600,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 230,
                    width: 192,
                    margin: const EdgeInsets.only(left: 7.5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 1, offset: Offset(0, 1))]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 82.5,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                            child: Image.asset("assets/mycoins/Broswe_Templates/us1.jpg", height: 82.5, width: 230, fit: BoxFit.cover,),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text("50 US State Quarters -\nSILVER EDITION", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 14, fontWeight: FontWeight.w500),),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text("Silver edition of the United\nStates Mint's 50 State\nQuarters Program, that w...", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 12),),
                        ),
                        const SizedBox(
                          height: 7.5,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xff2B66B6)
                            ),
                            child: const Center(
                              child: Text("Activate", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 230,
                    width: 192,
                    margin: const EdgeInsets.only(right: 7.5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 1, offset: Offset(0, 1))]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 82.5,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                            child: Image.asset("assets/mycoins/Broswe_Templates/us2.jpg", height: 82.5, width: 230, fit: BoxFit.cover,),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text("50 US State Quarters", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 14, fontWeight: FontWeight.w500),),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text("Launched in 1999, the\nUnited States, Mint's 50\nState Qauarters Progra...", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 12),),
                        ),
                        const SizedBox(
                          height: 7.5,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: const Color(0xff2B66B6)
                            ),
                            child: const Center(
                              child: Text("Activate", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 230,
                    width: 192,
                    margin: const EdgeInsets.only(left: 7.5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 1, offset: Offset(0, 1))]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 82.5,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                            child: Image.asset("assets/mycoins/Broswe_Templates/ca.jpg", height: 82.5, width: 230, fit: BoxFit.cover,),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text("Canadian Toonies", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 14, fontWeight: FontWeight.w500),),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text('The Canadian two-dollar\ncoin, commonly called\nthe toonie. "Toonie" is a ...', style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 12),),
                        ),
                        const SizedBox(
                          height: 7.5,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: const Color(0xff2B66B6)
                            ),
                            child: const Center(
                              child: Text("Activate", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 230,
                    width: 192,
                    margin: const EdgeInsets.only(right: 7.5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 1, offset: Offset(0, 1))]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 82.5,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                            child: Image.asset("assets/mycoins/Broswe_Templates/finland.jpg", height: 82.5, width: 230, fit: BoxFit.cover,),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text("Finnish circulating coins", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 14, fontWeight: FontWeight.w500),),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text("To Complete the challange,\ncollect one of each Finnish\neuro circulating coin from ...", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 12),),
                        ),
                        const SizedBox(
                          height: 7.5,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: const Color(0xff2B66B6)
                            ),
                            child: const Center(
                              child: Text("Activate", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 230,
                    width: 192,
                    margin: const EdgeInsets.only(left: 7.5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 1, offset: Offset(0, 1))]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 82.5,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                            child: Image.asset("assets/mycoins/Broswe_Templates/qe.jpg", height: 82.5, width: 230, fit: BoxFit.cover,),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text("In memoriam: Queen\nElizabeth ||", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 14, fontWeight: FontWeight.w500),),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text("A collecting of coins with her\nmajesty's protrait on them.", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 12),),
                        ),
                        const SizedBox(
                          height: 7.5,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: const Color(0xff2B66B6)
                            ),
                            child: const Center(
                              child: Text("Activate", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 230,
                    width: 192,
                    margin: const EdgeInsets.only(right: 7.5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 1, offset: Offset(0, 1))]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 82.5,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                            child: Image.asset("assets/mycoins/Broswe_Templates/cc.jpg", height: 82.5, width: 230, fit: BoxFit.cover,),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text("€2 commemorative coins", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 14, fontWeight: FontWeight.w500),),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text("The most popular collectibles\nin Europe and you can find\none in your change! Explore...", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 12),),
                        ),
                        const SizedBox(
                          height: 7.5,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: const Color(0xff2B66B6)
                            ),
                            child: const Center(
                              child: Text("Activate", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: const Color(0xff084F51),
                child: const Padding(
                  padding: EdgeInsets.only(left: 30,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 17.5,
                      ),
                      Text("Terms of Use (EULA)", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),),
                      SizedBox(
                        height: 12.5,
                      ),
                      Text("Privacy policy", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400)),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
