// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant_statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantStatsModel _$GetRestaurantStatsModelFromJson(
  Map<String, dynamic> json,
) => GetRestaurantStatsModel(
  restaurantModel: RestaurantModel.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$GetRestaurantStatsModelToJson(
  GetRestaurantStatsModel instance,
) => <String, dynamic>{'data': instance.restaurantModel};
