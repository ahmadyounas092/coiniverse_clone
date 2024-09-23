import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Terms & Conditions'),
          titleTextStyle: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
          centerTitle: true,
          leading: GestureDetector(
            onTap: (){ Navigator.pop(context);}, child: const Icon(Icons.arrow_back_ios, size: 30,),
          ),
        ),
     body:  const Center(
      child: Text("Terms", style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold, fontSize: 20, decoration: TextDecoration.none),),
      )
    );
  }
}
