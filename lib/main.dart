import 'package:flutter/material.dart';
//import 'package:hexcolor/hexcolor.dart';
import 'package:nj_app_v2/second_page.dart';
import 'package:nj_app_v2/third_page.dart';
import 'package:nj_app_v2/list_page.dart';
import 'package:nj_app_v2/settings_page.dart';
//import 'package:untitled2/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int current = 1;
  List<Widget> pages = const [
    //default(),
    second(),
    third(),
    listPage(),
    settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: const Text('Flutter test App'),
       // centerTitle: true,
      //),
      body: pages[current],


      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.book), label: 'CZ/NJ'),
          NavigationDestination(
              icon: Icon(Icons.book), label: 'NJ/CZ'),
          NavigationDestination(icon: Icon(Icons.list), label: 'LIST'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Nastavení'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            current = index;
          });
        },
        selectedIndex: current,
      ),


    );
  }
}
