import 'package:flutter/material.dart';
import 'package:tugas4_layout/theme.dart';

class MySettingMenu extends StatelessWidget {
  const MySettingMenu({
    super.key,
    required this.title,
    required this.icon,
    required this.actionTitle,
    required this.actionIcon,
  });

  final String title, actionTitle;
  final IconData icon, actionIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      padding: const EdgeInsets.only(
        left: 25,
        top: 17.5,
        bottom: 17.5,
        right: 25,
      ),
      // decoration: BoxDecoration(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: gray,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    title,
                    style: TextStyle(
                      color: dark,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(5, 30),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.centerLeft,
                  foregroundColor: gray,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      actionTitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    Icon(
                      actionIcon,
                      size: 25,
                    )
                  ],
                ),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
