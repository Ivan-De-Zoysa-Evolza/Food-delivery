// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) => FoodModel(
  restaurant_id: json['restaurant_id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  base_price: (json['base_price'] as num?)?.toDouble(),
  sizes:
      (json['sizes'] as List<dynamic>?)
          ?.map((e) => SizeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  category: json['category'] as String?,
  ingredients:
      (json['ingredients'] as List<dynamic>?)?.map((e) => e as String).toList(),
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  is_vegetarian: json['is_vegetarian'] as bool?,
  is_vegan: json['is_vegan'] as bool?,
  spice: json['spice'] as String?,
  prep_time: (json['prep_time'] as num?)?.toInt(),
  calories: (json['calories'] as num?)?.toInt(),
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  rating: (json['rating'] as num?)?.toDouble(),
  rating_count: (json['rating_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$FoodModelToJson(FoodModel instance) => <String, dynamic>{
  'restaurant_id': instance.restaurant_id,
  'name': instance.name,
  'description': instance.description,
  'base_price': instance.base_price,
  'category': instance.category,
  'ingredients': instance.ingredients,
  'images': instance.images,
  'is_vegetarian': instance.is_vegetarian,
  'is_vegan': instance.is_vegan,
  'spice': instance.spice,
  'prep_time': instance.prep_time,
  'calories': instance.calories,
  'tags': instance.tags,
  'rating': instance.rating,
  'rating_count': instance.rating_count,
  'sizes': instance.sizes,
};
