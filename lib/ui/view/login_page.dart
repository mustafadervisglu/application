import 'package:application/colors/colors.dart';
import 'package:application/ui/view/home_screen.dart';
import 'package:application/ui/view/register_page.dart';
import 'package:application/widgets/app_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_button.dart';
import '../../widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool checkInformation = true;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const AppBarIcon(data: "Login"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Column(
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w800,
                      fontSize: 24),
                ),
                Text(
                  "Please sign in to continue.",
                  style: TextStyle(fontFamily: "Nunito", fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 7.5),
            Column(
              children: [
                const CustomTextField(
                  labelText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.email_outlined,
                ),
                const CustomTextField(
                  labelText: 'Password',
                  obscureText: true,
                  icon: Icons.lock_outline,
                ),
                Row(
                  mainAxisAlignment: checkInformation
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!checkInformation)
                      const Text(
                        "Password don’t match ",
                        style: TextStyle(
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w800,
                            color: Colors.grey[600],
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppButton(
                      data: "Login",
                      onPressed: () {
                        if (checkInformation) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        } else {
                          setState(() {
                            checkInformation = false;
                          });
                        }
                      }),
                ),
                SizedBox(height: screenHeight / 5),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "Nunito",
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        const TextSpan(text: 'Don’t have any account? '),
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: "Nunito",
                            fontSize: 16,
                            color: buttonColorBottom,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterPage(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
