import 'package:isar/isar.dart';
import 'package:smartbuy/collection/item_compra.dart';

part 'lista_compras.g.dart';

@Collection()
class ListaCompras {
  Id idLista = Isar.autoIncrement;
  late String nomeLista;
  late DateTime dataCriacao;
  final items = IsarLinks<ItemDeCompra>();
 

  Future<void> save(Isar isar) async {
    await isar.writeTxn(() async {
      await isar.listaCompras.put(this);
    });
  }
}
