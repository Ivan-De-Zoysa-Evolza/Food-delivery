import 'package:food_delivery/domain/entity/restaurant_entity/get_restaurant_statistics_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_restaurant_statistics_model.g.dart';

@JsonSerializable()
class GetRestaurantStatsModel extends GetRestaurantStatsEntity {
  const GetRestaurantStatsModel({
    @JsonKey(name: 'restaurant_id') super.restaurantId,
    @JsonKey(name: 'restaurant_name') super.restaurantName,
    @JsonKey(name: 'total_food_items') super.totalFoodItems,
    @JsonKey(name: 'active_food_items') super.activeFoodItems,
    @JsonKey(name: 'inactive_food_items') super.inactiveFoodItems,
    @JsonKey(name: 'average_price') super.averagePrice,
    @JsonKey(name: 'min_price') super.minPrice,
    @JsonKey(name: 'max_price') super.maxPrice,
    @JsonKey(name: 'average_rating') super.averageRating,
    @JsonKey(name: 'total_ratings') super.totalRatings,
    @JsonKey(name: 'total_orders') super.totalOrders,
    @JsonKey(name: 'total_revenue') super.totalRevenue,
    @JsonKey(name: 'category_breakdown') super.categoryBreakdown,
    @JsonKey(name: 'price_range_breakdown') super.priceRangeBreakdown,
    @JsonKey(name: 'rating_distribution') super.ratingDistribution,
    @JsonKey(name: 'avg_prep_time') super.avgPrepTime,
    @JsonKey(name: 'popularity_score') super.popularityScore,
    @JsonKey(name: 'last_updated') super.lastUpdated,
  });

  factory GetRestaurantStatsModel.fromJson(Map<String, dynamic> json) =>
      _$GetRestaurantStatsModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetRestaurantStatsModelToJson(this);
}