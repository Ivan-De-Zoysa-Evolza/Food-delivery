// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_foods_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFoodsModel _$GetFoodsModelFromJson(Map<String, dynamic> json) =>
    GetFoodsModel(
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      sort: json['sort'] as String?,
      search: json['search'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$GetFoodsModelToJson(GetFoodsModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'sort': instance.sort,
      'search': instance.search,
      'category': instance.category,
    };
