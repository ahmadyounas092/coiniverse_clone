import 'package:flutter/material.dart';

class HeaderContainer extends StatefulWidget {
  const HeaderContainer({super.key});

  @override
  State<HeaderContainer> createState() => _Header_ContainerState();
}

class _Header_ContainerState extends State<HeaderContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: const Color(0xff074F51),
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 7.5,
            right: -116,
            child: Container(
              height: 225,
              width: 225,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                color: const Color(0xffFF8561),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xff51A2BD),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "A",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 47,
                      width: 47,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.lightBlue.shade50),
                      child: Icon(
                        Icons.notifications,
                        size: 30,
                        color: Colors.blueGrey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Hello Ahmad Younis!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
