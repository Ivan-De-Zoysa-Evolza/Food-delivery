// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteRestaurantModel _$DeleteRestaurantModelFromJson(
  Map<String, dynamic> json,
) => DeleteRestaurantModel(
  restaurantModel: RestaurantModel.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$DeleteRestaurantModelToJson(
  DeleteRestaurantModel instance,
) => <String, dynamic>{'data': instance.restaurantModel};
