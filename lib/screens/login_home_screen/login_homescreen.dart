import 'package:code_db_1st/widgets/club.dart';
import 'package:code_db_1st/widgets/club_showall.dart';
import 'package:code_db_1st/widgets/coinsdb_list.dart';
import 'package:code_db_1st/widgets/cointypes_list.dart';
import 'package:code_db_1st/widgets/explorecoin_screen.dart';
import 'package:code_db_1st/widgets/header_container.dart';
import 'package:flutter/material.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blueGrey.shade50,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderContainer(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 2,
                  ),
                  Container(
                    height: 90,
                    width: 182,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey.shade700),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 1,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Icon(
                                    Icons.money,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "COINS IN COLLECTION",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.5),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 182,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey.shade700),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 1,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Icon(
                                    Icons.money,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "COINS IN WISHLIST",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.5),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                ],
              ),
              const SizedBox(
                height: 12.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 2,
                  ),
                  Container(
                    height: 90,
                    width: 182,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey.shade700),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 1,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Icon(
                                    Icons.money,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "BADGES  EARNED",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.5),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 182,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey.shade300),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Spacer(),
                          Icon(
                            Icons.king_bed_sharp,
                            color: Colors.orangeAccent,
                            size: 25,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "UNLOCK FOR",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "COLLECTION VALUE",
                            style: TextStyle(color: Colors.white),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New products",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 27,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "view more",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const CoinsList(),
              const SizedBox(
                height: 20,
              ),
              const Club(),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "News and highlights",
                  style: TextStyle(
                      color: Colors.blueGrey.shade600,
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const ClubShowAll(),
              const SizedBox(
                height: 8,
              ),
              Container(
                margin: const EdgeInsets.only(left: 2.5, right: 2.5),
                height: 182,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Container(
                          height: 180,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 99,
                                width: 250,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  child: Image.asset(
                                    "assets/gold_coin.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "A Hidden Gem Among\nGold Investment Coins",
                                    style: TextStyle(
                                        color: Colors.blueGrey.shade600,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    height: 25,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.purple.shade200,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Article",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 14,
                  ),
                  Text(
                    "New coins in database",
                    style: TextStyle(
                        color: Colors.blueGrey.shade700,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Text(
                    "View more",
                    style: TextStyle(
                        color: Colors.blueGrey.shade600,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                height: 220,
                width: double.infinity,
                child: CoinsDBList(),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                color: const Color(0xff074F51),
                child: const Center(
                  child: ExploreScreen(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
