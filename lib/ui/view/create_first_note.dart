import 'package:application/widgets/app_bar.dart';
import 'package:flutter/material.dart';

import '../../colors/colors.dart';
import '../../widgets/app_button.dart';

class CreateFirstNote extends StatelessWidget {
  const CreateFirstNote({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AppBarIcon(data: "Create Note"),
      body: Padding(
        padding: EdgeInsets.only(top: screenHeight / 35.35),
        child: SizedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth - 370),
            child: Column(
              children: [
                Center(child: Image.asset("assets/images/home_page/note.png")),
                SizedBox(height: screenHeight / 19.63),
                const Text(
                  "Create your first note",
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w800,
                      fontSize: 24),
                ),
                SizedBox(height: screenHeight / 59),
                Text(
                  "Add a note about anything (your thoughts on climate change, or your history essay) and share it with the world.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.5)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight / 22),
                  child: AppButton(data: "Create A Note", onPressed: () {}),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
