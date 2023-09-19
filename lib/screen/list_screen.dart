import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:smartbuy/screen/select_item.dart';

class ListScreen extends StatefulWidget {
  final Isar isar;

  const ListScreen({Key? key, required this.isar}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  

  @override
  Widget build(BuildContext context) {
    
   

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Lista de compras'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> SelectItem(isar:  widget.isar))
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text('Your content goes here'),
          ),
        ),
      ),
    );
  }
}