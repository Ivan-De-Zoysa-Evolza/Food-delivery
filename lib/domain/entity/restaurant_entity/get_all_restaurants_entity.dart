import 'package:food_delivery/domain/entity/restaurant_entity/restaurant_entity.dart';

class GetAllRestaurantsEntity {
  final List<RestaurantEntity> restaurants;
  final int totalCount;
  final int totalPages;
  final int currentPage;
  final int limit;

  const GetAllRestaurantsEntity({
    required this.restaurants,
    required this.totalCount,
    required this.totalPages,
    required this.currentPage,
    required this.limit,
  });
}