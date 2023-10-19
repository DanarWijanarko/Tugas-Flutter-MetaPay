import 'package:flutter/material.dart';
import 'package:tugas4_layout/theme.dart';

class MyButtonNavbar extends StatelessWidget {
  const MyButtonNavbar({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.iconActive,
    required this.title,
    required this.selectedIndex,
    required this.activeState,
  });

  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  final IconData icon;
  final IconData iconActive;
  final String title;
  final int selectedIndex;
  final int activeState;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        onPressed: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            selectedIndex == activeState
                ? Icon( 
                    iconActive,
                    color: dark,
                    size: 35,
                  )
                : Icon(
                    icon,
                    color: gray,
                    size: 35,
                  ),
            selectedIndex == activeState
                ? Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: dark,
                    ),
                  )
                : Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: gray,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
