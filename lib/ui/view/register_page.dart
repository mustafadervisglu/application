import 'package:flutter/material.dart';
import '../../colors/colors.dart';
import 'package:application/widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/images/home_page/Back.png",
              width: 32,
              height: 32,
            ),
          ),
          title: const Text(
            'My Notes',
            style: TextStyle(
                fontFamily: "Nunito",
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          centerTitle: true,
          backgroundColor: backgroundColor),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 15),
              const Text(
                "Create a free account",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w800,
                    fontSize: 24),
              ),
              const SizedBox(height: 8),
              const Text(
                "Join Notely for free. Create and share  \n unlimited notes with your friends.",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: "Nunito", fontSize: 16),
              ),
              const SizedBox(height: 22),
              const Padding(
                padding: EdgeInsets.only(
                  top: 12.0,
                ),
                child: CustomTextField(
                  labelText: 'Name',
                  keyboardType: TextInputType.name,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 12.0,
                ),
                child: CustomTextField(
                  labelText: 'Last Name',
                  keyboardType: TextInputType.name,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 12.0,
                ),
                child: CustomTextField(
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 12.0,
                ),
                child: CustomTextField(
                  labelText: 'Password',
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      checkBox = !checkBox;
                    });
                  },
                  child: Row(
                    children: [
                      Checkbox(
                        side: const BorderSide(color: Colors.pink),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        value: checkBox,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkBox = newValue ?? false;
                          });
                        },
                        activeColor: Colors.pink,
                        checkColor: Colors.white,
                      ),
                      Expanded(
                        child: Text(
                          "Agree to our Terms and Service",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      const Icon(Icons.info_outline, color: Colors.grey),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 24,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        buttonColorTop,
                        buttonColorBottom,
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      disabledBackgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "Nunito",
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
