import 'package:isar/isar.dart';
import 'package:smartbuy/collection/shopping_item.dart';
part  'shopping_list.g.dart';

@Collection()

class ShoppingList {
  Id id = Isar.autoIncrement; 
  late String nome;
  late DateTime criacao;
  String? descricao;
  final shoppingItem = IsarLinks<ShoppingItem>();

  ShoppingList({
    required this.nome,
    required this.criacao,
    this.descricao,
  });


}