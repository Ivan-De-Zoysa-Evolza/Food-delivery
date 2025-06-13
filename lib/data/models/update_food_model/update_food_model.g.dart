// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateFoodModel _$UpdateFoodModelFromJson(Map<String, dynamic> json) =>
    UpdateFoodModel(
      foodId: json['foodId'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      base_price: (json['base_price'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      rating_count: (json['rating_count'] as num?)?.toInt(),
      prep_time: (json['prep_time'] as num?)?.toInt(),
      calories: (json['calories'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UpdateFoodModelToJson(UpdateFoodModel instance) =>
    <String, dynamic>{
      'foodId': instance.foodId,
      'name': instance.name,
      'description': instance.description,
      'base_price': instance.base_price,
      'rating': instance.rating,
      'rating_count': instance.rating_count,
      'prep_time': instance.prep_time,
      'calories': instance.calories,
    };
