import 'package:flutter/material.dart';

class Club extends StatefulWidget {
  const Club({super.key});

  @override
  State<Club> createState() => _ClubState();
}

class _ClubState extends State<Club> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Container(
            height: 30,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                color: Colors.indigo.shade700
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 11,),
                Icon(Icons.king_bed_outlined, size: 17.5, color: Colors.orange,),
                SizedBox(width: 3.5,),
                Text("Club", style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
              color: Colors.white,
            ),
            child: Row(
              children: [
                const SizedBox(width: 17,),
                RichText(text: TextSpan(text: "Release Calendar",
                  style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 19, fontWeight: FontWeight.w600),
                  children: const <TextSpan>[
                    TextSpan(text: "\nFind all upcoming coins releases\nin one place.", style: TextStyle(fontSize: 12))
                  ],
                ),
                ),
                const Spacer(),
                Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: const LinearGradient(colors: [Colors.deepOrange, Colors.orangeAccent], begin: Alignment.topLeft, end: Alignment.bottomRight)
                  ),
                  child: const Icon(Icons.calendar_month, size: 34, color: Colors.white,),
                ),
                const SizedBox(width: 17,),
              ],
            ),
          ),
          const SizedBox(height: 7.5,),
        ],
      ),
    );
  }
}