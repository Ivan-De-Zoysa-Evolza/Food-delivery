// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateRestaurantModel _$UpdateRestaurantModelFromJson(
  Map<String, dynamic> json,
) => UpdateRestaurantModel(
  restaurantModel: RestaurantModel.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$UpdateRestaurantModelToJson(
  UpdateRestaurantModel instance,
) => <String, dynamic>{'data': instance.restaurantModel};
