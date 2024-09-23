import 'package:flutter/material.dart';

class ShopHeaderWidget extends StatefulWidget {
  const ShopHeaderWidget({super.key});

  @override
  State<ShopHeaderWidget> createState() => _ShopHeaderWidgetState();
}

class _ShopHeaderWidgetState extends State<ShopHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: const Color(0xff084F51),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: 75,
              width: 120,
              color: const Color(0xffFF8560),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 125,
              width: 120,
              decoration: const BoxDecoration(
                color: Color(0xff2B66B6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12, bottom: 10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Shop",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
