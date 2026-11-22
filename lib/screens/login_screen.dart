import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/widgets/common_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              mainAxisAlignment: .start,
              spacing: 20,
              children: [
                Text(
                  "Login here",
                  style: GoogleFonts.shantellSans(
                    color: Colors.deepOrange,
                    fontSize: 28,
                    fontWeight: .bold,
                  ),

                  // style: TextStyle(
                  //   color: Colors.deepOrange,
                  //   fontSize: 28,
                  //   fontWeight: .bold,
                  // ),
                ),
                Text(
                  "Welcome back you've \n been missed!",
                  textAlign: .center,
                  style: TextStyle(fontWeight: .bold, fontSize: 20),
                ),
                SizedBox(height: 20),
                CommonTextfield(hintText: "Email", controller: emailController),
                CommonTextfield(
                  hintText: "Password",
                  controller: passwordController,
                  isPassword: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forget your password?",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Login"),
                          duration: Duration(seconds: 2),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(fontWeight: .bold, fontSize: 16),
                    ),
                  ),
                ),
                Text(
                  "Create a new account",
                  style: TextStyle(fontWeight: .w500),
                ),
                SizedBox(height: 20),
                Text(
                  "or Continue with",
                  style: TextStyle(color: Colors.deepOrange, fontWeight: .w500),
                ),
                Row(
                  mainAxisAlignment: .center,
                  spacing: 10,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: FaIcon(FontAwesomeIcons.google),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: FaIcon(FontAwesomeIcons.facebook),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: FaIcon(FontAwesomeIcons.apple),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
