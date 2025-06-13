// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_update_food_availability_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkUpdateFoodAvailabilityModel _$BulkUpdateFoodAvailabilityModelFromJson(
  Map<String, dynamic> json,
) => BulkUpdateFoodAvailabilityModel(
  foodIds: (json['food_ids'] as List<dynamic>).map((e) => e as String).toList(),
  available: json['available'] as bool,
);

Map<String, dynamic> _$BulkUpdateFoodAvailabilityModelToJson(
  BulkUpdateFoodAvailabilityModel instance,
) => <String, dynamic>{
  'food_ids': instance.foodIds,
  'available': instance.available,
};
