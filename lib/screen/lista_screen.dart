import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import 'package:smartbuy/collection/item_compra.dart';
import 'package:smartbuy/collection/lista_compras.dart';
import 'package:smartbuy/isar_services.dart';
import 'package:smartbuy/screen/itens_screen.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:smartbuy/screen/select_itens.dart';

class ListaScreen extends StatefulWidget {
  final Isar isar;
  final IsarService isarService;

  ListaScreen({Key? key, required this.isar, required this.isarService}) : super(key: key);

  @override
  _ListaScreenState createState() => _ListaScreenState();
}

class _ListaScreenState extends State<ListaScreen> {
  final TextEditingController nomeListaController = TextEditingController();
  final DateTime dataCriacao = DateTime.now();
 List<ItemDeCompra> itemsList = [];
 
  @override
  void initState() {
    super.initState();
    // Set the status bar icons color to white
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  void onItemsSelected(List<ItemDeCompra> itensSelecionados) {
    // Handle the selected items here, if needed
  }
void _resetItemSelections() {
    setState(() {
      for (final item in itemsList) {
        item.selecionado = false;
      }
    });
  }

 void _showSaveListAlert() async {
  // Clear the text field when opening the alert dialog
  nomeListaController.clear();

  // Reset the checkboxes
  _resetItemSelections();

  // Navigate to the SelectItens screen to select items
  final selectedItems = await Navigator.push<List<ItemDeCompra>>(
    context,
    MaterialPageRoute(
      builder: (context) => SelectItens(
        isar: widget.isar,
        isarService: widget.isarService,
        nomeLista: nomeListaController.text.trim(),
        onItemsSelected: onItemsSelected, // Pass the callback here
      ),
    ),
  );

  if (selectedItems != null) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Nova Lista de Compras'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nomeListaController,
                decoration: InputDecoration(labelText: 'Nome da Lista'),
              ),
              // Other input fields, if needed
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Salvar'),
              onPressed: () async {
                // Check if the nomeLista is empty or contains only whitespace
                final nomeLista = nomeListaController.text.trim();
                if (nomeLista.isEmpty) {
                  // Show an error message or handle the empty name case
                  // For example, you can display a snackbar or alert
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('O nome da lista não pode estar em branco.'),
                    ),
                  );
                } else {
                  // Create a new shopping list
                  final dataCriacao = DateTime.now();
                  final isarService = widget.isarService;
                  final newShoppingList = ListaCompras()
                    ..nomeLista = nomeLista
                    ..dataCriacao = dataCriacao;

                  // Add selected items to the shopping list
                  newShoppingList.items.addAll(selectedItems);

                  // Save the new shopping list using the IsarService
                  await isarService.saveShoppingList(newShoppingList);

                  // Close the dialog
                  Navigator.of(context).pop();

                  // Navigate to another screen or perform other actions if needed
                }
              },
            ),
          ],
        );
      },
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // Set the background color for the Container

    // Set the status bar color to match the background color
    FlutterStatusbarcolor.setStatusBarColor(Color.fromARGB(255, 255, 255, 255));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lista de Compras',
                    style: TextStyle(fontSize: 25),
                  ),
                  PopupMenuButton<String>(
                    icon: Image.asset(
                      'assets/icones/icons8-menu-2-50.png',
                      width: 50,
                      height: 50,
                    ),
                    iconSize: 50,
                    onSelected: (String value) {
                      // Handle the menu item selection here
                      if (value == 'categories') {
                        // Handle "Manage Categories" selection
                      } else if (value == 'itens') {
                        // Navigate to the ItensScreen when "Itens" is selected
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItensScreen(
                              isar: widget.isar,
                            ),
                          ),
                        );
                      }
                    },
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'categories',
                          child: Text('Categorias'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'itens',
                          child: Text('Itens'),
                        ),
                      ];
                    },
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: const Color.fromARGB(255, 255, 255, 255), // Set the background color here
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        'assets/images/listimgae.png',
                        width: 400,
                        height: 400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.only(right: 16.0, bottom: 16.0), // Margin to position in the bottom right corner
        child: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 245, 228, 152),
          splashColor: Color.fromARGB(255, 57, 230, 13),
          hoverElevation: 50,
          hoverColor: Colors.orange,
          onPressed: () {
            // Action when the add items button is pressed
            // You can add code here to add new items.
          },
          child: IconButton(
            onPressed: () {
              _showSaveListAlert();
            },
            icon: Image.asset(
              'assets/icones/icons8-soma-100.png',
              width: 50,
              height: 50,
            ),
            iconSize: 50,
          ), // Adjust the icon size as desired
        ),
      ),
    );
  }
}