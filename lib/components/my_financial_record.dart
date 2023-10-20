import 'package:flutter/material.dart';
import 'package:tugas4_layout/theme.dart';

class MyFinancialRecord extends StatelessWidget {
  const MyFinancialRecord({
    super.key,
    required this.icon,
    required this.jenis,
    required this.jumlah,
    required this.iconColor,
  });

  final IconData icon;
  final String jenis, jumlah;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 30,
            ),
            const SizedBox(width: 4),
            Text(
              jenis,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: gray,
              ),
            ),
          ],
        ),
        const SizedBox(height: 7),
        Text(
          jumlah,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: dark,
          ),
        ),
      ],
    );
  }
}
