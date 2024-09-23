import 'package:code_db_1st/widgets/explorerscreen_widget/explore_screen_collection.dart';
import 'package:code_db_1st/widgets/explorerscreen_widget/explorer_screen_coins.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade50,
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: const Color(0xffFF8560),
              child: Stack(
                children: [
                  Positioned(
                    top: -2,
                      right: -105,
                      child: Container(
                        height: 240,
                        width: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          color: const Color(0xff2B66B6)
                        ),
                      )),

                  const Column(
                    children: [
                      Spacer(),
                      Padding(padding: EdgeInsets.only(left: 18),
                        child: Text("114.803 coins\nto explore", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),),),
                      SizedBox(height: 18,),
                    ],
                  ),
                ],
              ),
            ),
             const SizedBox(
               height: 7.5,
             ),
             TabBar(
              labelPadding: const EdgeInsets.symmetric(vertical: 2),

              dividerColor: Colors.transparent,
              isScrollable:
              false, // Ensure all tabs are on a single line
              unselectedLabelColor:
              Colors.blueGrey.shade700, // Color for inactive tab bar options
              labelColor:
              const Color(0xff475A65), // Color for active tab bar option
              tabs: const [
                Text(
                  "Coins",
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xff475A65)),
                ),
                Text(
                  "Collections",
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xff475A65)),
                ),

              ],

            ),
            // const  SizedBox(
            //   height: 20,
            // ),
            const Expanded(
              child: TabBarView(
                children: [
                  ESCoins(),
                  CollectionWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
