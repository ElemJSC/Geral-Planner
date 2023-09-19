import 'package:isar/isar.dart';
part 'item.g.dart';

@Collection()
class Item {
  Id id = Isar.autoIncrement;
  late String nome;
  late String marca;
  int? quantidade;
  @Index()
  double? preco;
  late bool foiComprado;
  late String categoria;

  Item({required this.nome, required this.marca, this.quantidade, this.preco, required this.foiComprado, required this.categoria,});
}