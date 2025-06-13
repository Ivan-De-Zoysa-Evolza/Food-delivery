// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_popular_foods_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPopularFoodsModel _$GetPopularFoodsModelFromJson(
  Map<String, dynamic> json,
) => GetPopularFoodsModel(
  page: (json['page'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
);

Map<String, dynamic> _$GetPopularFoodsModelToJson(
  GetPopularFoodsModel instance,
) => <String, dynamic>{'page': instance.page, 'limit': instance.limit};
