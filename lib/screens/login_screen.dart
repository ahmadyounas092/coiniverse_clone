import 'package:code_db_1st/dashbaord.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forgot_screen/forgot_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: (){
          Navigator.pop(context);
        },
            child: Icon(Icons.arrow_back_ios, size: 30, color: Colors.blueGrey.shade700,)),
        title: Text("Login with email", style: TextStyle(color: Colors.blueGrey.shade700, fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            ),),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Align(alignment: Alignment.topLeft,
                  child: Text("Password",style: TextStyle(fontSize: 18, color: Colors.blueGrey.shade600, fontWeight: FontWeight.bold),)),
            ),
            const SizedBox(height: 8,),
            Padding(padding: const EdgeInsets.only(left: 16, right: 16),
              child: SizedBox(
                height: 50,
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
                    hintText: "Password",
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        show = !show;
                      });
                    }, icon: Icon(show ? Icons.remove_red_eye : Icons.visibility_off),),
                  ),
                  obscureText: show,
                ),
              ),),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const ForgetScreen()));
            },
              child: Padding(padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Forgot your password?", style: TextStyle(color: Colors.indigo.shade700, fontSize: 18, fontWeight: FontWeight.w500),),
              ),),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=>DashBoard()));
              },
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.green
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Login", style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.w500),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
