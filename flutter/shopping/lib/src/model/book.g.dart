// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) {
  return Book(
      id: json['_id'] as String,
      title: json['title'] as String,
      intro: json['intro'] as String,
      isbn13: json['isbn13'] as String,
      isbn10: json['isbn10'] as String,
      price: json['price'] as int,
      publishDt: json['publishDt'] as String,
      publisher: json['publisher'] as String,
      author: json['author'] as String,
      thumbnail: json['thumbnail'] as String,
      createdDate: json['createdDate'] as String)
    ..pLogo = _$enumDecodeNullable(_$LOGOEnumMap, json['pLogo']);
}

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'intro': instance.intro,
      'isbn13': instance.isbn13,
      'isbn10': instance.isbn10,
      'price': instance.price,
      'publishDt': instance.publishDt,
      'publisher': instance.publisher,
      'author': instance.author,
      'thumbnail': instance.thumbnail,
      'createdDate': instance.createdDate,
      'pLogo': _$LOGOEnumMap[instance.pLogo]
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$LOGOEnumMap = <LOGO, dynamic>{
  LOGO.HANBIT: 'HANBIT',
  LOGO.WIKIBOOKS: 'WIKIBOOKS'
};
