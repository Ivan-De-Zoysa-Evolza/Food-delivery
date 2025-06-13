import 'package:food_delivery/domain/entity/food/get_popular_foods_entity.dart';
import 'package:food_delivery/domain/entity/food/food_entity.dart';
import 'package:food_delivery/data/models/food_model/food_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_popular_foods_model.g.dart';

@JsonSerializable()
class GetPopularFoodsModel extends GetPopularFoodsEntity {
  const GetPopularFoodsModel({
    super.page,
    super.limit,
  });

  factory GetPopularFoodsModel.fromJson(Map<String, dynamic> json) =>
      _$GetPopularFoodsModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetPopularFoodsModelToJson(this);

  // Helper method to convert to query parameters
  Map<String, dynamic> toQueryParams() {
    final params = <String, dynamic>{};

    if (page != null) params['page'] = page.toString();
    if (limit != null) params['limit'] = limit.toString();

    return params;
  }

  // Helper method to check if a food is considered popular
  // This could be based on rating, rating_count, or other criteria
  bool isPopular(FoodEntity food) {
    // Example criteria for popular foods:
    // - High rating (4.0 or above)
    // - Good number of ratings (10 or more)
    final hasGoodRating = (food.rating ?? 0) >= 4.0;
    final hasEnoughRatings = (food.rating_count ?? 0) >= 10;

    return hasGoodRating && hasEnoughRatings;
  }

  // Helper method to sort foods by popularity
  List<FoodEntity> sortByPopularity(List<FoodEntity> foods) {
    final sortedFoods = List<FoodEntity>.from(foods);

    // Sort by rating first, then by rating count
    sortedFoods.sort((a, b) {
      final ratingA = a.rating ?? 0;
      final ratingB = b.rating ?? 0;
      final ratingCountA = a.rating_count ?? 0;
      final ratingCountB = b.rating_count ?? 0;

      // Primary sort: by rating (descending)
      final ratingComparison = ratingB.compareTo(ratingA);
      if (ratingComparison != 0) return ratingComparison;

      // Secondary sort: by rating count (descending)
      return ratingCountB.compareTo(ratingCountA);
    });

    return sortedFoods;
  }
}