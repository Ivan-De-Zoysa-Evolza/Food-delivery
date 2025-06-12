// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant_statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantStatsModel _$GetRestaurantStatsModelFromJson(
  Map<String, dynamic> json,
) => GetRestaurantStatsModel(
  restaurantId: json['restaurantId'] as String?,
  restaurantName: json['restaurantName'] as String?,
  totalFoodItems: (json['totalFoodItems'] as num?)?.toInt(),
  activeFoodItems: (json['activeFoodItems'] as num?)?.toInt(),
  inactiveFoodItems: (json['inactiveFoodItems'] as num?)?.toInt(),
  averagePrice: (json['averagePrice'] as num?)?.toDouble(),
  minPrice: (json['minPrice'] as num?)?.toDouble(),
  maxPrice: (json['maxPrice'] as num?)?.toDouble(),
  averageRating: (json['averageRating'] as num?)?.toDouble(),
  totalRatings: (json['totalRatings'] as num?)?.toInt(),
  totalOrders: (json['totalOrders'] as num?)?.toInt(),
  totalRevenue: (json['totalRevenue'] as num?)?.toDouble(),
  categoryBreakdown: (json['categoryBreakdown'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toInt()),
  ),
  priceRangeBreakdown: (json['priceRangeBreakdown'] as Map<String, dynamic>?)
      ?.map((k, e) => MapEntry(k, (e as num).toInt())),
  ratingDistribution: (json['ratingDistribution'] as Map<String, dynamic>?)
      ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
  avgPrepTime: (json['avgPrepTime'] as num?)?.toInt(),
  popularityScore: (json['popularityScore'] as num?)?.toDouble(),
  lastUpdated:
      json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
);

Map<String, dynamic> _$GetRestaurantStatsModelToJson(
  GetRestaurantStatsModel instance,
) => <String, dynamic>{
  'restaurantId': instance.restaurantId,
  'restaurantName': instance.restaurantName,
  'totalFoodItems': instance.totalFoodItems,
  'activeFoodItems': instance.activeFoodItems,
  'inactiveFoodItems': instance.inactiveFoodItems,
  'averagePrice': instance.averagePrice,
  'minPrice': instance.minPrice,
  'maxPrice': instance.maxPrice,
  'averageRating': instance.averageRating,
  'totalRatings': instance.totalRatings,
  'totalOrders': instance.totalOrders,
  'totalRevenue': instance.totalRevenue,
  'categoryBreakdown': instance.categoryBreakdown,
  'priceRangeBreakdown': instance.priceRangeBreakdown,
  'ratingDistribution': instance.ratingDistribution,
  'avgPrepTime': instance.avgPrepTime,
  'popularityScore': instance.popularityScore,
  'lastUpdated': instance.lastUpdated?.toIso8601String(),
};
