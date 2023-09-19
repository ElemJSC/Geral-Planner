// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetItemCollection on Isar {
  IsarCollection<Item> get items => this.collection();
}

const ItemSchema = CollectionSchema(
  name: r'Item',
  id: 7900997316587104717,
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
    r'marca': PropertySchema(
      id: 2,
      name: r'marca',
      type: IsarType.string,
    ),
    r'nome': PropertySchema(
      id: 3,
      name: r'nome',
      type: IsarType.string,
    ),
    r'preco': PropertySchema(
      id: 4,
      name: r'preco',
      type: IsarType.double,
    ),
    r'quantidade': PropertySchema(
      id: 5,
      name: r'quantidade',
      type: IsarType.long,
    )
  },
  estimateSize: _itemEstimateSize,
  serialize: _itemSerialize,
  deserialize: _itemDeserialize,
  deserializeProp: _itemDeserializeProp,
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
  links: {},
  embeddedSchemas: {},
  getId: _itemGetId,
  getLinks: _itemGetLinks,
  attach: _itemAttach,
  version: '3.1.0+1',
);

int _itemEstimateSize(
  Item object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.categoria.length * 3;
  bytesCount += 3 + object.marca.length * 3;
  bytesCount += 3 + object.nome.length * 3;
  return bytesCount;
}

void _itemSerialize(
  Item object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.categoria);
  writer.writeBool(offsets[1], object.foiComprado);
  writer.writeString(offsets[2], object.marca);
  writer.writeString(offsets[3], object.nome);
  writer.writeDouble(offsets[4], object.preco);
  writer.writeLong(offsets[5], object.quantidade);
}

Item _itemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Item(
    categoria: reader.readString(offsets[0]),
    foiComprado: reader.readBool(offsets[1]),
    marca: reader.readString(offsets[2]),
    nome: reader.readString(offsets[3]),
    preco: reader.readDoubleOrNull(offsets[4]),
    quantidade: reader.readLongOrNull(offsets[5]),
  );
  object.id = id;
  return object;
}

P _itemDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _itemGetId(Item object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _itemGetLinks(Item object) {
  return [];
}

void _itemAttach(IsarCollection<dynamic> col, Id id, Item object) {
  object.id = id;
}

extension ItemQueryWhereSort on QueryBuilder<Item, Item, QWhere> {
  QueryBuilder<Item, Item, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Item, Item, QAfterWhere> anyPreco() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'preco'),
      );
    });
  }
}

extension ItemQueryWhere on QueryBuilder<Item, Item, QWhereClause> {
  QueryBuilder<Item, Item, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Item, Item, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idBetween(
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

  QueryBuilder<Item, Item, QAfterWhereClause> precoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'preco',
        value: [null],
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> precoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'preco',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> precoEqualTo(double? preco) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'preco',
        value: [preco],
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> precoNotEqualTo(double? preco) {
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

  QueryBuilder<Item, Item, QAfterWhereClause> precoGreaterThan(
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

  QueryBuilder<Item, Item, QAfterWhereClause> precoLessThan(
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

  QueryBuilder<Item, Item, QAfterWhereClause> precoBetween(
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

extension ItemQueryFilter on QueryBuilder<Item, Item, QFilterCondition> {
  QueryBuilder<Item, Item, QAfterFilterCondition> categoriaEqualTo(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> categoriaGreaterThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> categoriaLessThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> categoriaBetween(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> categoriaStartsWith(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> categoriaEndsWith(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> categoriaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoria',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> categoriaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoria',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> categoriaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoria',
        value: '',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> categoriaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoria',
        value: '',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> foiCompradoEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'foiComprado',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> marcaEqualTo(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> marcaGreaterThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> marcaLessThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> marcaBetween(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> marcaStartsWith(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> marcaEndsWith(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> marcaContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'marca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> marcaMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'marca',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> marcaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marca',
        value: '',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> marcaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'marca',
        value: '',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nomeEqualTo(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nomeGreaterThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nomeLessThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nomeBetween(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nomeStartsWith(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nomeEndsWith(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nomeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nome',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nomeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nome',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nomeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nome',
        value: '',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nomeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nome',
        value: '',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> precoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'preco',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> precoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'preco',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> precoEqualTo(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> precoGreaterThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> precoLessThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> precoBetween(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> quantidadeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantidade',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> quantidadeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantidade',
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> quantidadeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantidade',
        value: value,
      ));
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> quantidadeGreaterThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> quantidadeLessThan(
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

  QueryBuilder<Item, Item, QAfterFilterCondition> quantidadeBetween(
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

extension ItemQueryObject on QueryBuilder<Item, Item, QFilterCondition> {}

extension ItemQueryLinks on QueryBuilder<Item, Item, QFilterCondition> {}

extension ItemQuerySortBy on QueryBuilder<Item, Item, QSortBy> {
  QueryBuilder<Item, Item, QAfterSortBy> sortByCategoria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByCategoriaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByFoiComprado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foiComprado', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByFoiCompradoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foiComprado', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByMarca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByMarcaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByNome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByNomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByPreco() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preco', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByPrecoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preco', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByQuantidade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantidade', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByQuantidadeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantidade', Sort.desc);
    });
  }
}

extension ItemQuerySortThenBy on QueryBuilder<Item, Item, QSortThenBy> {
  QueryBuilder<Item, Item, QAfterSortBy> thenByCategoria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByCategoriaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoria', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByFoiComprado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foiComprado', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByFoiCompradoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foiComprado', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByMarca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByMarcaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByNome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByNomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByPreco() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preco', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByPrecoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preco', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByQuantidade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantidade', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByQuantidadeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantidade', Sort.desc);
    });
  }
}

extension ItemQueryWhereDistinct on QueryBuilder<Item, Item, QDistinct> {
  QueryBuilder<Item, Item, QDistinct> distinctByCategoria(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoria', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByFoiComprado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'foiComprado');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByMarca(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marca', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByNome(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nome', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByPreco() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preco');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByQuantidade() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantidade');
    });
  }
}

extension ItemQueryProperty on QueryBuilder<Item, Item, QQueryProperty> {
  QueryBuilder<Item, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Item, String, QQueryOperations> categoriaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoria');
    });
  }

  QueryBuilder<Item, bool, QQueryOperations> foiCompradoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'foiComprado');
    });
  }

  QueryBuilder<Item, String, QQueryOperations> marcaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marca');
    });
  }

  QueryBuilder<Item, String, QQueryOperations> nomeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nome');
    });
  }

  QueryBuilder<Item, double?, QQueryOperations> precoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preco');
    });
  }

  QueryBuilder<Item, int?, QQueryOperations> quantidadeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantidade');
    });
  }
}
