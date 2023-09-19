import 'package:flutter/material.dart';

import 'package:isar/isar.dart';
import 'package:smartbuy/screen/home_screen.dart';
import 'package:smartbuy/screen/splash_screen.dart';
import 'collection/shopping_item.dart';
import 'collection/shopping_list.dart';
import 'package:path_provider/path_provider.dart';

void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationSupportDirectory();
  final isar  = await Isar.open(
    [ShoppingItemSchema, ShoppingListSchema], directory: dir.path,
  );
  runApp(SmartBuy(isar: isar));
}

class SmartBuy extends StatelessWidget {
  final Isar isar;
  const SmartBuy({Key? key, required this.isar}) : super(key: key,);

  // This widget is the root of your application.
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(isar: isar,), // Configure a rota para a tela inicial
      },
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

