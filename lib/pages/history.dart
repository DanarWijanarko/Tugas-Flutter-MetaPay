import 'package:flutter/material.dart';
import 'package:tugas4_layout/components/my_transaction_History.dart';
import 'package:tugas4_layout/theme.dart';

class MyHistoryPage extends StatefulWidget {
  const MyHistoryPage({super.key});

  @override
  State<MyHistoryPage> createState() => _MyHistoryPageState();
}

class _MyHistoryPageState extends State<MyHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 18,
        right: 18,
      ),
      child: Column(
        children: [
          MyTransactionHistory(
            image: "assets/icons/request.png",
            transaksi: "ShopeePay - 081447716694",
            nama: "Raditya Adi",
            uang: "+Rp50.000",
            color: green,
          ),
          MyTransactionHistory(
            image: "assets/icons/send.png",
            transaksi: "ShopeePay - 081447716694",
            nama: "Danar Wijanarko",
            uang: "-Rp500.000",
            color: red,
          ),
          MyTransactionHistory(
            image: "assets/icons/send.png",
            transaksi: "PLN - 5143567345",
            nama: "Raditya Adi",
            uang: "-Rp50.000",
            color: red,
          ),
          MyTransactionHistory(
            image: "assets/icons/request.png",
            transaksi: "ShopeePay - 081447716694",
            nama: "Raditya Adi",
            uang: "+Rp50.000",
            color: green,
          ),
          MyTransactionHistory(
            image: "assets/icons/request.png",
            transaksi: "ShopeePay - 081447716694",
            nama: "Raditya Adi",
            uang: "+Rp50.000",
            color: green,
          ),
          MyTransactionHistory(
            image: "assets/icons/request.png",
            transaksi: "ShopeePay - 081447716694",
            nama: "Raditya Adi",
            uang: "+Rp50.000",
            color: green,
          ),
          MyTransactionHistory(
            image: "assets/icons/request.png",
            transaksi: "ShopeePay - 081447716694",
            nama: "Raditya Adi",
            uang: "+Rp50.000",
            color: green,
          ),
          MyTransactionHistory(
            image: "assets/icons/request.png",
            transaksi: "ShopeePay - 081447716694",
            nama: "Raditya Adi",
            uang: "+Rp50.000",
            color: green,
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
