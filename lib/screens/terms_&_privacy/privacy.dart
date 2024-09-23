import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){ Navigator.pop(context);}, child: const Icon(Icons.arrow_back_ios, size: 30,),
        ),
      ),
      body: const Center(
        child: Text("Privacy", style: TextStyle(decoration: TextDecoration.none, color: Colors.greenAccent, fontWeight: FontWeight.bold, fontSize: 20),),
      ),
    );
  }
}
