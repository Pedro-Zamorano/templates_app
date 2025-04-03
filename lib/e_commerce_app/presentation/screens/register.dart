import 'package:flutter/material.dart';
import 'package:practice_app/e_commerce_app/presentation/widgets/button.dart';
import 'package:practice_app/e_commerce_app/presentation/widgets/input_text.dart';
import 'package:practice_app/e_commerce_app/presentation/widgets/logo.dart';
import 'package:practice_app/e_commerce_app/theme/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              "Let's Get Started",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),

            SizedBox(height: 10),

            Text(
              "Create an new account",
              style: TextStyle(fontSize: 10, color: greyAdapter),
            ),

            SizedBox(height: 30),

            InputText(hintText: "Full Name", icon: Icons.person_outline),
            SizedBox(height: 10),
            InputText(hintText: "Your Email", icon: Icons.email_outlined),
            SizedBox(height: 10),
            InputText(hintText: "Password", icon: Icons.lock_outline),
            SizedBox(height: 10),
            InputText(hintText: "Password Again", icon: Icons.lock_outline),

            SizedBox(height: 15),

            Button(textButton: "Sign Up"),

            SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have an account?",
                  style: TextStyle(color: greyAdapter, fontSize: 10),
                ),
                SizedBox(width: 2),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Sign In",
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
