// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_restaurants_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllRestaurantsModel _$GetAllRestaurantsModelFromJson(
  Map<String, dynamic> json,
) => GetAllRestaurantsModel(
  restaurantModels:
      (json['data'] as List<dynamic>)
          .map((e) => RestaurantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  totalCount: (json['totalCount'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  currentPage: (json['currentPage'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$GetAllRestaurantsModelToJson(
  GetAllRestaurantsModel instance,
) => <String, dynamic>{
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'currentPage': instance.currentPage,
  'limit': instance.limit,
  'data': instance.restaurantModels,
};
