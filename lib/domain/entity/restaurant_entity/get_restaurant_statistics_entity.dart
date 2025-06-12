import 'package:equatable/equatable.dart';

class GetRestaurantStatsEntity extends Equatable {
  final String? restaurantId;
  final String? restaurantName;
  final int? totalFoodItems;
  final int? activeFoodItems;
  final int? inactiveFoodItems;
  final double? averagePrice;
  final double? minPrice;
  final double? maxPrice;
  final double? averageRating;
  final int? totalRatings;
  final int? totalOrders;
  final double? totalRevenue;
  final Map<String, int>? categoryBreakdown;
  final Map<String, int>? priceRangeBreakdown;
  final Map<String, double>? ratingDistribution;
  final int? avgPrepTime;
  final double? popularityScore;
  final DateTime? lastUpdated;

  const GetRestaurantStatsEntity({
    this.restaurantId,
    this.restaurantName,
    this.totalFoodItems,
    this.activeFoodItems,
    this.inactiveFoodItems,
    this.averagePrice,
    this.minPrice,
    this.maxPrice,
    this.averageRating,
    this.totalRatings,
    this.totalOrders,
    this.totalRevenue,
    this.categoryBreakdown,
    this.priceRangeBreakdown,
    this.ratingDistribution,
    this.avgPrepTime,
    this.popularityScore,
    this.lastUpdated,
  });

  @override
  List<Object?> get props {
    return [
      restaurantId,
      restaurantName,
      totalFoodItems,
      activeFoodItems,
      inactiveFoodItems,
      averagePrice,
      minPrice,
      maxPrice,
      averageRating,
      totalRatings,
      totalOrders,
      totalRevenue,
      categoryBreakdown,
      priceRangeBreakdown,
      ratingDistribution,
      avgPrepTime,
      popularityScore,
      lastUpdated,
    ];
  }
}