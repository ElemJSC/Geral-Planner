import 'package:isar/isar.dart';
import 'package:smartbuy/collection/shopping_list.dart';
part 'shopping_item.g.dart';

@Collection()
class ShoppingItem {
  Id id = Isar.autoIncrement;
  late String nome;
  late String marca;
  int? quantidade;
  @Index()
  double? preco;
  late bool foiComprado;
  late String categoria;

 @Backlink(to: 'shoppingItem')
  final shoppinglist = IsarLinks<ShoppingList>();

  bool isSelected = false; // Adiciona o campo isSelected

  ShoppingItem({
    required this.nome,
    required this.marca,
    this.quantidade,
    this.preco,
    required this.foiComprado,
    required this.categoria,
  });

  
}