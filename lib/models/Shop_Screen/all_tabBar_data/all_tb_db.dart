import 'package:code_db_1st/models/Shop_Screen/all_tabBar_data/all_tb_data.dart';

class AllTbDb{
  List<AtbData> getAtbData(){
    List<AtbData> atd = [];
    AtbData at1 = AtbData("The Perth Mint", "Australian Kookabura\n2024 2oz Silver Proof Hi...", "AU\$ 268.99", "assets/shop_images/atb_images/af-12.jpg", "AUS");
    atd.add(at1);
    AtbData at2 = AtbData("The Perth Mint", "Australian Kookabura\n2024 5oz Silver Proof Hi...", "AU\$ 268.99", "assets/shop_images/atb_images/af-12.jpg", "AUS");
    atd.add(at2);
    AtbData at3 = AtbData("The Perth Mint", "Honey Bee 2024 2 Kilo\nSilver Antiqued High R...", "AU\$ 268.99", "assets/shop_images/atb_images/af-12.jpg", "AUS");
    atd.add(at3);
    AtbData at4 = AtbData("Swissmint", "Rosenlaui, 10 CHF,\nincirculated", "F 20.00", "assets/shop_images/atb_images/swf.png", "CHE");
    atd.add(at4);
    AtbData at5 = AtbData("Swissmint", "Birthday coin set 2024,\nblack, BU", "F 50.00", "assets/shop_images/atb_images/swf.png", "CHE");
    atd.add(at5);
    AtbData at6 = AtbData("Swissmint", "Rosenlaui, 10 CHF, unc,\ncoin box", "F 65.00", "assets/shop_images/atb_images/swf.png", "CHE");
    atd.add(at6);
    AtbData at7 = AtbData("Swissmint", "Mani Matter, 20 CHF,\nproof", "F 75.00", "assets/shop_images/atb_images/swf.png", "CHE");
    atd.add(at7);
    AtbData at8 = AtbData("Swissmint", "Titlis, 20 CHF, proof\n   ", "F 75.00", "assets/shop_images/atb_images/swf.png", "CHE");
    atd.add(at8);
    AtbData at9 = AtbData("Swissmint", "SSV, 20 CHF, proof\n   ", "F 75.00", "assets/shop_images/atb_images/swf.png", "CHE");
    atd.add(at9);
    AtbData at10 = AtbData("Swissmint", "Birthday coin set 2024,\ncoloured, BU", "F 50.00", "assets/shop_images/atb_images/swf.png", "CHE");
    atd.add(at10);
    return atd;
  }
}