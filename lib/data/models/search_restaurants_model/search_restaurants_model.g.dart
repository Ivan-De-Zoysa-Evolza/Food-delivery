// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_restaurants_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRestaurantsModel _$SearchRestaurantsModelFromJson(
  Map<String, dynamic> json,
) => SearchRestaurantsModel(
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
  page: (json['page'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  sort: json['sort'] as String?,
  search: json['search'] as String?,
  minRating: (json['minRating'] as num?)?.toDouble(),
  maxDeliveryTime: (json['maxDeliveryTime'] as num?)?.toInt(),
  freeDeliveryFilter: json['freeDeliveryFilter'] as bool?,
  isOpenFilter: json['isOpenFilter'] as bool?,
  totalCount: (json['totalCount'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
);

Map<String, dynamic> _$SearchRestaurantsModelToJson(
  SearchRestaurantsModel instance,
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
  'page': instance.page,
  'limit': instance.limit,
  'sort': instance.sort,
  'search': instance.search,
  'minRating': instance.minRating,
  'maxDeliveryTime': instance.maxDeliveryTime,
  'freeDeliveryFilter': instance.freeDeliveryFilter,
  'isOpenFilter': instance.isOpenFilter,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
