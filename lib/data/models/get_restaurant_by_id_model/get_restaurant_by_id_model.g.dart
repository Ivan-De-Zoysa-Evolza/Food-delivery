// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant_by_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantByIdModel _$GetRestaurantByIdModelFromJson(
  Map<String, dynamic> json,
) => GetRestaurantByIdModel(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  address: json['address'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  openingTime: json['openingTime'] as String?,
  closingTime: json['closingTime'] as String?,
  rating: (json['rating'] as num?)?.toDouble(),
  ratingCount: (json['ratingCount'] as num?)?.toInt(),
  avgPrepareTime: (json['avgPrepareTime'] as num?)?.toInt(),
  deliveryCost: (json['deliveryCost'] as num?)?.toDouble(),
  freeDelivery: json['freeDelivery'] as bool?,
  minOrderAmount: (json['minOrderAmount'] as num?)?.toDouble(),
  cuisine:
      (json['cuisine'] as List<dynamic>?)?.map((e) => e as String).toList(),
  image: json['image'] as String?,
  isActive: json['isActive'] as bool?,
  isOpen: json['isOpen'] as bool?,
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
  ownerId: json['ownerId'] as String?,
  menuCategories:
      (json['menuCategories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  totalFoodItems: (json['totalFoodItems'] as num?)?.toInt(),
  averageRating: (json['averageRating'] as num?)?.toDouble(),
);

Map<String, dynamic> _$GetRestaurantByIdModelToJson(
  GetRestaurantByIdModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'address': instance.address,
  'phone': instance.phone,
  'email': instance.email,
  'openingTime': instance.openingTime,
  'closingTime': instance.closingTime,
  'rating': instance.rating,
  'ratingCount': instance.ratingCount,
  'avgPrepareTime': instance.avgPrepareTime,
  'deliveryCost': instance.deliveryCost,
  'freeDelivery': instance.freeDelivery,
  'minOrderAmount': instance.minOrderAmount,
  'cuisine': instance.cuisine,
  'image': instance.image,
  'isActive': instance.isActive,
  'isOpen': instance.isOpen,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'ownerId': instance.ownerId,
  'menuCategories': instance.menuCategories,
  'totalFoodItems': instance.totalFoodItems,
  'averageRating': instance.averageRating,
};
