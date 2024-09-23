import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 26,),
        const Text("Explore Coiniverse Member mints", style: TextStyle(color: Colors.white, fontSize: 17),),
        const SizedBox(height: 17,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 0.5,),
            Container(
              height: 52,
              width: 124,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff206163)
              ),
              child: const Center(
                  child: Row(
    children: [
    SizedBox(width: 7,),
    Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Spacer(),
    Icon(Icons.circle, color: Colors.white, size: 13,),
    SizedBox(height: 1,),
    Text("THE PERTH MINT", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),),
    SizedBox(height: 1,),
    Text("AUSTRALIA", style: TextStyle(color: Colors.white, fontSize: 6, fontWeight: FontWeight.w400),),
    Spacer(),
    ],
    ),
    Spacer(),
    Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.white,),
    SizedBox(width: 3.5,),
    ],
    ),
    ),
            ),
            Container(
              height: 52,
              width: 124,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff206163)
              ),
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(width: 33,),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const Spacer(),
                            const Icon(Icons.password, color: Colors.black, size: 12,),
                            const SizedBox(height: 1.5,),
                            RichText(
                                text: const TextSpan(style: TextStyle(color: Colors.blueGrey, fontSize: 6),
                                children: <TextSpan>[
                                  TextSpan(text: "M"),
                                  TextSpan(text: "O", style: TextStyle(fontWeight: FontWeight.bold)),
                                  TextSpan(text: "NNAIE"),
                                  TextSpan(text: "\nDE "),
                                  TextSpan(text: "PARIS", style: TextStyle(fontWeight: FontWeight.bold)),
                                ]),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.white,),
                    const SizedBox(width: 3.5,),
                  ],
                ),
              ),
            ),
            Container(
              height: 52,
              width: 124,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff206163)
              ),
              child: const Center(
                child: Row(
                  children: [
                    Spacer(),
                    Icon(Icons.circle_notifications_outlined, size: 30, color: Colors.white,),
                    SizedBox(width: 3,),
                    Text("SOUTH\nAFRICAN MINT", style: TextStyle(color: Colors.white, fontSize: 6),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.white,),
                    SizedBox(width: 3.5,),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 0.5,)
          ],
        ),
        const SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 0.5,),
            Container(
              height: 52,
              width: 124,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff206163)
              ),
              child: const Center(
                child: Row(
                  children: [
                    SizedBox(width: 16,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.king_bed_outlined, color: Colors.white, size: 15,),
                        Text("M", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ],
                    ),
                    SizedBox(width: 3,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Real Casa de la Moneda", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 5),),
                        Text("Fabrica Nacional\n de Moneda y Timbre", style: TextStyle(color: Colors.white, fontSize: 4),),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.white,),
                    SizedBox(width: 3.5,),
                  ],
                ),
              ),
            ),
            Container(
              height: 52,
              width: 124,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff206163)
              ),
              child: const Center(
                child: Row(
                  children: [
                    SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Spacer(),
                        Text("P A M P.", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                        Text("Just For The Testing Purpose", style: TextStyle(color: Colors.white, fontSize: 4),),
                        Spacer(),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.white,),
                    SizedBox(width: 3.5,),
                  ],
                ),
              ),
            ),
            Container(
              height: 52,
              width: 124,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff206163)
              ),
              child: const Center(
                child: Row(
                  children: [
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        Icon(Icons.blur_circular, color: Colors.white, size: 30,),
                        Text("LITHUANIAN MINT", style: TextStyle(color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),),
                        Spacer(),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.white,),
                    SizedBox(width: 3.5,),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 0.5,)
          ],
        ),
        const SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 0.5,),
            Container(
              height: 52,
              width: 124,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff206163)
              ),
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(width: 15,),
                    Container(
                      height: 33, width: 33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white
                      ),
                      child: const Center(
                        child: Icon(Icons.kayaking, color: Colors.blueGrey, size: 30,),
                      ),
                    ),
                    const SizedBox(width: 1.5,),
                    const Text("MINT OF\nFINLAND", style: TextStyle(color: Colors.white, fontSize: 10),),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.white,),
                    const SizedBox(width: 3.5,),
                  ],
                ),
              ),
            ),
            Container(
              height: 52,
              width: 124,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff206163)
              ),
              child: const Center(
                child: Row(
                  children: [
                    SizedBox(width: 6.5,),
                    Icon(Icons.password, color: Colors.white, size: 15,),
                    SizedBox(width: 2,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("MUNZE", style: TextStyle(color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),),
                        Text("DEUTSCHLAND", style: TextStyle(color: Colors.white, fontSize: 8),)
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.white,),
                    SizedBox(width: 3.5,),
                  ],
                ),
              ),
            ),
            Container(
              height: 52,
              width: 124,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff206163)
              ),
              child: const Center(
                child: Row(
                  children: [
                    SizedBox(width: 20                                                                                                                                 ,),
                    Icon(Icons.check_box_outline_blank_outlined, color: Colors.white, size: 45,),
                    Text("POLIGRAFICO\nE ZECCA\nDELLO STATO\nITALIANO", style: TextStyle(color: Colors.white, fontSize: 5),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.white,),
                    SizedBox(width: 3.5,),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 0.5,)
          ],
        ),
        const SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 65,),
            Container(
              height: 52,
              width: 124,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff206163)
              ),
              child: const Center(
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 12,),
                        Icon(Icons.health_and_safety, color: Colors.white, size: 15,),
                        Spacer(),
                      ],
                    ),
                    SizedBox(width: 2,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 12,),
                        Text("Schweizerische Eidgenossenschaft\nConfédération suisse\nConfederazione Svizzera\nConfederaziun svizra", style: TextStyle(color: Colors.white, fontSize: 4),),
                        SizedBox(height: 4,),
                        Text("SWISSMINT", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 4),),
                        Spacer(),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.white,),
                    SizedBox(width: 3.5,),
                  ],
                ),
              ),
            ),
            Container(
              height: 52,
              width: 124,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff206163)
              ),
              child: const Center(
                child: Row(
                  children: [
                    SizedBox(width: 14,),
                    Text("VERAVALOR'", style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w300),),
                    SizedBox(width: 1,),
                    Icon(Icons.wifi, color: Colors.white, size: 11,),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.white,),
                    SizedBox(width: 3.5,),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 65,)
          ],
        ),
        const SizedBox(height: 50,),
      ],
    );
  }
}
