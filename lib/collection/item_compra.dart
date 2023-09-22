import 'package:isar/isar.dart';
import 'package:smartbuy/collection/categorias.dart';
import 'package:smartbuy/collection/estado_item.dart';
part 'item_compra.g.dart';

@Collection()
class ItemDeCompra {
  Id idItemDeCompra = Isar.autoIncrement;
  late String nomeItemDeCompra;
  late bool selecionado;
  final categoria = IsarLink<Categoria>();

  set categoria(IsarLink<Categoria> value) {
  categoria.value = value.value; // Assign the value directly to the value property
}


}
