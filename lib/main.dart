import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas4_layout/components/my_appbar.dart';
import 'package:tugas4_layout/components/my_btn_navbar.dart';
import 'package:tugas4_layout/pages/home.dart';
import 'package:tugas4_layout/pages/setting.dart';
import 'package:tugas4_layout/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MetaPay',
      debugShowCheckedModeBanner: false,
      home: const MyLayout(),
      theme: ThemeData(
        textTheme: GoogleFonts.plusJakartaSansTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: white,
      ),
    );
  }
}

class MyLayout extends StatefulWidget {
  const MyLayout({super.key});

  @override
  State<MyLayout> createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    Text(
      'Index 1: Statistik',
    ),
    Text(
      'Index 2: Bayar',
    ),
    Text(
      'Index 3: Riwayat',
    ),
    MySettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        img: const AssetImage("assets/img/goji.png"),
        name: "Jamas Hilman",
        icon: Icons.notifications_none,
        onPressNotifyBtn: () {},
      ),
      body: SingleChildScrollView(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: SizedBox(
        height: 65,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              _onItemTapped(2);
            },
            backgroundColor: blue,
            child: const Icon(Icons.qr_code_scanner_outlined),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 75,
        decoration: BoxDecoration(
          color: white,
        ),
        child: Row(
          children: <Widget>[
            MyButtonNavbar(
              onPressed: () {
                _onItemTapped(0);
              },
              icon: Icons.home_outlined,
              iconActive: Icons.home,
              title: "Beranda",
              selectedIndex: _selectedIndex,
              activeState: 0,
            ),
            MyButtonNavbar(
              onPressed: () {
                _onItemTapped(1);
              },
              icon: Icons.bar_chart_outlined,
              iconActive: Icons.bar_chart,
              title: "Statistik",
              selectedIndex: _selectedIndex,
              activeState: 1,
            ),
            MyButtonNavbar(
              onPressed: () {
                _onItemTapped(3);
              },
              icon: Icons.history_outlined,
              iconActive: Icons.history,
              title: "Riwayat",
              selectedIndex: _selectedIndex,
              activeState: 3,
            ),
            MyButtonNavbar(
              onPressed: () {
                _onItemTapped(4);
              },
              icon: Icons.settings_outlined,
              iconActive: Icons.settings,
              title: "Settings",
              selectedIndex: _selectedIndex,
              activeState: 4,
            ),
          ],
        ),
      ),
    );
  }
}
