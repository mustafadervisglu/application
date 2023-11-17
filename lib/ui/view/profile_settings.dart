import 'package:application/colors/colors.dart';
import 'package:application/widgets/app_bar.dart';
import 'package:application/widgets/app_button.dart';
import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  final List<String> list = [
    "Name",
    "Email",
    "Password",
    "Confirm Password",
    "Bio",
    "Date of Birth"
  ];
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const AppBarIcon(data: "SETUP YOUR ACCOUNT"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          child: Column(
            children: [
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: list.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return _buildCustomTextField(
                    labelText: list[index],
                    context: context,
                  );
                },
              ),
              SizedBox(height: screenHeight / 4.72),
              AppButton(data: "Profile Complete", onPressed: () {}),
            ],
          ),
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }

  Widget _buildCustomTextField(
      {required String labelText, required BuildContext context}) {
    if (labelText == "Date of Birth") {
      return _buildDateField(context);
    }
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          fontFamily: "Nunito",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.black.withOpacity(0.1))),
      ),
    );
  }

  Widget _buildDateField(BuildContext context) {
    return TextField(
      controller: TextEditingController(
          text: selectedDate != null
              ? "${selectedDate!.toLocal()}".split(' ')[0]
              : ""),
      decoration: InputDecoration(
        labelText: "Date of Birth",
        labelStyle: const TextStyle(
          fontFamily: "Nunito",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.black.withOpacity(0.5))),
        suffixIcon: const Icon(Icons.calendar_today),
      ),
      readOnly: true,
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: selectedDate ?? DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (pickedDate != null && pickedDate != selectedDate) {
          setState(() {
            selectedDate = pickedDate;
          });
        }
      },
    );
  }
}
