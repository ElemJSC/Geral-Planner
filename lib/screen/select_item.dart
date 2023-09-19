import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

class SelectItem extends StatefulWidget {
  final Isar isar;

  const SelectItem({Key? key, required this.isar}) : super(key: key);

  @override
  _SelectItemState createState() => _SelectItemState();
}

class _SelectItemState extends State<SelectItem> {
  

  @override
  Widget build(BuildContext context) {
    
   

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Selecione itens'),
         
        ),
      ),
    );
  }
}