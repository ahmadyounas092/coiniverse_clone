import 'package:flutter/material.dart';
import 'package:code_db_1st/screens/login_screen.dart';
import 'package:code_db_1st/screens/signup_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40),
                Container(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/coiniverse.png",
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(height: 7.5),
                const Text(
                  "coiniverse",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 70),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue.shade700,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      "Login with email",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpScreen()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo, width: 2.5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      "Register with email",
                      style: TextStyle(color: Colors.indigo, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "or",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade200,
                    boxShadow: [BoxShadow(color: Colors.grey.shade300, offset: const Offset(0, 3))],
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 12),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          "assets/google.png",
                          height: 25,
                          width: 25,
                        ),
                      ),
                      SizedBox(width: 13),
                      const Expanded(
                        child: Text(
                          "Sign in with Google",
                          style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 17),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.shade700,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [BoxShadow(color: Colors.grey.shade300, offset: const Offset(0, 2))],
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 12),
                      Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Image.asset(
                          "assets/facebook.png",
                          height: 35,
                          width: 35,
                        ),
                      ),
                      SizedBox(width: 18.5),
                      const Expanded(
                        child: Text(
                          "Sign in with Facebook",
                          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
