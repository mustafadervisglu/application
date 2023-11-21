import 'package:application/colors/colors.dart';
import 'package:application/ui/view/create_first_note.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  final List<Map<String, dynamic>> folders = [
    {
      'title': 'Personal',
      'date': '09th Feb,2023',
      'size': '56 MBs',
      'fileCount': '30 FILES',
    },
    {
      'title': 'Academic',
      'date': '12th Oct,2023',
      'size': '2.26 GB',
      'fileCount': '16 FILES',
    },
    {
      'title': 'Work',
      'date': '09th Feb,2023',
      'size': '56 MBs',
      'fileCount': '30 FILES',
    },
    {
      'title': 'Personal',
      'date': '09th Feb,2023',
      'size': '56 MBs',
      'fileCount': '30 FILES',
    },
    {
      'title': 'Personal',
      'date': '09th Feb,2023',
      'size': '56 MBs',
      'fileCount': '30 FILES',
    },
    {
      'title': 'Personal',
      'date': '09th Feb,2023',
      'size': '56 MBs',
      'fileCount': '30 FILES',
    }
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, Color> categoryColors = {
    'Personal': const Color(0xFFF2858A),
    'Academic': const Color(0xFF8AA15A),
    'Work': const Color(0xFFFF8F3D),
    'Others': const Color(0xFF495E84),
  };
  Map<String, String> categoryImage = {
    'Personal': 'assets/images/home_page/Fr21.png',
    'Academic': 'assets/images/home_page/Fr20.png',
    'Work':'assets/images/home_page/Fr19.png',
    'Others': 'assets/images/home_page/Fr22.png',
  };
  String name = "Akansha Sonali";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/images/home_page/Image.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const Text(
                      "Let’s explore your notes",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: const Color(0xffEFE8D4),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Welcome to My Notes",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const Text(
                          "It is a long established fact that a reader will be distracted",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: screenWidth / 4.48,
                          height: screenHeight / 23.57,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                backgroundColorTop1,
                                backgroundColorBottom2,
                              ],
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CreateFirstNote(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              disabledBackgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              elevation: 0,
                            ),
                            child: const Text(
                              "Add Notes",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: "Nunito",
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/images/home_page/notepad.png",
                    width: 106,
                    height: 109,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 19),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notes Folders",
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "Nunito",
                      fontSize: 16,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'See All',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: "Nunito",
                          fontSize: 16,
                          color: seeAllColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CreateFirstNote(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.folders.length,
                itemBuilder: (context, index) {
                  var folder = widget.folders[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      color: categoryColors[folder['title']]?.withOpacity(0.16),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 327,
                    height: 94,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          leading: Image.asset(categoryImage[folder['title']] ?? ''),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${folder['fileCount']}',
                                style: const TextStyle(
                                  color: Color(0xffFC9499),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                folder['title'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  fontFamily: "Nunito",
                                ),
                              ),
                              Text(
                                'Size: ${folder['size']}',
                                style: TextStyle(
                                  color: const Color(0xff403B36).withOpacity(0.6),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          trailing: Text(folder['date']),
                          onTap: () {},
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
