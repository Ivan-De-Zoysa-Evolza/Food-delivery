// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_foods_by_restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFoodsByRestaurantModel _$GetFoodsByRestaurantModelFromJson(
  Map<String, dynamic> json,
) => GetFoodsByRestaurantModel(
  restaurantId: json['restaurantId'] as String,
  page: (json['page'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  category: json['category'] as String?,
  search: json['search'] as String?,
  sort: json['sort'] as String?,
);

Map<String, dynamic> _$GetFoodsByRestaurantModelToJson(
  GetFoodsByRestaurantModel instance,
) => <String, dynamic>{
  'restaurantId': instance.restaurantId,
  'page': instance.page,
  'limit': instance.limit,
  'category': instance.category,
  'search': instance.search,
  'sort': instance.sort,
};
