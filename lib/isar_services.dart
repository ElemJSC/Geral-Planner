import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'collection/shopping_item.dart';
import 'collection/shopping_list.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  

  Future<void> saveItem(ShoppingItem newShoppingItem) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.shoppingItems.putSync(newShoppingItem));
  }

  Future<void> saveList(ShoppingList newShoppingList) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.shoppingLists.putSync(newShoppingList));
  }



  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
          [ ShoppingItemSchema, ShoppingListSchema],
          inspector: true, directory: dir.path);
    }
    return Future.value(Isar.getInstance());
  }
}
