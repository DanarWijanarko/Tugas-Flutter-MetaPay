import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas4_layout/theme.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ImageProvider img;
  final String name;
  final Function onPressNotifyBtn;
  final IconData icon;

  const MyAppBar({
    super.key,
    required this.img,
    required this.name,
    required this.icon,
    required this.onPressNotifyBtn,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        toolbarHeight: 75,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 27.8,
                backgroundImage: img,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Halo 👋,",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: gray,
                    ),
                  ),
                  Text(
                    "$name!",
                    style: GoogleFonts.plusJakartaSans(
                      textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: dark,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: blue,
                minimumSize: const Size.fromWidth(55.5),
                padding: const EdgeInsets.only(bottom: 4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                side: BorderSide(width: 1, color: gray),
              ),
              child: Icon(
                icon,
                color: dark,
                size: 30,
              ),
              onPressed: () {
                onPressNotifyBtn;
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}
