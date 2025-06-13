import 'package:food_delivery/domain/entity/food/get_foods_by_restaurant_entity.dart';
import 'package:food_delivery/domain/entity/food/food_entity.dart';
import 'package:food_delivery/data/models/food_model/food_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_foods_by_restaurant_model.g.dart';

@JsonSerializable()
class GetFoodsByRestaurantModel extends GetFoodsByRestaurantEntity {
  const GetFoodsByRestaurantModel({
    required super.restaurantId,
    super.page,
    super.limit,
    super.category,
    super.search,
    super.sort,
  });

  factory GetFoodsByRestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$GetFoodsByRestaurantModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetFoodsByRestaurantModelToJson(this);

  // Helper method to build the API endpoint URL
  String buildEndpoint(String baseUrl) {
    return '$baseUrl/api/v1/foods/restaurant/$restaurantId';
  }

  // Helper method to convert to query parameters
  Map<String, dynamic> toQueryParams() {
    final params = <String, dynamic>{};

    if (page != null) params['page'] = page.toString();
    if (limit != null) params['limit'] = limit.toString();
    if (category != null && category!.isNotEmpty) params['category'] = category;
    if (search != null && search!.isNotEmpty) params['search'] = search;
    if (sort != null && sort!.isNotEmpty) params['sort'] = sort;

    return params;
  }

  // Helper method to validate restaurant ID
  bool isValidRestaurantId() {
    return restaurantId.isNotEmpty && restaurantId.trim().isNotEmpty;
  }

  // Helper method to check if a FoodEntity matches the search criteria for this restaurant
  bool matchesCriteria(FoodEntity food) {
    // Check if food belongs to this restaurant
    if (food.restaurant_id != restaurantId) return false;

    // Search in food names
    if (search != null && search!.isNotEmpty) {
      final searchLower = search!.toLowerCase();
      final nameMatch = food.name?.toLowerCase().contains(searchLower) ?? false;
      if (!nameMatch) return false;
    }

    // Category filter
    if (category != null && category!.isNotEmpty) {
      if (food.category?.toLowerCase() != category!.toLowerCase()) return false;
    }

    return true;
  }

  // Helper method to sort foods based on sort parameter
  List<FoodEntity> sortFoods(List<FoodEntity> foods) {
    if (sort == null || sort!.isEmpty) return foods;

    final sortedFoods = List<FoodEntity>.from(foods);

    switch (sort!.toLowerCase()) {
      case 'rating':
        sortedFoods.sort((a, b) => (b.rating ?? 0).compareTo(a.rating ?? 0));
        break;
      case 'price':
        sortedFoods.sort((a, b) => (a.base_price ?? 0).compareTo(b.base_price ?? 0));
        break;
      case 'name':
        sortedFoods.sort((a, b) => (a.name ?? '').compareTo(b.name ?? ''));
        break;
      default: // default - no sorting applied
        break;
    }

    return sortedFoods;
  }

  // Helper method to create a copy with different parameters
  GetFoodsByRestaurantModel copyWith({
    String? restaurantId,
    int? page,
    int? limit,
    String? category,
    String? search,
    String? sort,
  }) {
    return GetFoodsByRestaurantModel(
      restaurantId: restaurantId ?? this.restaurantId,
      page: page ?? this.page,
      limit: limit ?? this.limit,
      category: category ?? this.category,
      search: search ?? this.search,
      sort: sort ?? this.sort,
    );
  }
}