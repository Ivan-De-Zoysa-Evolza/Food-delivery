// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_restaurants_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRestaurantsModel _$SearchRestaurantsModelFromJson(
  Map<String, dynamic> json,
) => SearchRestaurantsModel(
  restaurantModels:
      (json['data'] as List<dynamic>)
          .map((e) => RestaurantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  totalCount: (json['totalCount'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  currentPage: (json['currentPage'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$SearchRestaurantsModelToJson(
  SearchRestaurantsModel instance,
) => <String, dynamic>{
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'currentPage': instance.currentPage,
  'limit': instance.limit,
  'data': instance.restaurantModels,
};
