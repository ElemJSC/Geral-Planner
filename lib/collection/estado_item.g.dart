// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estado_item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEstadoItemCollection on Isar {
  IsarCollection<EstadoItem> get estadoItems => this.collection();
}

const EstadoItemSchema = CollectionSchema(
  name: r'EstadoItem',
  id: -806896838710871132,
  properties: {
    r'comprado': PropertySchema(
      id: 0,
      name: r'comprado',
      type: IsarType.bool,
    ),
    r'marca': PropertySchema(
      id: 1,
      name: r'marca',
      type: IsarType.string,
    ),
    r'preco': PropertySchema(
      id: 2,
      name: r'preco',
      type: IsarType.double,
    ),
    r'qtdvolume': PropertySchema(
      id: 3,
      name: r'qtdvolume',
      type: IsarType.double,
    ),
    r'quantidade': PropertySchema(
      id: 4,
      name: r'quantidade',
      type: IsarType.long,
    ),
    r'selecionado': PropertySchema(
      id: 5,
      name: r'selecionado',
      type: IsarType.bool,
    ),
    r'volume': PropertySchema(
      id: 6,
      name: r'volume',
      type: IsarType.string,
    )
  },
  estimateSize: _estadoItemEstimateSize,
  serialize: _estadoItemSerialize,
  deserialize: _estadoItemDeserialize,
  deserializeProp: _estadoItemDeserializeProp,
  idName: r'idEstadoItem',
  indexes: {},
  links: {
    r'listaDeCompras': LinkSchema(
      id: 6698061900470092342,
      name: r'listaDeCompras',
      target: r'ListaCompras',
      single: true,
    ),
    r'itemDeCompra': LinkSchema(
      id: 6312882184260367311,
      name: r'itemDeCompra',
      target: r'ItemDeCompra',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _estadoItemGetId,
  getLinks: _estadoItemGetLinks,
  attach: _estadoItemAttach,
  version: '3.1.0+1',
);

int _estadoItemEstimateSize(
  EstadoItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.marca;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.volume;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _estadoItemSerialize(
  EstadoItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.comprado);
  writer.writeString(offsets[1], object.marca);
  writer.writeDouble(offsets[2], object.preco);
  writer.writeDouble(offsets[3], object.qtdvolume);
  writer.writeLong(offsets[4], object.quantidade);
  writer.writeBool(offsets[5], object.selecionado);
  writer.writeString(offsets[6], object.volume);
}

EstadoItem _estadoItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EstadoItem();
  object.comprado = reader.readBool(offsets[0]);
  object.idEstadoItem = id;
  object.marca = reader.readStringOrNull(offsets[1]);
  object.preco = reader.readDoubleOrNull(offsets[2]);
  object.qtdvolume = reader.readDoubleOrNull(offsets[3]);
  object.quantidade = reader.readLong(offsets[4]);
  object.selecionado = reader.readBool(offsets[5]);
  object.volume = reader.readStringOrNull(offsets[6]);
  return object;
}

P _estadoItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _estadoItemGetId(EstadoItem object) {
  return object.idEstadoItem;
}

List<IsarLinkBase<dynamic>> _estadoItemGetLinks(EstadoItem object) {
  return [object.listaDeCompras, object.itemDeCompra];
}

void _estadoItemAttach(IsarCollection<dynamic> col, Id id, EstadoItem object) {
  object.idEstadoItem = id;
  object.listaDeCompras
      .attach(col, col.isar.collection<ListaCompras>(), r'listaDeCompras', id);
  object.itemDeCompra
      .attach(col, col.isar.collection<ItemDeCompra>(), r'itemDeCompra', id);
}

extension EstadoItemQueryWhereSort
    on QueryBuilder<EstadoItem, EstadoItem, QWhere> {
  QueryBuilder<EstadoItem, EstadoItem, QAfterWhere> anyIdEstadoItem() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EstadoItemQueryWhere
    on QueryBuilder<EstadoItem, EstadoItem, QWhereClause> {
  QueryBuilder<EstadoItem, EstadoItem, QAfterWhereClause> idEstadoItemEqualTo(
      Id idEstadoItem) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idEstadoItem,
        upper: idEstadoItem,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterWhereClause>
      idEstadoItemNotEqualTo(Id idEstadoItem) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idEstadoItem, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idEstadoItem, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idEstadoItem, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idEstadoItem, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterWhereClause>
      idEstadoItemGreaterThan(Id idEstadoItem, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idEstadoItem, includeLower: include),
      );
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterWhereClause> idEstadoItemLessThan(
      Id idEstadoItem,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idEstadoItem, includeUpper: include),
      );
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterWhereClause> idEstadoItemBetween(
    Id lowerIdEstadoItem,
    Id upperIdEstadoItem, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdEstadoItem,
        includeLower: includeLower,
        upper: upperIdEstadoItem,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EstadoItemQueryFilter
    on QueryBuilder<EstadoItem, EstadoItem, QFilterCondition> {
  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> compradoEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comprado',
        value: value,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      idEstadoItemEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idEstadoItem',
        value: value,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      idEstadoItemGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idEstadoItem',
        value: value,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      idEstadoItemLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idEstadoItem',
        value: value,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      idEstadoItemBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idEstadoItem',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> marcaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'marca',
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> marcaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'marca',
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> marcaEqualTo(
    String? value, {
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> marcaGreaterThan(
    String? value, {
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> marcaLessThan(
    String? value, {
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> marcaBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> marcaStartsWith(
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> marcaEndsWith(
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> marcaContains(
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> marcaMatches(
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> marcaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marca',
        value: '',
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      marcaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'marca',
        value: '',
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> precoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'preco',
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> precoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'preco',
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> precoEqualTo(
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> precoGreaterThan(
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> precoLessThan(
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> precoBetween(
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      qtdvolumeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qtdvolume',
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      qtdvolumeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qtdvolume',
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> qtdvolumeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qtdvolume',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      qtdvolumeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qtdvolume',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> qtdvolumeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qtdvolume',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> qtdvolumeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qtdvolume',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> quantidadeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantidade',
        value: value,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      quantidadeGreaterThan(
    int value, {
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      quantidadeLessThan(
    int value, {
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> quantidadeBetween(
    int lower,
    int upper, {
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

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      selecionadoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selecionado',
        value: value,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> volumeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'volume',
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      volumeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'volume',
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> volumeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'volume',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> volumeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'volume',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> volumeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'volume',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> volumeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'volume',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> volumeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'volume',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> volumeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'volume',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> volumeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'volume',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> volumeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'volume',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> volumeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'volume',
        value: '',
      ));
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      volumeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'volume',
        value: '',
      ));
    });
  }
}

extension EstadoItemQueryObject
    on QueryBuilder<EstadoItem, EstadoItem, QFilterCondition> {}

extension EstadoItemQueryLinks
    on QueryBuilder<EstadoItem, EstadoItem, QFilterCondition> {
  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> listaDeCompras(
      FilterQuery<ListaCompras> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'listaDeCompras');
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      listaDeComprasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'listaDeCompras', 0, true, 0, true);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition> itemDeCompra(
      FilterQuery<ItemDeCompra> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'itemDeCompra');
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterFilterCondition>
      itemDeCompraIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'itemDeCompra', 0, true, 0, true);
    });
  }
}

extension EstadoItemQuerySortBy
    on QueryBuilder<EstadoItem, EstadoItem, QSortBy> {
  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortByComprado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comprado', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortByCompradoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comprado', Sort.desc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortByMarca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortByMarcaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.desc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortByPreco() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preco', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortByPrecoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preco', Sort.desc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortByQtdvolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qtdvolume', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortByQtdvolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qtdvolume', Sort.desc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortByQuantidade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantidade', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortByQuantidadeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantidade', Sort.desc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortBySelecionado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selecionado', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortBySelecionadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selecionado', Sort.desc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortByVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volume', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> sortByVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volume', Sort.desc);
    });
  }
}

extension EstadoItemQuerySortThenBy
    on QueryBuilder<EstadoItem, EstadoItem, QSortThenBy> {
  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByComprado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comprado', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByCompradoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comprado', Sort.desc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByIdEstadoItem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idEstadoItem', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByIdEstadoItemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idEstadoItem', Sort.desc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByMarca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByMarcaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marca', Sort.desc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByPreco() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preco', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByPrecoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preco', Sort.desc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByQtdvolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qtdvolume', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByQtdvolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qtdvolume', Sort.desc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByQuantidade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantidade', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByQuantidadeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantidade', Sort.desc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenBySelecionado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selecionado', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenBySelecionadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selecionado', Sort.desc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volume', Sort.asc);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QAfterSortBy> thenByVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volume', Sort.desc);
    });
  }
}

extension EstadoItemQueryWhereDistinct
    on QueryBuilder<EstadoItem, EstadoItem, QDistinct> {
  QueryBuilder<EstadoItem, EstadoItem, QDistinct> distinctByComprado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'comprado');
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QDistinct> distinctByMarca(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marca', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QDistinct> distinctByPreco() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preco');
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QDistinct> distinctByQtdvolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'qtdvolume');
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QDistinct> distinctByQuantidade() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantidade');
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QDistinct> distinctBySelecionado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selecionado');
    });
  }

  QueryBuilder<EstadoItem, EstadoItem, QDistinct> distinctByVolume(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'volume', caseSensitive: caseSensitive);
    });
  }
}

extension EstadoItemQueryProperty
    on QueryBuilder<EstadoItem, EstadoItem, QQueryProperty> {
  QueryBuilder<EstadoItem, int, QQueryOperations> idEstadoItemProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idEstadoItem');
    });
  }

  QueryBuilder<EstadoItem, bool, QQueryOperations> compradoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'comprado');
    });
  }

  QueryBuilder<EstadoItem, String?, QQueryOperations> marcaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marca');
    });
  }

  QueryBuilder<EstadoItem, double?, QQueryOperations> precoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preco');
    });
  }

  QueryBuilder<EstadoItem, double?, QQueryOperations> qtdvolumeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'qtdvolume');
    });
  }

  QueryBuilder<EstadoItem, int, QQueryOperations> quantidadeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantidade');
    });
  }

  QueryBuilder<EstadoItem, bool, QQueryOperations> selecionadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selecionado');
    });
  }

  QueryBuilder<EstadoItem, String?, QQueryOperations> volumeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'volume');
    });
  }
}
