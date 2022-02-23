import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Color(0xFFFFFFFF),
        backgroundColor: Color(0xFF473F97),
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.3,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.grey.shade300,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpg'),
                    radius: 40,
                  ),
                  title: Text('Emma_ema'),
                  subtitle: Text('Class 9th A'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Personal Information",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                ),
              ),
              Card(
                elevation: 04,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  children: [
                    CustomProfile(
                      attr: "Name",
                      iconsPath: Icons.person,
                      value: "Emma_ema",
                    ),
                    CustomProfile(
                      attr: "F.Name",
                      iconsPath: Icons.person_add_alt_1,
                      value: "Hassan",
                    ),
                    CustomProfile(
                      attr: "Roll No.",
                      iconsPath: Icons.numbers_outlined,
                      value: "123",
                    ),
                    CustomProfile(
                      attr: "Reg. No.",
                      iconsPath: Icons.app_registration,
                      value: "1656356",
                    ),
                    CustomProfile(
                      attr: "Gender",
                      iconsPath: Icons.female,
                      value: "Femail",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "DegreeInformation",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                ),
              ),
              Card(
                elevation: 04,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  children: [
                    CustomProfile(
                      attr: "Class",
                      iconsPath: Icons.class__outlined,
                      value: "10th",
                    ),
                    CustomProfile(
                      attr: "Section",
                      iconsPath: Icons.subject_outlined,
                      value: "A",
                    ),
                    CustomProfile(
                      attr: "Session",
                      iconsPath: Icons.settings_applications_rounded,
                      value: "2022 - 2024",
                    ),
                    CustomProfile(
                      attr: "Major",
                      iconsPath: Icons.rotate_90_degrees_ccw,
                      value: "Science",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Contact Information",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                ),
              ),
              Card(
                elevation: 04,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  children: [
                    CustomProfile(
                      attr: "Mobile No.",
                      iconsPath: Icons.call,
                      value: "034459504493",
                    ),
                    CustomProfile(
                      attr: "Email",
                      iconsPath: Icons.email,
                      value: "abcd@gmail.com",
                    ),
                    CustomProfile(
                      attr: "Adress",
                      iconsPath: Icons.rotate_90_degrees_ccw,
                      value: "Rawalpindi",
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CustomProfile extends StatelessWidget {
  CustomProfile({Key key, this.attr, this.iconsPath, this.value})
      : super(key: key);
  final IconData iconsPath;
  final String attr;
  final String value;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: EdgeInsets.only(left: 40),
        child: Icon(
          iconsPath,
          size: 28,
        ),
      ),
      title: Text(attr, style: TextStyle(), textAlign: TextAlign.left),
      trailing: Padding(
        padding: EdgeInsets.only(right: 60),
        child: Text(
          value,
          style: TextStyle(),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
