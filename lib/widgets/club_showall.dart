import 'package:flutter/material.dart';

class ClubShowAll extends StatefulWidget {
  const ClubShowAll({super.key});

  @override
  State<ClubShowAll> createState() => _ClubShowAllState();
}

class _ClubShowAllState extends State<ClubShowAll> {
  String selectedContainer = 'Club';
  bool club = true;
  bool showall = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Container(
        height: 35,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 2,),
            GestureDetector(
              onTap: (){
                setState(() {
                  selectedContainer = 'Club';
                });
              },
              child: Container(
                height: 27,
                width: 46,
                decoration: BoxDecoration(
                  color: selectedContainer == 'Club' ? Colors.white : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Club", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 16),),
                ),
              ),
            ),
            const SizedBox(width: 1,),
            GestureDetector(
              onTap: (){
                setState(() {
                  selectedContainer = 'Show all';
                });
              },
              child: Container(
                height: 27,
                width: 64,
                decoration: BoxDecoration(
                    color: selectedContainer == 'Show all' ? Colors.white : Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Show all", style: TextStyle(color: Colors.blueGrey.shade600, fontWeight: FontWeight.w500, fontSize: 16),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


