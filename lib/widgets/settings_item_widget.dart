import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    Key? key,
    this.iconBackgroundColor = Colors.blue,
    required this.icon,
    required this.title,
    this.actionText = "",
  }) : super(key: key);

  final Color iconBackgroundColor;
  final icon;
  final String title;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: iconBackgroundColor,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            actionText,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
      trailing: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
