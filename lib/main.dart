import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:smartbuy/collection/categorias.dart';
import 'package:smartbuy/isar_services.dart';
import 'package:smartbuy/screen/lista_screen.dart';
import 'package:smartbuy/screen/splash_screen.dart';
import 'collection/item_compra.dart';
import 'collection/lista_compras.dart';
import 'package:path_provider/path_provider.dart';

void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationSupportDirectory();
  final isar = await Isar.open(
    [ItemDeCompraSchema, ListaComprasSchema, CategoriaSchema,],
    directory: dir.path,
  );

  final isarService = IsarService(); // Create an instance of IsarService
  
  runApp(SmartBuy(isar: isar, isarService: isarService));
}

class SmartBuy extends StatelessWidget {
  final Isar isar;
  final IsarService isarService; // Add this field

  const SmartBuy({Key? key, required this.isar, required this.isarService}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => ListaScreen(isar: isar, isarService: isarService), // Pass isarService
      },
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
