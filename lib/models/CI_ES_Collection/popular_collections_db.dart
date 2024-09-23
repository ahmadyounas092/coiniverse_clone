import 'package:code_db_1st/models/CI_ES_Collection/popular_collections_data.dart';

class PopularDB {
  List<PopularData> pdb() {
    List<PopularData> pData = [];
    PopularData p1 = PopularData(
        "coiniverse",
        "Special 2...",
        "Collection of special\nFinnish two-euro coins.",
        "assets/coiniverse.png",
        "assets/ES_Collection/Editorial_picks_bg/desert.jpg",
        "32",
        "146");
    pData.add(p1);
    PopularData p2 = PopularData(
        "Touho",
        "Euro (€) coins",
        "Euro coins in my\ncollection...",
        "assets/coiniverse.png",
        "assets/ES_Collection/Editorial_picks_bg/desert.jpg",
        "220",
        "108");
    pData.add(p2);
    PopularData p3 = PopularData(
        "No Common Cents",
        "50 State Quarters",
        "I started off collecting\nUS Quarters when vi...",
        "assets/coiniverse.png",
        "assets/ES_Collection/Editorial_picks_bg/desert.jpg",
        "50",
        "82");
    pData.add(p3);
    PopularData p4 = PopularData(
        "coiniverse",
        "Finnish Nation...",
        "Finland's national\nlandscapes symbolis...",
        "assets/coiniverse.png",
        "assets/ES_Collection/Editorial_picks_bg/desert.jpg",
        "9",
        "80");
    pData.add(p4);
    PopularData p5 = PopularData(
        "coiniverse",
        "Finnish Presidents",
        "By the decision of the\nMinistry of Finance, Mi...",
        "assets/coiniverse.png",
        "assets/ES_Collection/Editorial_picks_bg/desert.jpg",
        "9",
        "74");
    pData.add(p5);
    PopularData p6 = PopularData(
        "coincollectoraaron",
        "World coins",
        "My collection of world\ncoins",
        "assets/coiniverse.png",
        "assets/ES_Collection/Editorial_picks_bg/desert.jpg",
        "63",
        "69");
    pData.add(p6);
    PopularData p7 = PopularData(
        "Touho",
        "Dollar (\$) coins",
        "My collection of US\nDollar coins",
        "assets/coiniverse.png",
        "assets/ES_Collection/Editorial_picks_bg/desert.jpg",
        "9",
        "57");
    pData.add(p7);
    return pData;
  }
}
