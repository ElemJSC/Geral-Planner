import 'package:isar/isar.dart';
import 'package:smartbuy/collection/item_compra.dart';

part 'categorias.g.dart';

@Collection()

class Categoria {
  Id idCategoria = Isar.autoIncrement;
  late String nome;

 @Backlink(to: 'categoria')
  final itensDaCategoria = IsarLinks<ItemDeCompra>();
}
