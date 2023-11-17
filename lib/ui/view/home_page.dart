import 'package:application/colors/colors.dart';
import 'package:application/ui/view/create_first_note.dart';
import 'package:application/ui/view/login_page.dart';
import 'package:application/ui/view/register_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double screenHeight;
  late double screenWidth;
  late double appBarHeight;
  late double statusBarHeight;
  late double usableHeight;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    appBarHeight = AppBar().preferredSize.height;
    statusBarHeight = MediaQuery.of(context).padding.top;
    usableHeight = screenHeight - appBarHeight - statusBarHeight;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'My Notes',
          style: TextStyle(
              fontFamily: "Nunito", fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: Column(
        children: [
          _buildTopContainer(),
          _buildBottomContainer(),
        ],
      ),
    );
  }

  Widget _buildTopContainer() {
    return Expanded(
      child: Container(
        width: screenWidth,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/home_page/Vector.png"),
          ),
          color: backgroundColor,
        ),
      ),
    );
  }

  Widget _buildBottomContainer() {
    return Expanded(
      child: Container(
        width: screenWidth,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/home_page/bg.png"),
            fit: BoxFit.fill,
          ),
          color: backgroundColor,
        ),
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Create & Making Your\nNotes Easily',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Nunito",
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
        _buildGetStartedButton(),
        _buildLoginText(),
      ],
    );
  }

  Widget _buildGetStartedButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Container(
        width: screenWidth * 0.8,
        height: usableHeight * 0.08,
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegisterPage(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    disabledBackgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
              Image.asset(
                "assets/images/home_page/line1.png",
                width: 24,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginText() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "Nunito",
            fontSize: 16,
          ),
          children: <TextSpan>[
            const TextSpan(text: 'Already have an account? '),
            TextSpan(
              text: 'Login',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontFamily: "Nunito",
                fontSize: 16,
                color: buttonColorBottom,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
