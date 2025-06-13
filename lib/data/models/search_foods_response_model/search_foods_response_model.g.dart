// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_foods_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchFoodsResponseModel _$SearchFoodsResponseModelFromJson(
  Map<String, dynamic> json,
) => SearchFoodsResponseModel(
  foodModels:
      (json['data'] as List<dynamic>)
          .map((e) => FoodModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  totalCount: (json['totalCount'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  currentPage: (json['currentPage'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$SearchFoodsResponseModelToJson(
  SearchFoodsResponseModel instance,
) => <String, dynamic>{
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'currentPage': instance.currentPage,
  'limit': instance.limit,
  'data': instance.foodModels,
};
