// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:tugas4_layout/theme.dart';

class MyTransactionHistory extends StatelessWidget {
  const MyTransactionHistory(
      {super.key,
      required this.image,
      required this.transaksi,
      required this.nama,
      required this.uang,
      required this.color});

  final String image, transaksi, nama, uang;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Card(
        color: white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffECF4FF),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset(
                  image,
                  color: blue,
                  scale: 1.5,
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                width: MediaQuery.of(context).size.width - 140,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nama,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: dark,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          transaksi,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: dark,
                          ),
                        ),
                        Text(
                          "No. Ref: 567943869",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: dark,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "10 Oct 2023 10:30",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: gray,
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
        ),
      ),
    );
  }
}
