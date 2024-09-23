import 'package:code_db_1st/widgets/shop_screen_widgets/mlc_widget.dart';
import 'package:code_db_1st/widgets/shop_screen_widgets/shop_categories_widget.dart';
import 'package:code_db_1st/widgets/shop_screen_widgets/shop_club_widget.dart';
import 'package:code_db_1st/widgets/shop_screen_widgets/promoted_coins_widget.dart';
import 'package:code_db_1st/widgets/shop_screen_widgets/shop_header_widget.dart';
import 'package:code_db_1st/widgets/shop_screen_widgets/tabbar_shop_widgets/bi-metallic_shop_widget.dart';
import 'package:code_db_1st/widgets/shop_screen_widgets/tabbar_shop_widgets/gold_shop_widget.dart';
import 'package:code_db_1st/widgets/shop_screen_widgets/tabbar_shop_widgets/sets_shop_widget.dart';
import 'package:code_db_1st/widgets/shop_screen_widgets/tabbar_shop_widgets/silver_shop_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/shop_screen_widgets/tabbar_shop_widgets/all_shop_widget.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});
  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> with SingleTickerProviderStateMixin {
  TabController? _builderPageController;
  late List<Widget> _tabs;
  late List<Tab> _tabItems;
  int selectedtabIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTabController();
    _setUpTabComponents();
    _preprareTabItems();

   // tabController = TabController(length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade50,
        body: SingleChildScrollView(child: _showWidgets()));
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.blueGrey.shade50,
  //     body: SingleChildScrollView(
  //       child: Container(
  //         height: double.infinity,
  //         child: Column(
  //           // mainAxisSize: MainAxisSize.min,
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             // const ShopHeaderWidget(),
  //             // const SizedBox(
  //             //   height: 20,
  //             // ),
  //             // Padding(
  //             //   padding: const EdgeInsets.only(left: 12),
  //             //   child: Align(
  //             //       alignment: Alignment.centerLeft,
  //             //       child: Text(
  //             //         "Promoted coins",
  //             //         style: TextStyle(
  //             //             color: Colors.blueGrey.shade700,
  //             //             fontWeight: FontWeight.w500,
  //             //             fontSize: 24),
  //             //       )),
  //             // ),
  //             // const SizedBox(
  //             //   height: 10,
  //             // ),
  //             // const SizedBox(
  //             //   height: 320,
  //             //   child: PromotedCoins(),
  //             // ),
  //             // const SizedBox(
  //             //   height: 20,
  //             // ),
  //             // const ShopCLub(),
  //             // const SizedBox(
  //             //   height: 24,
  //             // ),
  //             // Padding(
  //             //     padding: const EdgeInsets.only(left: 12),
  //             //   child: Align(
  //             //     alignment: Alignment.centerLeft,
  //             //     child: Text("Shops", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 25),),
  //             //   ),
  //             // ),
  //             // const SizedBox(
  //             //   height: 15,
  //             // ),
  //             // Padding(
  //             //     padding: const EdgeInsets.only(left: 10, right: 10),
  //             //   child: Container(
  //             //     height: 70,
  //             //     width: double.infinity,
  //             //     decoration: BoxDecoration(
  //             //       color: Colors.white,
  //             //       borderRadius: BorderRadius.circular(15),
  //             //       boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 2, offset: const Offset(0, 2))]
  //             //     ),
  //             //     child: Row(
  //             //       children: [
  //             //         const SizedBox(
  //             //           width: 10,
  //             //         ),
  //             //         Container(
  //             //           height: 53,
  //             //           width: 53,
  //             //           decoration: BoxDecoration(
  //             //             border: Border.all(width: 0.3, color: Colors.blueGrey.shade700),
  //             //             borderRadius: BorderRadius.circular(100)
  //             //           ),
  //             //           child: Icon(Icons.health_and_safety, color: Colors.red.shade600, size: 45,),
  //             //         ),
  //             //         const SizedBox(
  //             //           width: 11,
  //             //         ),
  //             //         Text("Swissmint", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 16, fontWeight: FontWeight.w500),),
  //             //         const Spacer(),
  //             //         Icon(Icons.arrow_forward_ios_outlined, color: Colors.blueGrey.shade600, size: 24,),
  //             //         const SizedBox(
  //             //           width: 9,
  //             //         ),
  //             //       ],
  //             //     ),
  //             //   ),
  //             // ),
  //             // const SizedBox(
  //             //   height: 24,
  //             // ),
  //             // Padding(
  //             //     padding: const EdgeInsets.only(left: 12, right: 12),
  //             //   child: Row(
  //             //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             //     children: [
  //             //       Text("Most liked coins", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 18),),
  //             //       Text("View more", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 16),),
  //             //     ],
  //             //   ),
  //             // ),
  //             // const SizedBox(
  //             //   height: 10,
  //             // ),
  //             // const SizedBox(
  //             //   height: 250,
  //             //   child: MlcWidget(),
  //             // ),
  //             // const SizedBox(
  //             //   height: 30,
  //             // ),
  //             // Padding(
  //             //   padding: const EdgeInsets.only(left: 12, right: 12),
  //             //   child: Row(
  //             //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             //     children: [
  //             //       Text("Categories", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 19),),
  //             //       Text("View more", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 16),),
  //             //     ],
  //             //   ),
  //             // ),
  //             // const SizedBox(
  //             //   height: 10,
  //             // ),
  //             // const SizedBox(
  //             //   height: 150,
  //             //   child: ShopCategoriesWidget(),
  //             // ),
  //             // const SizedBox(
  //             //   height: 22,
  //             // ),
  //             _showWidgets()
  //             // Align(
  //             //   alignment: Alignment.bottomLeft,
  //             //   child: TabBar(
  //             //     controller: tabController,
  //             //     indicatorSize: TabBarIndicatorSize.tab,
  //             //     tabAlignment: TabAlignment.start,
  //             //     labelPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 22),
  //             //     dividerColor: Colors.transparent,
  //             //     isScrollable: true, // Ensure all tabs are on a single line
  //             //     unselectedLabelColor: Colors.blueGrey.shade400, // Color for inactive tab bar options
  //             //     labelColor: Colors.blueGrey.shade600,
  //             //     indicatorColor: Colors.blueGrey.shade700,// Color for active tab bar option
  //             //     tabs: [
  //             //       Text(
  //             //         "All",
  //             //         style: TextStyle(
  //             //             fontSize: 19, fontWeight: FontWeight.w500, color: Colors.blueGrey.shade500),
  //             //       ),
  //             //       Text(
  //             //         "Gold",
  //             //         style: TextStyle(
  //             //             fontSize: 19, fontWeight: FontWeight.w500, color: Colors.blueGrey.shade500),
  //             //       ),
  //             //       Text(
  //             //         "Silver",
  //             //         style: TextStyle(
  //             //             fontSize: 19, fontWeight: FontWeight.w500, color: Colors.blueGrey.shade500),
  //             //       ),
  //             //       Text(
  //             //         "Bi-Metallic",
  //             //         style: TextStyle(
  //             //             fontSize: 19, fontWeight: FontWeight.w500, color: Colors.blueGrey.shade500),
  //             //       ),
  //             //       Text(
  //             //         "Sets",
  //             //         style: TextStyle(
  //             //             fontSize: 19, fontWeight: FontWeight.w500, color: Colors.blueGrey.shade500),
  //             //       ),
  //             //     ],
  //             //
  //             //   ),
  //             // ),
  //             // Center(
  //             //   child: Text("57 products", style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 14, fontWeight: FontWeight.w500),),
  //             // ),
  //             // const SizedBox(
  //             //   height: 12,
  //             // ),
  //             //  Expanded(
  //             //    child: TabBarView(
  //             //      controller: tabController,
  //             //                  //  physics: NeverScrollableScrollPhysics(),
  //             //      children: [
  //             //        All(),
  //             //        GoldShopWidget(),
  //             //        SilverShopWidget(),
  //             //        BimetallicShopWidget(),
  //             //        SetsShopWidget(),
  //             //      ],
  //             //    ),
  //             //  ),
  //
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }


  Column _showWidgets() {
    return Column(
      children: [
        const ShopHeaderWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Promoted coins",
                            style: TextStyle(
                                color: Colors.blueGrey.shade700,
                                fontWeight: FontWeight.w500,
                                fontSize: 24),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 320,
                      child: PromotedCoins(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ShopCLub(),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 12),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Shops", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 25),),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 2, offset: const Offset(0, 2))]
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 53,
                              width: 53,
                              decoration: BoxDecoration(
                                border: Border.all(width: 0.3, color: Colors.blueGrey.shade700),
                                borderRadius: BorderRadius.circular(100)
                              ),
                              child: Icon(Icons.health_and_safety, color: Colors.red.shade600, size: 45,),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            Text("Swissmint", style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 16, fontWeight: FontWeight.w500),),
                            const Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined, color: Colors.blueGrey.shade600, size: 24,),
                            const SizedBox(
                              width: 9,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Most liked coins", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 18),),
                          Text("View more", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 16),),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 250,
                      child: MlcWidget(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Categories", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 19),),
                          Text("View more", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 16),),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 150,
                      child: ShopCategoriesWidget(),
                    ),
                    const SizedBox(
                      height: 22,
                    ),


        SizedBox(
          height: 10,
        ),
        TabBar(
          tabs: _tabItems,
          controller: _builderPageController,
          indicatorSize: TabBarIndicatorSize.tab,
                          tabAlignment: TabAlignment.start,
                          labelPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 22),
                          dividerColor: Colors.transparent,
                          isScrollable: true, // Ensure all tabs are on a single line
                          unselectedLabelColor: Colors.blueGrey.shade400, // Color for inactive tab bar options
                          labelColor: Colors.blueGrey.shade600,
                          indicatorColor: Colors.blueGrey.shade700,// Color for active tab bar option
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 3.5),
            child: Builder(
              builder: (context) {
                return _tabs[selectedtabIndex];
              },
            )),
        const SizedBox(height: 5,),
      ],
    );
  }

  void _initTabController() {
    // inits Tabcontroller for Tabview
    _builderPageController = TabController(
      length: 5,
      vsync: this,
      initialIndex: selectedtabIndex,
    );
    _builderPageController?.addListener(() {
      // updated index and calls the set state
      // to switch the content of the tab based on the index clicked
      selectedtabIndex = _builderPageController!.index;
      setState(() {
        _builderPageController?.index;
      });
    });
  }

  void _setUpTabComponents() {
    // sets up Tab headers
    _tabItems = [
      Tab(child:  Text(
                        "All",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500, color: Colors.blueGrey.shade500),
                      )),
      Tab(child: Text(
        "Gold",
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.w500, color: Colors.blueGrey.shade500),
      )),
      Tab(child:Text(
        "Silver",
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.w500, color: Colors.blueGrey.shade500),
      )),
      Tab(child:Text(
        "Bi-Metallic",
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.w500, color: Colors.blueGrey.shade500),
      )),
      Tab(child:Text(
        "Sets",
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.w500, color: Colors.blueGrey.shade500),
      )),
    ];
  }

  List<Widget> _preprareTabItems() {
    // views to show on each tab
    // remove height once you add your contents
    return _tabs = <Widget>[
      All(),
                         GoldShopWidget(),
                         SilverShopWidget(),
                         BimetallicShopWidget(),
                         SetsShopWidget(),
    ];
  }


}
