import 'package:flutter/material.dart';
import 'package:settingspage/utils/theme.dart';
import 'package:settingspage/widgets/profile_header_widget.dart';
import 'package:settingspage/widgets/settings_item_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;

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
              ProfileHeaderWidget(
                fullName: "Sosu Alfred",
                email: "sosualfred@gmail.com",
                image: "assets/images/profile.jpeg",
                isProUser: true,
              ),
              SizedBox(height: deviceHeight * 0.04),
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
              SizedBox(height: deviceHeight * 0.03),
              Text("Logout", style: secondaryTextStyle),
              SizedBox(height: deviceHeight * 0.04),
              Text("Privacy Policy", style: primaryTextStyle),
              SizedBox(height: deviceHeight * 0.02),
              Text("Terms and Conditions", style: primaryTextStyle),
            ],
          ),
        ),
      ),
    );
  }
}
