import 'package:flutter/material.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: (){
          Navigator.pop(context);
        },
            child: Icon(Icons.arrow_back_ios, size: 30, color: Colors.blueGrey.shade700,)),
        title: Text("Reset Password", style: TextStyle(color: Colors.blueGrey.shade700, fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 22,),
          Center(
            child: Image.asset("assets/coiniverse.png",
              height: 80,
              width: 80,),
          ),
          const SizedBox(height: 5,),
          Text("coiniverse", style: TextStyle(color: Colors.blueGrey.shade700, fontSize: 22, fontWeight: FontWeight.w500),),
          const SizedBox(height: 45,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(alignment: Alignment.topLeft,
                child: Text("Email",style: TextStyle(fontSize: 18, color: Colors.blueGrey.shade600, fontWeight: FontWeight.bold),)),
          ),
          const SizedBox(height: 8,),
          Padding(padding: const EdgeInsets.only(left: 16, right: 16),
            child: SizedBox(
              height: 50,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(width: 2),
                    ),
                    hintText: "Email",
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            height: 42,
            margin: const EdgeInsets.symmetric(horizontal: 100,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.green,
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Text("Reset", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
            ),
          ),
        ],
      ),
    );
  }
}
