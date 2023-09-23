import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:smartbuy/collection/item_compra.dart';
import 'package:smartbuy/isar_services.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

class SelectItens extends StatefulWidget {
  final Isar isar;
  final IsarService isarService;
  final String nomeLista;
  final Function(List<ItemDeCompra>) onItemsSelected;

  SelectItens({
    Key? key,
    required this.isar,
    required this.isarService,
    required this.nomeLista,
    required this.onItemsSelected,
  }) : super(key: key);

  @override
  _SelectItensState createState() => _SelectItensState();
}

class _SelectItensState extends State<SelectItens> {
  List<ItemDeCompra> itemsList = [];
  List<ItemDeCompra> itensSelecionados = [];

   @override
  void initState() {
    super.initState();
    _loadItems();
  }

  Future<void> _loadItems() async {
    final itemsCollection = widget.isar.itemDeCompras;
    final allItems = await itemsCollection.where().findAll();
    setState(() {
      itemsList = allItems.map((item) {
        item.selecionado = false;
        return item;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color.fromARGB(255, 255, 255, 255));

    return Scaffold(
      appBar: null,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40, left: 16, right: 16),
            color: Color.fromARGB(255, 255, 255, 255),
            child: Row(
              children: [
                IconButton(
                  icon: Image.asset(
                      'assets/icones/icons8-divisa-circulada-à-esquerda-100.png'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  iconSize: 50,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Selecione os Itens',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            // Wrap the ListView.builder with Expanded
            child: ListView.builder(
  itemCount: itemsList.length,
  itemBuilder: (context, index) {
    final item = itemsList[index];
    return StatefulBuilder(
      builder: (context, setState) {
        return CheckboxListTile(
          title: Text('${item.nomeItemDeCompra}'),
          value: item.selecionado,
          onChanged: (newValue) {
            setState(() {
              item.selecionado = newValue!;
            });
          },
        );
      },
    );
  },
),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 152, 86, 214),
        splashColor: Color.fromARGB(255, 57, 230, 13),
        hoverElevation: 50,
        hoverColor: Colors.orange,
        onPressed: () {
          itensSelecionados.clear(); // Limpe a lista para evitar duplicatas
          for (final item in itemsList) {
            if (item.selecionado) {
              itensSelecionados.add(item);
              // Redefina o estado do item na lista itemsList para desmarcar o checkbox
              item.selecionado = false;
            }
          }

          // Return os itens selecionados para a tela anterior
          Navigator.pop(context, itensSelecionados);
        },
        child: Image.asset(
          'assets/icones/icons8-soma-100.png',
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
