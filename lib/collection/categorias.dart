import 'package:isar/isar.dart';

part 'categorias.g.dart';

@Collection()

class Categoria {
  Id idCategoria = Isar.autoIncrement;
  late String nome;

}
