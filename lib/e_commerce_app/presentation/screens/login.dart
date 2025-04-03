import 'package:flutter/material.dart';
import 'package:practice_app/e_commerce_app/presentation/widgets/button.dart';
import 'package:practice_app/e_commerce_app/presentation/widgets/input_text.dart';
import 'package:practice_app/e_commerce_app/presentation/widgets/logo.dart';
import 'package:practice_app/e_commerce_app/theme/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(bgLogoColor: primary, logoColor: Colors.white),

            SizedBox(height: 10),

            Text(
              "Welcome to E-com",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),

            SizedBox(height: 10),

            Text(
              "Sign in to continue",
              style: TextStyle(fontSize: 10, color: greyAdapter),
            ),

            SizedBox(height: 30),

            InputText(hintText: "Your Email", icon: Icons.email_outlined),
            SizedBox(height: 10),
            InputText(hintText: "Password", icon: Icons.lock_outline),

            SizedBox(height: 15),

            Button(textButton: "Sign In"),

            SizedBox(height: 12),

            _OrText(),

            SizedBox(height: 12),

            Button(
              icon: Icon(
                Icons.g_translate_outlined,
                size: 25,
                color: Color(0xff1876d2),
              ),
              textButton: "Login with Google",
              bgColor: Colors.white,
              textColor: greyAdapter,
            ),

            SizedBox(height: 10),

            Button(
              icon: Icon(
                Icons.facebook_outlined,
                size: 25,
                color: Color(0xff4092ff),
              ),
              textButton: "Login with Facebook",
              bgColor: Colors.white,
              textColor: greyAdapter,
            ),

            SizedBox(height: 10),

            GestureDetector(
              onTap: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ),

            SizedBox(height: 3),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: greyAdapter, fontSize: 10),
                ),
                SizedBox(width: 2),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _OrText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Divider(color: greyAdapter2),
          ),
        ),
        SizedBox(width: 15),
        Text(
          "OR",
          style: TextStyle(
            color: greyAdapter,
            fontWeight: FontWeight.w900,
            fontSize: 12,
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Divider(color: greyAdapter2),
          ),
        ),
      ],
    );
  }
}
