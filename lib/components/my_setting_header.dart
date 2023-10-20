import 'package:flutter/material.dart';
import 'package:tugas4_layout/theme.dart';

class MySettingHeader extends StatelessWidget {
  const MySettingHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
      child: Text(
        title,
        style: TextStyle(
          color: blue,
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
      ),
    );
  }
}
