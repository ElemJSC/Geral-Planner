// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_compra.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetItemDeCompraCollection on Isar {
  IsarCollection<ItemDeCompra> get itemDeCompras => this.collection();
}

const ItemDeCompraSchema = CollectionSchema(
  name: r'ItemDeCompra',
  id: 6969083411026076953,
  properties: {
    r'nomeItemDeCompra': PropertySchema(
      id: 0,
      name: r'nomeItemDeCompra',
      type: IsarType.string,
    ),
    r'selecionado': PropertySchema(
      id: 1,
      name: r'selecionado',
      type: IsarType.bool,
    )
  },
  estimateSize: _itemDeCompraEstimateSize,
  serialize: _itemDeCompraSerialize,
  deserialize: _itemDeCompraDeserialize,
  deserializeProp: _itemDeCompraDeserializeProp,
  idName: r'idItemDeCompra',
  indexes: {},
  links: {
    r'categoria': LinkSchema(
      id: 6252402362829516915,
      name: r'categoria',
      target: r'Categoria',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _itemDeCompraGetId,
  getLinks: _itemDeCompraGetLinks,
  attach: _itemDeCompraAttach,
  version: '3.1.0+1',
);

int _itemDeCompraEstimateSize(
  ItemDeCompra object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.nomeItemDeCompra.length * 3;
  return bytesCount;
}

void _itemDeCompraSerialize(
  ItemDeCompra object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.nomeItemDeCompra);
  writer.writeBool(offsets[1], object.selecionado);
}

ItemDeCompra _itemDeCompraDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ItemDeCompra();
  object.idItemDeCompra = id;
  object.nomeItemDeCompra = reader.readString(offsets[0]);
  object.selecionado = reader.readBool(offsets[1]);
  return object;
}

P _itemDeCompraDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _itemDeCompraGetId(ItemDeCompra object) {
  return object.idItemDeCompra;
}

List<IsarLinkBase<dynamic>> _itemDeCompraGetLinks(ItemDeCompra object) {
  return [object.categoria];
}

void _itemDeCompraAttach(
    IsarCollection<dynamic> col, Id id, ItemDeCompra object) {
  object.idItemDeCompra = id;
  object.categoria
      .attach(col, col.isar.collection<Categoria>(), r'categoria', id);
}

extension ItemDeCompraQueryWhereSort
    on QueryBuilder<ItemDeCompra, ItemDeCompra, QWhere> {
  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterWhere> anyIdItemDeCompra() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ItemDeCompraQueryWhere
    on QueryBuilder<ItemDeCompra, ItemDeCompra, QWhereClause> {
  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterWhereClause>
      idItemDeCompraEqualTo(Id idItemDeCompra) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idItemDeCompra,
        upper: idItemDeCompra,
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterWhereClause>
      idItemDeCompraNotEqualTo(Id idItemDeCompra) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: idItemDeCompra, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idItemDeCompra, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idItemDeCompra, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: idItemDeCompra, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterWhereClause>
      idItemDeCompraGreaterThan(Id idItemDeCompra, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idItemDeCompra, includeLower: include),
      );
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterWhereClause>
      idItemDeCompraLessThan(Id idItemDeCompra, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idItemDeCompra, includeUpper: include),
      );
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterWhereClause>
      idItemDeCompraBetween(
    Id lowerIdItemDeCompra,
    Id upperIdItemDeCompra, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdItemDeCompra,
        includeLower: includeLower,
        upper: upperIdItemDeCompra,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ItemDeCompraQueryFilter
    on QueryBuilder<ItemDeCompra, ItemDeCompra, QFilterCondition> {
  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      idItemDeCompraEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idItemDeCompra',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      idItemDeCompraGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idItemDeCompra',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      idItemDeCompraLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idItemDeCompra',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      idItemDeCompraBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idItemDeCompra',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      nomeItemDeCompraEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomeItemDeCompra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      nomeItemDeCompraGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nomeItemDeCompra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      nomeItemDeCompraLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nomeItemDeCompra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      nomeItemDeCompraBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nomeItemDeCompra',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      nomeItemDeCompraStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nomeItemDeCompra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      nomeItemDeCompraEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nomeItemDeCompra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      nomeItemDeCompraContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nomeItemDeCompra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      nomeItemDeCompraMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nomeItemDeCompra',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      nomeItemDeCompraIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomeItemDeCompra',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      nomeItemDeCompraIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nomeItemDeCompra',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      selecionadoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selecionado',
        value: value,
      ));
    });
  }
}

extension ItemDeCompraQueryObject
    on QueryBuilder<ItemDeCompra, ItemDeCompra, QFilterCondition> {}

extension ItemDeCompraQueryLinks
    on QueryBuilder<ItemDeCompra, ItemDeCompra, QFilterCondition> {
  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition> categoria(
      FilterQuery<Categoria> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'categoria');
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterFilterCondition>
      categoriaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'categoria', 0, true, 0, true);
    });
  }
}

extension ItemDeCompraQuerySortBy
    on QueryBuilder<ItemDeCompra, ItemDeCompra, QSortBy> {
  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterSortBy>
      sortByNomeItemDeCompra() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomeItemDeCompra', Sort.asc);
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterSortBy>
      sortByNomeItemDeCompraDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomeItemDeCompra', Sort.desc);
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterSortBy> sortBySelecionado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selecionado', Sort.asc);
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterSortBy>
      sortBySelecionadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selecionado', Sort.desc);
    });
  }
}

extension ItemDeCompraQuerySortThenBy
    on QueryBuilder<ItemDeCompra, ItemDeCompra, QSortThenBy> {
  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterSortBy>
      thenByIdItemDeCompra() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idItemDeCompra', Sort.asc);
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterSortBy>
      thenByIdItemDeCompraDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idItemDeCompra', Sort.desc);
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterSortBy>
      thenByNomeItemDeCompra() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomeItemDeCompra', Sort.asc);
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterSortBy>
      thenByNomeItemDeCompraDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomeItemDeCompra', Sort.desc);
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterSortBy> thenBySelecionado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selecionado', Sort.asc);
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QAfterSortBy>
      thenBySelecionadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selecionado', Sort.desc);
    });
  }
}

extension ItemDeCompraQueryWhereDistinct
    on QueryBuilder<ItemDeCompra, ItemDeCompra, QDistinct> {
  QueryBuilder<ItemDeCompra, ItemDeCompra, QDistinct>
      distinctByNomeItemDeCompra({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nomeItemDeCompra',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemDeCompra, ItemDeCompra, QDistinct> distinctBySelecionado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selecionado');
    });
  }
}

extension ItemDeCompraQueryProperty
    on QueryBuilder<ItemDeCompra, ItemDeCompra, QQueryProperty> {
  QueryBuilder<ItemDeCompra, int, QQueryOperations> idItemDeCompraProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idItemDeCompra');
    });
  }

  QueryBuilder<ItemDeCompra, String, QQueryOperations>
      nomeItemDeCompraProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nomeItemDeCompra');
    });
  }

  QueryBuilder<ItemDeCompra, bool, QQueryOperations> selecionadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selecionado');
    });
  }
}
