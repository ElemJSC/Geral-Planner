// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetShoppingItemCollection on Isar {
  IsarCollection<ShoppingItem> get shoppingItems => this.collection();
}

const ShoppingItemSchema = CollectionSchema(
  name: r'ShoppingItem',
  id: 8757760147473695853,
  properties: {
    r'categoria': PropertySchema(
      id: 0,
      name: r'categoria',
      type: IsarType.string,
    ),
    r'foiComprado': PropertySchema(
      id: 1,
      name: r'foiComprado',
      type: IsarType.bool,
    ),
    r'isSelected': PropertySchema(
      id: 2,
      name: r'isSelected',
      type: IsarType.bool,
    ),
    r'marca': PropertySchema(
      id: 3,
      name: r'marca',
      type: IsarType.string,
    ),
    r'nome': PropertySchema(
      id: 4,
      name: r'nome',
      type: IsarType.string,
    ),
    r'preco': PropertySchema(
      id: 5,
      name: r'preco',
      type: IsarType.double,
    ),
    r'quantidade': PropertySchema(
      id: 6,
      name: r'quantidade',
      type: IsarType.long,
    )
  },
  estimateSize: _shoppingItemEstimateSize,
  serialize: _shoppingItemSerialize,
  deserialize: _shoppingItemDeserialize,
  deserializeProp: _shoppingItemDeserializeProp,
  idName: r'id',
  indexes: {
    r'preco': IndexSchema(
      id: 8299394230406407735,
      name: r'preco',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'preco',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'shoppinglist': LinkSchema(
      id: -6248704258348505109,
      name: r'shoppinglist',
      target: r'ShoppingList',
      single: false,
      linkName: r'shoppingItem',
    )
  },
  embeddedSchemas: {},
  getId: _shoppingItemGetId,
  getLinks: _shoppingItemGetLinks,
  attach: _shoppingItemAttach,
  version: '3.1.0+1',
);

int _shoppingItemEstimateSize(
  ShoppingItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.categoria.length * 3;
  bytesCount += 3 + object.marca.length * 3;
  bytesCount += 3 + object.nome.length * 3;
  return bytesCount;
}

void _shoppingItemSerialize(
  ShoppingItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.categoria);
  writer.writeBool(offsets[1], object.foiComprado);
  writer.writeBool(offsets[2], object.isSelected);
  writer.writeString(offsets[3], object.marca);
  writer.writeString(offsets[4], object.nome);
  writer.writeDouble(offsets[5], object.preco);
  writer.writeLong(offsets[6], object.quantidade);
}

ShoppingItem _shoppingItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ShoppingItem(
    categoria: reader.readString(offsets[0]),
    foiComprado: reader.readBool(offsets[1]),
    marca: reader.readString(offsets[3]),
    nome: reader.readString(offsets[4]),
    preco: reader.readDoubleOrNull(offsets[5]),
    quantidade: reader.readLongOrNull(offsets[6]),
  );
  object.id = id;
  object.isSelected = reader.readBool(offsets[2]);
  return object;
}

P _shoppingItemDeserializeProp<P>(
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
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _shoppingItemGetId(ShoppingItem object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _shoppingItemGetLinks(ShoppingItem object) {
  return [object.shoppinglist];
}

void _shoppingItemAttach(
    IsarCollection<dynamic> col, Id id, ShoppingItem object) {
  object.id = id;
  object.shoppinglist
      .attach(col, col.isar.collection<ShoppingList>(), r'shoppinglist', id);
}

extension ShoppingItemQueryWhereSort
    on QueryBuilder<ShoppingItem, ShoppingItem, QWhere> {
  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhere> anyPreco() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'preco'),
      );
    });
  }
}

