import 'package:flutter/material.dart';
import 'package:tugas4_layout/components/my_setting_header.dart';
import 'package:tugas4_layout/components/my_setting_menu.dart';
import 'package:tugas4_layout/theme.dart';

class MySettingsPage extends StatefulWidget {
  const MySettingsPage({super.key});

  @override
  State<MySettingsPage> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff3eff9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MySettingHeader(
            title: "Common",
          ),

          const MySettingMenu(
            title: "Language",
            icon: Icons.language_outlined,
            actionTitle: "English",
            actionIcon: Icons.keyboard_arrow_right,
          ),
          // Horizontal Line Start
          Container(
            height: 0.3,
            color: gray,
          ),
          // Horizontal Line End
          const MySettingMenu(
            title: "Environment",
            icon: Icons.cloud_outlined,
            actionTitle: "Production",
            actionIcon: Icons.keyboard_arrow_right,
          ),

          const MySettingHeader(
            title: "Account",
          ),

          const MySettingMenu(
            title: "Phone Number",
            icon: Icons.phone_outlined,
            actionTitle: "08***",
            actionIcon: Icons.keyboard_arrow_right,
          ),
          // Horizontal Line Start
          Container(
            height: 0.3,
            color: gray,
          ),
          // Horizontal Line End
          const MySettingMenu(
            title: "Email",
            icon: Icons.mail_outline,
            actionTitle: "***@gmail.com",
            actionIcon: Icons.keyboard_arrow_right,
          ),
          // Horizontal Line Start
          Container(
            height: 0.3,
            color: gray,
          ),
          // Horizontal Line End
          const MySettingMenu(
            title: "Sign Out",
            icon: Icons.logout_outlined,
            actionTitle: "",
            actionIcon: Icons.keyboard_arrow_right,
          ),

          const MySettingHeader(
            title: "Security",
          ),

          const MySettingMenu(
            title: "Change Password",
            icon: Icons.lock_outline,
            actionTitle: "",
            actionIcon: Icons.keyboard_arrow_right,
          ),
          // Horizontal Line Start
          Container(
            height: 0.3,
            color: gray,
          ),
          // Horizontal Line End
          const MySettingMenu(
            title: "Fingerprint",
            icon: Icons.fingerprint_outlined,
            actionTitle: "",
            actionIcon: Icons.keyboard_arrow_right,
          ),

          const MySettingHeader(
            title: "Misc",
          ),

          const MySettingMenu(
            title: "Term of Service",
            icon: Icons.library_books,
            actionTitle: "",
            actionIcon: Icons.keyboard_arrow_right,
          ),
          // Horizontal Line Start
          Container(
            height: 0.3,
            color: gray,
          ),
          // Horizontal Line End
          const MySettingMenu(
            title: "Open Source Licenses",
            icon: Icons.collections_bookmark,
            actionTitle: "",
            actionIcon: Icons.keyboard_arrow_right,
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
