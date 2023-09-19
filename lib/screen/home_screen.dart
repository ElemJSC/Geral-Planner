// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:smartbuy/isar_services.dart';
import 'package:smartbuy/screen/add_item.dart';
import 'package:smartbuy/screen/list_screen.dart';

class HomeScreen extends StatefulWidget {
final Isar isar;

  const HomeScreen({Key? key, required this.isar,}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
      
   
      
       

  List<Widget> _buildWidgetOptions() {
  return <Widget>[
    const Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    AddItem(isar: widget.isar,), // Use the AddItem class
    ListScreen(isar: widget.isar,), 
  ];
}

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = _buildWidgetOptions();

    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Cadastrar Item',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Criar Lista',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
