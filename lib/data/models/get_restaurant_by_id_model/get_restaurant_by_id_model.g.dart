// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant_by_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantByIdModel _$GetRestaurantByIdModelFromJson(
  Map<String, dynamic> json,
) => GetRestaurantByIdModel(
  restaurantModel: RestaurantModel.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$GetRestaurantByIdModelToJson(
  GetRestaurantByIdModel instance,
) => <String, dynamic>{'data': instance.restaurantModel};
