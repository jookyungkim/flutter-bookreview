// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'naver_book_info_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NaverBookInfoResults _$NaverBookInfoResultsFromJson(
        Map<String, dynamic> json) =>
    NaverBookInfoResults(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => NaverBookInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      display: json['display'] as int?,
      start: json['start'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$NaverBookInfoResultsToJson(
        NaverBookInfoResults instance) =>
    <String, dynamic>{
      'total': instance.total,
      'start': instance.start,
      'display': instance.display,
      'items': instance.items,
    };
