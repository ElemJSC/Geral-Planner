import 'package:isar/isar.dart';
import 'package:smartbuy/collection/item_compra.dart';
import 'package:smartbuy/collection/lista_compras.dart';
part 'estado_item.g.dart';

@Collection()
class EstadoItem {
  Id idEstadoItem = Isar.autoIncrement;
  String? marca;
  late int quantidade;
  double? preco;
  String? volume;
  double? qtdvolume;
  late bool comprado;
  bool selecionado = false;

  final listaDeCompras = IsarLink<ListaCompras>();
  final itemDeCompra = IsarLink<ItemDeCompra>();

ListaCompras? _listaDeCompras;
ItemDeCompra? _itemDeCompra;
 

  // Setter methods for setting link values
  set listaDeCompras(IsarLink<ListaCompras> value) {
    _listaDeCompras = value.value;
  }

  set itemDeCompra(IsarLink<ItemDeCompra> value) {
    _itemDeCompra = value.value;
  }
}