extension ShoppingItemQueryWhere
    on QueryBuilder<ShoppingItem, ShoppingItem, QWhereClause> {
  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhereClause> idBetween(
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

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhereClause> precoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'preco',
        value: [null],
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhereClause> precoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'preco',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhereClause> precoEqualTo(
      double? preco) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'preco',
        value: [preco],
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhereClause> precoNotEqualTo(
      double? preco) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'preco',
              lower: [],
              upper: [preco],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'preco',
              lower: [preco],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'preco',
              lower: [preco],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'preco',
              lower: [],
              upper: [preco],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhereClause> precoGreaterThan(
    double? preco, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'preco',
        lower: [preco],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhereClause> precoLessThan(
    double? preco, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'preco',
        lower: [],
        upper: [preco],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterWhereClause> precoBetween(
    double? lowerPreco,
    double? upperPreco, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'preco',
        lower: [lowerPreco],
        includeLower: includeLower,
        upper: [upperPreco],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ShoppingItemQueryFilter
    on QueryBuilder<ShoppingItem, ShoppingItem, QFilterCondition> {
  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      categoriaEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      categoriaGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      categoriaLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      categoriaBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoria',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      categoriaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      categoriaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      categoriaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      categoriaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoria',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      categoriaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoria',
        value: '',
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      categoriaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoria',
        value: '',
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      foiCompradoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'foiComprado',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      isSelectedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSelected',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> marcaEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      marcaGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> marcaLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> marcaBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'marca',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      marcaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> marcaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> marcaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> marcaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'marca',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      marcaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marca',
        value: '',
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      marcaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'marca',
        value: '',
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> nomeEqualTo(
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

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
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

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> nomeLessThan(
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

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> nomeBetween(
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

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
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

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> nomeEndsWith(
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

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> nomeContains(
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

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> nomeMatches(
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

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      nomeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nome',
        value: '',
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      nomeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nome',
        value: '',
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      precoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'preco',
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      precoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'preco',
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> precoEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preco',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      precoGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'preco',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> precoLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'preco',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> precoBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'preco',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      quantidadeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantidade',
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      quantidadeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantidade',
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      quantidadeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantidade',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      quantidadeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantidade',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      quantidadeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantidade',
        value: value,
      ));
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      quantidadeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantidade',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ShoppingItemQueryObject
    on QueryBuilder<ShoppingItem, ShoppingItem, QFilterCondition> {}

extension ShoppingItemQueryLinks
    on QueryBuilder<ShoppingItem, ShoppingItem, QFilterCondition> {
  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition> shoppinglist(
      FilterQuery<ShoppingList> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'shoppinglist');
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      shoppinglistLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'shoppinglist', length, true, length, true);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      shoppinglistIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'shoppinglist', 0, true, 0, true);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      shoppinglistIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'shoppinglist', 0, false, 999999, true);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      shoppinglistLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'shoppinglist', 0, true, length, include);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      shoppinglistLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'shoppinglist', length, include, 999999, true);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterFilterCondition>
      shoppinglistLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'shoppinglist', lower, includeLower, upper, includeUpper);
    });
  }
}

extension ShoppingItemQuerySortBy
    on QueryBuilder<ShoppingItem, ShoppingItem, QSortBy> {
  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> sortByCategoria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> sortByCategoriaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.desc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> sortByFoiComprado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foiComprado', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy>
      sortByFoiCompradoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foiComprado', Sort.desc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> sortByIsSelected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSelected', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy>
      sortByIsSelectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSelected', Sort.desc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> sortByMarca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> sortByMarcaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.desc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> sortByNome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> sortByNomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.desc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> sortByPreco() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preco', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> sortByPrecoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preco', Sort.desc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> sortByQuantidade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantidade', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy>
      sortByQuantidadeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantidade', Sort.desc);
    });
  }
}

extension ShoppingItemQuerySortThenBy
    on QueryBuilder<ShoppingItem, ShoppingItem, QSortThenBy> {
  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> thenByCategoria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> thenByCategoriaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.desc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> thenByFoiComprado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foiComprado', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy>
      thenByFoiCompradoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foiComprado', Sort.desc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> thenByIsSelected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSelected', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy>
      thenByIsSelectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSelected', Sort.desc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> thenByMarca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> thenByMarcaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.desc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> thenByNome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> thenByNomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.desc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> thenByPreco() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preco', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> thenByPrecoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preco', Sort.desc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy> thenByQuantidade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantidade', Sort.asc);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QAfterSortBy>
      thenByQuantidadeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantidade', Sort.desc);
    });
  }
}

extension ShoppingItemQueryWhereDistinct
    on QueryBuilder<ShoppingItem, ShoppingItem, QDistinct> {
  QueryBuilder<ShoppingItem, ShoppingItem, QDistinct> distinctByCategoria(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoria', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QDistinct> distinctByFoiComprado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'foiComprado');
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QDistinct> distinctByIsSelected() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSelected');
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QDistinct> distinctByMarca(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marca', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QDistinct> distinctByNome(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nome', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QDistinct> distinctByPreco() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preco');
    });
  }

  QueryBuilder<ShoppingItem, ShoppingItem, QDistinct> distinctByQuantidade() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantidade');
    });
  }
}

extension ShoppingItemQueryProperty
    on QueryBuilder<ShoppingItem, ShoppingItem, QQueryProperty> {
  QueryBuilder<ShoppingItem, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ShoppingItem, String, QQueryOperations> categoriaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoria');
    });
  }

  QueryBuilder<ShoppingItem, bool, QQueryOperations> foiCompradoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'foiComprado');
    });
  }

  QueryBuilder<ShoppingItem, bool, QQueryOperations> isSelectedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSelected');
    });
  }

  QueryBuilder<ShoppingItem, String, QQueryOperations> marcaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marca');
    });
  }

  QueryBuilder<ShoppingItem, String, QQueryOperations> nomeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nome');
    });
  }

  QueryBuilder<ShoppingItem, double?, QQueryOperations> precoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preco');
    });
  }

  QueryBuilder<ShoppingItem, int?, QQueryOperations> quantidadeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantidade');
    });
  }
}
