// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:tugas4_layout/theme.dart';

class MyTransactionHistory extends StatelessWidget {
  const MyTransactionHistory({
    super.key,
    required this.image,
    required this.transaksi,
    required this.nama,
    required this.uang,
    required this.color
  });

  final String image, transaksi, nama, uang;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xffECF4FF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              image,
              color: blue,
              scale: 1.5,
            ),
          ),
          const SizedBox(width: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width - 112,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaksi,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                        color: gray,
                      ),
                    ),
                    Text(
                      nama,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: dark,
                      ),
                    ),
                  ],
                ),
                Text(
                  uang,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: color,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
