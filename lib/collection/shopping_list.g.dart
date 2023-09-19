// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_list.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetShoppingListCollection on Isar {
  IsarCollection<ShoppingList> get shoppingLists => this.collection();
}

const ShoppingListSchema = CollectionSchema(
  name: r'ShoppingList',
  id: 4550947625737655976,
  properties: {
    r'criacao': PropertySchema(
      id: 0,
      name: r'criacao',
      type: IsarType.dateTime,
    ),
    r'descricao': PropertySchema(
      id: 1,
      name: r'descricao',
      type: IsarType.string,
    ),
    r'nome': PropertySchema(
      id: 2,
      name: r'nome',
      type: IsarType.string,
    )
  },
  estimateSize: _shoppingListEstimateSize,
  serialize: _shoppingListSerialize,
  deserialize: _shoppingListDeserialize,
  deserializeProp: _shoppingListDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'shoppingItem': LinkSchema(
      id: 5959125425761910032,
      name: r'shoppingItem',
      target: r'ShoppingItem',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _shoppingListGetId,
  getLinks: _shoppingListGetLinks,
  attach: _shoppingListAttach,
  version: '3.1.0+1',
);

int _shoppingListEstimateSize(
  ShoppingList object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.descricao;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.nome.length * 3;
  return bytesCount;
}

void _shoppingListSerialize(
  ShoppingList object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.criacao);
  writer.writeString(offsets[1], object.descricao);
  writer.writeString(offsets[2], object.nome);
}

ShoppingList _shoppingListDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ShoppingList(
    criacao: reader.readDateTime(offsets[0]),
    descricao: reader.readStringOrNull(offsets[1]),
    nome: reader.readString(offsets[2]),
  );
  object.id = id;
  return object;
}

P _shoppingListDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _shoppingListGetId(ShoppingList object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _shoppingListGetLinks(ShoppingList object) {
  return [object.shoppingItem];
}

void _shoppingListAttach(
    IsarCollection<dynamic> col, Id id, ShoppingList object) {
  object.id = id;
  object.shoppingItem
      .attach(col, col.isar.collection<ShoppingItem>(), r'shoppingItem', id);
}

extension ShoppingListQueryWhereSort
    on QueryBuilder<ShoppingList, ShoppingList, QWhere> {
  QueryBuilder<ShoppingList, ShoppingList, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ShoppingListQueryWhere
    on QueryBuilder<ShoppingList, ShoppingList, QWhereClause> {
  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ShoppingListQueryFilter
    on QueryBuilder<ShoppingList, ShoppingList, QFilterCondition> {
  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      criacaoEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'criacao',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      criacaoGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'criacao',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      criacaoLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'criacao',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      criacaoBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'criacao',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      descricaoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descricao',
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      descricaoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descricao',
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      descricaoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descricao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      descricaoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descricao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      descricaoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descricao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      descricaoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descricao',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      descricaoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descricao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      descricaoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descricao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      descricaoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descricao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      descricaoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descricao',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      descricaoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descricao',
        value: '',
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      descricaoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descricao',
        value: '',
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> nomeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nome',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      nomeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nome',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> nomeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nome',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> nomeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nome',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      nomeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nome',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> nomeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nome',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> nomeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nome',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> nomeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nome',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      nomeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nome',
        value: '',
      ));
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      nomeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nome',
        value: '',
      ));
    });
  }
}

extension ShoppingListQueryObject
    on QueryBuilder<ShoppingList, ShoppingList, QFilterCondition> {}

extension ShoppingListQueryLinks
    on QueryBuilder<ShoppingList, ShoppingList, QFilterCondition> {
  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition> shoppingItem(
      FilterQuery<ShoppingItem> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'shoppingItem');
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      shoppingItemLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'shoppingItem', length, true, length, true);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      shoppingItemIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'shoppingItem', 0, true, 0, true);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      shoppingItemIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'shoppingItem', 0, false, 999999, true);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      shoppingItemLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'shoppingItem', 0, true, length, include);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      shoppingItemLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'shoppingItem', length, include, 999999, true);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterFilterCondition>
      shoppingItemLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'shoppingItem', lower, includeLower, upper, includeUpper);
    });
  }
}

extension ShoppingListQuerySortBy
    on QueryBuilder<ShoppingList, ShoppingList, QSortBy> {
  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByCriacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'criacao', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByCriacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'criacao', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByDescricao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricao', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByDescricaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricao', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByNome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> sortByNomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.desc);
    });
  }
}

extension ShoppingListQuerySortThenBy
    on QueryBuilder<ShoppingList, ShoppingList, QSortThenBy> {
  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByCriacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'criacao', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByCriacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'criacao', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByDescricao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricao', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByDescricaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricao', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByNome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.asc);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QAfterSortBy> thenByNomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.desc);
    });
  }
}

extension ShoppingListQueryWhereDistinct
    on QueryBuilder<ShoppingList, ShoppingList, QDistinct> {
  QueryBuilder<ShoppingList, ShoppingList, QDistinct> distinctByCriacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'criacao');
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QDistinct> distinctByDescricao(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descricao', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShoppingList, ShoppingList, QDistinct> distinctByNome(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nome', caseSensitive: caseSensitive);
    });
  }
}

extension ShoppingListQueryProperty
    on QueryBuilder<ShoppingList, ShoppingList, QQueryProperty> {
  QueryBuilder<ShoppingList, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ShoppingList, DateTime, QQueryOperations> criacaoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'criacao');
    });
  }

  QueryBuilder<ShoppingList, String?, QQueryOperations> descricaoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descricao');
    });
  }

  QueryBuilder<ShoppingList, String, QQueryOperations> nomeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nome');
    });
  }
}
