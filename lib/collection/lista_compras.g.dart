// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_compras.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetListaComprasCollection on Isar {
  IsarCollection<ListaCompras> get listaCompras => this.collection();
}

const ListaComprasSchema = CollectionSchema(
  name: r'ListaCompras',
  id: 2590343015619942668,
  properties: {
    r'dataCriacao': PropertySchema(
      id: 0,
      name: r'dataCriacao',
      type: IsarType.dateTime,
    ),
    r'nomeLista': PropertySchema(
      id: 1,
      name: r'nomeLista',
      type: IsarType.string,
    )
  },
  estimateSize: _listaComprasEstimateSize,
  serialize: _listaComprasSerialize,
  deserialize: _listaComprasDeserialize,
  deserializeProp: _listaComprasDeserializeProp,
  idName: r'idLista',
  indexes: {},
  links: {
    r'items': LinkSchema(
      id: -5206361668996251504,
      name: r'items',
      target: r'ItemDeCompra',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _listaComprasGetId,
  getLinks: _listaComprasGetLinks,
  attach: _listaComprasAttach,
  version: '3.1.0+1',
);

int _listaComprasEstimateSize(
  ListaCompras object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.nomeLista.length * 3;
  return bytesCount;
}

void _listaComprasSerialize(
  ListaCompras object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dataCriacao);
  writer.writeString(offsets[1], object.nomeLista);
}

ListaCompras _listaComprasDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ListaCompras();
  object.dataCriacao = reader.readDateTime(offsets[0]);
  object.idLista = id;
  object.nomeLista = reader.readString(offsets[1]);
  return object;
}

P _listaComprasDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _listaComprasGetId(ListaCompras object) {
  return object.idLista;
}

List<IsarLinkBase<dynamic>> _listaComprasGetLinks(ListaCompras object) {
  return [object.items];
}

void _listaComprasAttach(
    IsarCollection<dynamic> col, Id id, ListaCompras object) {
  object.idLista = id;
  object.items.attach(col, col.isar.collection<ItemDeCompra>(), r'items', id);
}

extension ListaComprasQueryWhereSort
    on QueryBuilder<ListaCompras, ListaCompras, QWhere> {
  QueryBuilder<ListaCompras, ListaCompras, QAfterWhere> anyIdLista() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ListaComprasQueryWhere
    on QueryBuilder<ListaCompras, ListaCompras, QWhereClause> {
  QueryBuilder<ListaCompras, ListaCompras, QAfterWhereClause> idListaEqualTo(
      Id idLista) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idLista,
        upper: idLista,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterWhereClause> idListaNotEqualTo(
      Id idLista) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idLista, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idLista, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idLista, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idLista, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterWhereClause>
      idListaGreaterThan(Id idLista, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idLista, includeLower: include),
      );
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterWhereClause> idListaLessThan(
      Id idLista,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idLista, includeUpper: include),
      );
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterWhereClause> idListaBetween(
    Id lowerIdLista,
    Id upperIdLista, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdLista,
        includeLower: includeLower,
        upper: upperIdLista,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ListaComprasQueryFilter
    on QueryBuilder<ListaCompras, ListaCompras, QFilterCondition> {
  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      dataCriacaoEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataCriacao',
        value: value,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      dataCriacaoGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataCriacao',
        value: value,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      dataCriacaoLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataCriacao',
        value: value,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      dataCriacaoBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataCriacao',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      idListaEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idLista',
        value: value,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      idListaGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idLista',
        value: value,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      idListaLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idLista',
        value: value,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      idListaBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idLista',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      nomeListaEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomeLista',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      nomeListaGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nomeLista',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      nomeListaLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nomeLista',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      nomeListaBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nomeLista',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      nomeListaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nomeLista',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      nomeListaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nomeLista',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      nomeListaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nomeLista',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      nomeListaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nomeLista',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      nomeListaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomeLista',
        value: '',
      ));
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      nomeListaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nomeLista',
        value: '',
      ));
    });
  }
}

extension ListaComprasQueryObject
    on QueryBuilder<ListaCompras, ListaCompras, QFilterCondition> {}

extension ListaComprasQueryLinks
    on QueryBuilder<ListaCompras, ListaCompras, QFilterCondition> {
  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition> items(
      FilterQuery<ItemDeCompra> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'items');
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      itemsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'items', length, true, length, true);
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      itemsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'items', 0, true, 0, true);
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      itemsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'items', 0, false, 999999, true);
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      itemsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'items', 0, true, length, include);
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      itemsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'items', length, include, 999999, true);
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterFilterCondition>
      itemsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'items', lower, includeLower, upper, includeUpper);
    });
  }
}

extension ListaComprasQuerySortBy
    on QueryBuilder<ListaCompras, ListaCompras, QSortBy> {
  QueryBuilder<ListaCompras, ListaCompras, QAfterSortBy> sortByDataCriacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataCriacao', Sort.asc);
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterSortBy>
      sortByDataCriacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataCriacao', Sort.desc);
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterSortBy> sortByNomeLista() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomeLista', Sort.asc);
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterSortBy> sortByNomeListaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomeLista', Sort.desc);
    });
  }
}

extension ListaComprasQuerySortThenBy
    on QueryBuilder<ListaCompras, ListaCompras, QSortThenBy> {
  QueryBuilder<ListaCompras, ListaCompras, QAfterSortBy> thenByDataCriacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataCriacao', Sort.asc);
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterSortBy>
      thenByDataCriacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataCriacao', Sort.desc);
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterSortBy> thenByIdLista() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idLista', Sort.asc);
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterSortBy> thenByIdListaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idLista', Sort.desc);
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterSortBy> thenByNomeLista() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomeLista', Sort.asc);
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QAfterSortBy> thenByNomeListaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomeLista', Sort.desc);
    });
  }
}

extension ListaComprasQueryWhereDistinct
    on QueryBuilder<ListaCompras, ListaCompras, QDistinct> {
  QueryBuilder<ListaCompras, ListaCompras, QDistinct> distinctByDataCriacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dataCriacao');
    });
  }

  QueryBuilder<ListaCompras, ListaCompras, QDistinct> distinctByNomeLista(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nomeLista', caseSensitive: caseSensitive);
    });
  }
}

extension ListaComprasQueryProperty
    on QueryBuilder<ListaCompras, ListaCompras, QQueryProperty> {
  QueryBuilder<ListaCompras, int, QQueryOperations> idListaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idLista');
    });
  }

  QueryBuilder<ListaCompras, DateTime, QQueryOperations> dataCriacaoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataCriacao');
    });
  }

  QueryBuilder<ListaCompras, String, QQueryOperations> nomeListaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nomeLista');
    });
  }
}
