import 'package:code_db_1st/models/Shop_Screen/Cat_data.dart';
import 'package:code_db_1st/models/Shop_Screen/cat_db.dart';
import 'package:flutter/material.dart';

class ShopCategoriesWidget extends StatefulWidget {
  const ShopCategoriesWidget({super.key});

  @override
  State<ShopCategoriesWidget> createState() => _ShopCategoriesWidgetState();
}

class _ShopCategoriesWidgetState extends State<ShopCategoriesWidget> {
  List<csData> csD = CatDb().getAllData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 12),
      scrollDirection: Axis.horizontal,
      itemCount: csD.length,
        itemBuilder: (context, index){
        csData cD = csD[index];
        return Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Container(
            height: 150,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 2, offset: const Offset(0, 2))],
            ),
            child: Column(
              children: [
                Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),
                    child: Image.asset(cD.img, width: double.infinity, height: 38, fit: BoxFit.fill,),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(cD.title, style: TextStyle(color: Colors.blueGrey.shade700, fontWeight: FontWeight.w500, fontSize: 17),),
                const Spacer(),
                Text(cD.subTitle, style: TextStyle(color: Colors.blueGrey.shade500, fontSize: 15, fontWeight: FontWeight.w400),),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        );
        }
    );
  }
}
