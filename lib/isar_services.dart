import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'collection/categorias.dart';
import 'collection/item_compra.dart';
import 'collection/lista_compras.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }



  Future<void> saveItem(ItemDeCompra newItemDeCompra) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.itemDeCompras.putSync(newItemDeCompra));
  }

  Future<void> saveCategoria(Categoria newCategoria) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.categorias.putSync(newCategoria));
  }
  
  Future<void> saveNewList(String nomeLista, DateTime dataCriacao) async {
  final isar = await db;
  await isar.writeTxn(() async {
    final lista = ListaCompras()
      ..nomeLista = nomeLista
      ..dataCriacao = dataCriacao;
    await isar.listaCompras.put(lista);
  });
}

Future<void> saveShoppingList(ListaCompras newShoppingList) async {
  final isar = await db;
  isar.writeTxnSync<int>(() => isar.listaCompras.putSync(newShoppingList));
}

Future<List<ListaCompras>> getListaCompras() async {
  final isar = await db; // Define isar here
  final query = isar.listaCompras.where().findAll(); // Use isar to perform the query
  return await query;
}

Future<List<Categoria>> readAllCategoria() async {
  final isar = await db;
  final categorias = await isar.categorias.where().findAll(); // Use the findAll method instead of toList
  return categorias;
}

Future<List<ItemDeCompra>> readAllItemDeCompra() async {
  final isar = await db;
  final itemDeCompras = await isar.itemDeCompras.where().findAll(); // Use the findAll method instead of toList
  return itemDeCompras;
}



  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [ItemDeCompraSchema, ListaComprasSchema, CategoriaSchema,],
        inspector: true,
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }
}