import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:isar/isar.dart';
import 'package:smartbuy/collection/categorias.dart';
import 'package:smartbuy/collection/item_compra.dart';
import 'package:smartbuy/isar_services.dart';

class ItensScreen extends StatefulWidget {
  final Isar isar;
  final IsarService isarService = IsarService();
  ItensScreen({Key? key, required this.isar}) : super(key: key);

  @override
  _ItensScreenState createState() => _ItensScreenState();
}

class _ItensScreenState extends State<ItensScreen> {
  TextEditingController categoryNameController = TextEditingController();
  TextEditingController itemNameController = TextEditingController();
  final IsarLink<Categoria> categoriaReference = IsarLink<Categoria>();
  Categoria? selectedCategory;
  List<Categoria> categorias = [];

  String? saveMessage;
  ItemDeCompra? selecteditem;

  @override
  void initState() {
    super.initState();
    fetchData();
    _loadCategorias();
  }

  Future<void> _loadCategorias() async {
    final categoriasFromDB = await widget.isarService.readAllCategoria();
    setState(() {
      categorias = categoriasFromDB;
    });
  }

  Future<void> addItemWithCategory() async {
    final IsarLink<Categoria> categoriaReference = IsarLink<Categoria>();

    if (selectedCategory != null) {
      categoriaReference.value = selectedCategory!;
    }

    ItemDeCompra newItemDeCompra = ItemDeCompra();
    newItemDeCompra.nomeItemDeCompra = itemNameController.text;
    newItemDeCompra.selecionado = false;
    newItemDeCompra.categoria = categoriaReference;

    await widget.isarService.saveItem(newItemDeCompra);

    setState(() {
      saveMessage = 'Item salvo com sucesso!';
      selectedCategory = null;
      itemNameController.clear();
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(saveMessage ?? ''),
      ),
    );

    Navigator.pop(context, true);
  }

  Future<List<ItemDeCompra>> fetchData() async {
    final items = await IsarService().readAllItemDeCompra();
    return items;
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
                  icon: Image.asset('assets/icones/icons8-divisa-circulada-à-esquerda-100.png'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  iconSize: 50,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Itens',
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
            child: FutureBuilder<List<ItemDeCompra>>(
              future: fetchData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(
                    child: Text('No items found'),
                  );
                } else {
                  final items = snapshot.data!;
                  return ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      final isSelected = item == selecteditem;

                      return Column(
                        children: [
                          ListTile(
                            title: Text(
                              item.nomeItemDeCompra,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('${item.nomeItemDeCompra}'),
                                    content: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          TextButton.icon(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: Image.asset(
                                              'assets/icones/icons8-editar.gif',
                                              width: 50,
                                              height: 50,
                                            ),
                                            label: Text('Editar'),
                                          ),
                                          TextButton.icon(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: Image.asset(
                                              'assets/icones/icons8-excluir.gif',
                                              width: 50,
                                              height: 50,
                                            ),
                                            label: Text('Excluir'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          if (isSelected)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: () {
                                    // Handle edit action here
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    // Handle delete action here
                                  },
                                ),
                              ],
                            ),
                        ],
                      );
                    },
                  );
                }
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
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Adicionar Item'),
                content: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DropdownButtonFormField<Categoria>(
                        value: selectedCategory,
                        onChanged: (Categoria? newValue) {
                          setState(() {
                            selectedCategory = newValue;
                          });
                        },
                        items: [
                          const DropdownMenuItem(
                            value: null,
                            child: Text('Selecione a categoria'),
                          ),
                          ...categorias.map((categoria) {
                            return DropdownMenuItem(
                              value: categoria,
                              child: Text(categoria.nome),
                            );
                          }).toList(),
                        ],
                      ),
                      TextField(
                        controller: itemNameController,
                        decoration: InputDecoration(labelText: 'Nome do Produto'),
                      ),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () async {
                      final addItemResult = await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Adicionar Item'),
                            content: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  DropdownButtonFormField<Categoria>(
                                    value: selectedCategory,
                                    onChanged: (Categoria? newValue) {
                                      setState(() {
                                        selectedCategory = newValue;
                                      });
                                    },
                                    items: [
                                      const DropdownMenuItem(
                                        value: null,
                                        child: Text('Selecione a categoria'),
                                      ),
                                      ...categorias.map((categoria) {
                                        return DropdownMenuItem(
                                          value: categoria,
                                          child: Text(categoria.nome),
                                        );
                                      }).toList(),
                                    ],
                                  ),
                                  TextField(
                                    controller: itemNameController,
                                    decoration: InputDecoration(labelText: 'Nome do Produto'),
                                  ),
                                ],
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () async {
                                  await addItemWithCategory();
                                  Navigator.of(context).pop();
                                },
                                child: Text('Salvar'),
                              ),
                            ],
                          );
                        },
                      );

                      if (addItemResult != null && addItemResult) {
                        fetchData();
                      }
                    },
                    child: Text('Salvar'),
                  ),
                ],
              );
            },
          );
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
