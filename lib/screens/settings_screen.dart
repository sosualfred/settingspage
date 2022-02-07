import 'package:flutter/material.dart';
import 'package:settingspage/widgets/settings_item_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.black87,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/profile.jpeg",
                  ),
                  radius: 35,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sosu Alfred",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: Text(
                      "PRO",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "sosualfred@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              SettingsItem(
                title: "iCloud",
                actionText: "Disabled",
                icon: Icons.cloud,
                iconBackgroundColor: Colors.blueAccent,
              ),
              SettingsItem(
                title: "Apple Calendar",
                actionText: "Disabled",
                icon: Icons.calendar_view_month,
                iconBackgroundColor: Colors.amber,
              ),
              SettingsItem(
                title: "General Settings",
                icon: Icons.settings,
                iconBackgroundColor: Colors.orange,
              ),
              SettingsItem(
                title: "Theme",
                actionText: "Light",
                icon: Icons.color_lens,
                iconBackgroundColor: Colors.deepPurple,
              ),
              SettingsItem(
                title: "Sharing",
                icon: Icons.color_lens,
                iconBackgroundColor: Colors.amber[700]!,
              ),
              SettingsItem(
                title: "Support",
                icon: Icons.headphones,
                iconBackgroundColor: Colors.blueAccent,
              ),
              SettingsItem(
                title: "About the project",
                icon: Icons.search,
                iconBackgroundColor: Colors.amber[900]!,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Logout",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Privacy Policy",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Terms and Conditions",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
