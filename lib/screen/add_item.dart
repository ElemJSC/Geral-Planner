import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:smartbuy/collection/shopping_item.dart';
import 'package:smartbuy/isar_services.dart';

class AddItem extends StatefulWidget {
  final Isar isar;
  final IsarService isarService = IsarService();
  AddItem({Key? key, required this.isar}) : super(key: key);

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController marcaController = TextEditingController();
  final List<String> categorias = [
    'Bebidas',
    'Alimentação',
    'Higiene',
    'Limpeza',
    'Saúde',
    'Cama, mesa e banho',
    'Vestuário',
    'Acessórios',
    'Eletrônicos',
    'Eletrodomésticos',
    'Móveis e decoração',
    'Casa e Jardim',
    'Automotivo',
    'Livros, Música e Entretenimento',
    'Viagens e Lazer',
    'Artigos esportivos',
    'Brinquedos e Jogos',
    'Produtos para Animais de Estimação',
    'Material de Escritório e Papelaria',
    'Produtos para Bebês e Crianças',
  ];

  String selectedCategoria = ''; // Default value is an empty string
  // Default value is null

  @override
  Widget build(BuildContext context) {
    // Sort the categorias list alphabetically
    categorias.sort();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cadastrar Produto'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: nomeController,
                  decoration:
                      const InputDecoration(labelText: 'Nome do Produto'),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: marcaController,
                  decoration: const InputDecoration(
                      labelText: 'Marca de preferência (opcional)'),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
  isExpanded: true,
  value: selectedCategoria,
  onChanged: (value) {
    setState(() {
      selectedCategoria = value!;
    });
  },
  items: [
    DropdownMenuItem<String>(
      value: '', // Default value is an empty string
      child: Text('Defina a categoria'),
    ),
    ...categorias.map((categoria) {
      return DropdownMenuItem<String>(
        value: categoria, // Use a unique value for each item
        child: Text(categoria),
      );
    }).toList(),
  ],
  decoration: const InputDecoration(
    labelText: 'Categoria',
  ),
),
                const SizedBox(height: 16),
               ElevatedButton(
  onPressed: () {
    ShoppingItem newShoppingItem = ShoppingItem(
      nome: nomeController.text,
      marca: marcaController.text,
      categoria: selectedCategoria,
      foiComprado: false,
    );
    widget.isar.writeTxnSync<int>(() =>
        widget.isar.shoppingItems.putSync(newShoppingItem));

    // Clear the form fields and selected category after adding the item
    nomeController.clear();
    marcaController.clear();
    setState(() {
      selectedCategoria = ''; // Reset selected category to the default value
    });
  },
  child: const Text('Cadastrar'),
),

              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up controllers when the widget is disposed
    nomeController.dispose();
    marcaController.dispose();
    super.dispose();
  }
}
