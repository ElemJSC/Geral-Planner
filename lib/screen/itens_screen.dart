// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:smartbuy/isar_services.dart';

class ItensScreen extends StatefulWidget {
  late final Isar isar;
  late final IsarService isarService;
  
  @override
  _ItensScreenState createState() => _ItensScreenState();
}

class _ItensScreenState extends State<ItensScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Itens'), // Título do cabeçalho
      ),
      body: const Center(
        child: Text('Conteúdo dos Itens vai aqui'), // Conteúdo da tela dos itens
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação ao pressionar o botão de adição de itens
          // Você pode adicionar código aqui para adicionar novos itens.
        },
        child: const Icon(Icons.add), // Ícone de adição de itens
      ),
    );
  }
}