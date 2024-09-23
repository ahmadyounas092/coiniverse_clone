import 'package:code_db_1st/models/Shop_Screen/Cat_data.dart';
import 'package:code_db_1st/utils/constants.dart';

class CatDb{
  List<csData> getAllData(){
    List<csData> cData = [];
    csData c1 = csData(CatShop.IMG_ONE, "Buy Directly on\nCoiniverse", "3 coins");
    cData.add(c1);
    csData c2 = csData(CatShop.IMG_TWO, "2024 new releases", "9 coins");
    cData.add(c2);
    csData c3 = csData(CatShop.IMG_THREE, "Colored coins", "6 coins");
    cData.add(c3);
    csData c4 = csData(CatShop.IMG_FOUR, "Gold coins", "12 coins");
    cData.add(c4);
    return cData;
  }
}