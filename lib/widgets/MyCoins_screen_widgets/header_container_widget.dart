import 'package:flutter/material.dart';

class CoinsHeader extends StatefulWidget {
  const CoinsHeader({super.key});

  @override
  State<CoinsHeader> createState() => _CoinsHeaderState();
}

class _CoinsHeaderState extends State<CoinsHeader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: double.infinity,
        color: const Color(0xff2B66B6),
        child: Stack(
          children: [
            Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 120,
                  width: 122,
                  color: const Color(0xffFF8560),
                )
            ),
            Positioned(
                right: 0.1,
                top: -40,
                child: Container(
                  height: 120,
                  width: 122,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(95)),
                      color: Color(0xff51A2BD)
                  ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 82.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 77,
                    width: 77,
                    decoration: BoxDecoration(
                      color: const Color(0xff51A2BD),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Center(
                        child: Text("A", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 45),),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Icon(Icons.edit, color: Colors.grey.shade600, size: 27,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
