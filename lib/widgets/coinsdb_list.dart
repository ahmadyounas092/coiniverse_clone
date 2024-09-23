import 'package:flutter/material.dart';

class CoinsDBList extends StatefulWidget {
  const CoinsDBList({super.key});

  @override
  State<CoinsDBList> createState() => _CoinsDBListState();
}

class _CoinsDBListState extends State<CoinsDBList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 12,),
          child: Container(
            height: 220,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 14,),
                  Image.asset("assets/icons/coin.png", height: 85, width: 85,),
                  const SizedBox(height: 4,),
                  Text("20 Euro", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w600, fontSize: 18),),
                  const SizedBox(height: 3,),
                  const Text("2022\nItaly", style: TextStyle(color: Colors.blueGrey),),
                  const SizedBox(height: 16,),
                  Container(
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10,), bottomRight: Radius.circular(10)),
                      color: Colors.blueGrey.shade500
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("Commemorative", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
