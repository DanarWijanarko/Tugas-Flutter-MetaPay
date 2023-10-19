import 'package:flutter/material.dart';
import 'package:tugas4_layout/theme.dart';

class MyMenuBtn extends StatelessWidget {
  const MyMenuBtn({super.key, required this.title, required this.image});

  final ImageProvider image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.5, vertical: 17),
            child: Image(
              image: image,
              width: 40,
              height: 40,
            ),
          ),
          onPressed: () {},
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: dark,
          ),
        ),
      ],
    );
  }
}
