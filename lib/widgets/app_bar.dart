import 'package:flutter/material.dart';

import '../colors/colors.dart';

class AppBarIcon extends StatelessWidget implements PreferredSizeWidget {
  const AppBarIcon({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Center(
        child: AppBar(
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
          title: Text(
            data,
            style: const TextStyle(
              fontFamily: "Nunito",
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

