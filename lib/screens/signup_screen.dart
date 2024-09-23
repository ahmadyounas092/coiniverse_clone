import 'package:code_db_1st/dashbaord.dart';
import 'package:code_db_1st/screens/terms_&_privacy/privacy.dart';
import 'package:code_db_1st/screens/terms_&_privacy/terms.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool show = true;
  bool check = false;
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blueGrey.shade700,
            size: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                        color: Colors.blueGrey.shade600,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Container(
                    color: Colors.white,
                    height: 52,
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
                        prefixIcon: const Icon(Icons.perm_identity, size: 30,),
                        hintText: "Name"
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Container(
                    color: Colors.white,
                    height: 52,
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
                        prefixIcon: const Icon(Icons.email_outlined, size: 30,),
                        hintText: "Email",
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Container(
                    color: Colors.white,
                    height: 52,
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
                        prefixIcon: const Icon(Icons.key, size: 30,),
                        hintText: "Password",
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            show = !show;
                          });
                        }, icon: Icon(show ? Icons.remove_red_eye : Icons.visibility_off_outlined)),
                      ),
                      obscureText: show,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text("Must contain at least", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Checkbox(value: check,
                              shape: const CircleBorder(),
                              onChanged: (bool ? value){
                            setState(() {
                              check = !check;
                            });
                          }),
                          const SizedBox(width: 10,),
                          const Text("8 characters", style: TextStyle(fontSize: 16),),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.zero,
                            child: Checkbox(value: check1,
                                shape: const CircleBorder(),
                                onChanged: (bool ? value){
                                  setState(() {
                                    check1 = !check1;
                                  });
                                }),
                          ),
                          const SizedBox(width: 10,),
                          const Text("8 characters", style: TextStyle(fontSize: 16),),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(value: check2,
                              shape: const CircleBorder(),
                              onChanged: (bool ? value){
                                setState(() {
                                  check2 = !check2;
                                });
                              }),
                          const SizedBox(width: 10,),
                          const Text("8 characters", style: TextStyle(fontSize: 16),),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(value: check3,
                              shape: const CircleBorder(),
                              onChanged: (bool ? value){
                                setState(() {
                                  check3 = !check3;
                                });
                              }),
                          const SizedBox(width: 10,),
                          const Text("8 characters", style: TextStyle(fontSize: 16),),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(value: check4,
                              shape: const CircleBorder(),
                              onChanged: (bool ? value){
                                setState(() {
                                  check4 = !check4;
                                });
                              }),
                          const SizedBox(width: 10,),
                          const Text("1 special character", style: TextStyle(fontSize: 16),),
                        ],
                      ),
                      const SizedBox(height: 12,),
                    ],
                  ),
                ),
                const SizedBox(height: 12,),
                Row(
                  children: [
                    const SizedBox(width: 45,),
                    const Text("Keep me informed with the latest news and\nupdates from Coiniverse! I can change this\nanytime in the settings"),
                    const Spacer(),
                    Checkbox(value: check5, onChanged: (bool ? value){
                      setState(() {
                        check5 = !check5;
                      });
                    }),
                    const SizedBox(width: 2,),

                  ],
                ),
                const SizedBox(height: 7.5,)
              ],
            ),
          ),

          Container(
            height: 175,
            color: Colors.purple.shade50,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 18,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context)=> const DashBoard()));
                    },
                    child: Container(
                      height: 45,
                      margin: const EdgeInsets.symmetric(horizontal: 105,),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                          child: Text("Create account", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  const SizedBox(height: 28,),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: const TextStyle(color: Colors.black,),
                        children: <TextSpan>[
                          const TextSpan(text: "By signing up you agree to our",),
                          TextSpan(text: 'Terms\nand Conditions', style: const TextStyle(decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer() .. onTap = ()=> clickText(),
                          ),
                          const TextSpan(text: ' and '),
                          TextSpan(text: 'Privacy Policy',style: const TextStyle(decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer() ..onTap = ()=> pText()),
                        ]
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  void clickText(){
    Navigator.push(context,
        MaterialPageRoute(builder: (context)=> const Terms()));
  }
  void pText(){
    Navigator.push(context,
        MaterialPageRoute(builder: (context)=> const Privacy()));
  }
}
