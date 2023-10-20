import 'package:flutter/material.dart';
import 'package:tugas4_layout/components/my_financial_record.dart';
import 'package:tugas4_layout/components/my_menu_button.dart';
import 'package:tugas4_layout/theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Kartumu Text Start
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15, left: 18),
          child: Text(
            "Kartumu",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: dark,
            ),
          ),
        ),
        // Kartumu Text End

        // Card Start
        Center(
          child: Container(
            height: 205.0,
            width: 375.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color(0xff111111),
              image: const DecorationImage(
                image: AssetImage("assets/img/card.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage("assets/img/card_logo_left.png"),
                      ),
                      Image(
                        image: AssetImage("assets/img/card_logo_right.png"),
                      ),
                    ],
                  ),
                ),
                Text(
                  "1253  5432  3521  3090",
                  style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jamas Hilman",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: white,
                        ),
                      ),
                      Text(
                        "Exp 09/24",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // Card End

        // Menu Button Start
        const Padding(
          padding: EdgeInsets.only(left: 18, top: 36, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyMenuBtn(
                image: AssetImage("assets/icons/send.png"),
                title: "Kirim",
              ),
              MyMenuBtn(
                image: AssetImage("assets/icons/request.png"),
                title: "Minta",
              ),
              MyMenuBtn(
                image: AssetImage("assets/icons/topup.png"),
                title: "Top up",
              ),
              MyMenuBtn(
                image: AssetImage("assets/icons/other.png"),
                title: "Lainnya",
              ),
            ],
          ),
        ),
        // Menu Button End

        // Catatan Keuangan Start
        Padding(
          padding: const EdgeInsets.only(top: 35, left: 18, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Catatan Keuangan",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: dark,
                ),
              ),
              Text(
                "Lihat semua",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: gray,
                ),
              ),
            ],
          ),
        ),
        // Catatan Keuangan End

        // List Catatan Keuangan Start
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 18, right: 18),
          child: Card(
            shadowColor: blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyFinancialRecord(
                      icon: Icons.arrow_downward,
                      jenis: "Pemasukan",
                      jumlah: "+Rp4.200.000",
                      iconColor: green,
                    ),
                    Container(
                      width: 0.5,
                      height: 120,
                      color: gray,
                    ),
                    MyFinancialRecord(
                      icon: Icons.arrow_upward,
                      jenis: "Pengeluaran",
                      jumlah: "-Rp. 4.383.000",
                      iconColor: red,
                    ),
                  ],
                ),
                Container(
                  height: 0.5,
                  color: gray,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Selisih",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: gray,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "-Rp183.000",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: red,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // List Catatan Keuangan End
        const SizedBox(height: 35),
      ],
    );
  }
}
