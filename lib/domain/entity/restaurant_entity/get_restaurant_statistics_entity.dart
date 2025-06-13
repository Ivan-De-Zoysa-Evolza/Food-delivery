import 'package:food_delivery/domain/entity/restaurant_entity/restaurant_entity.dart';

class GetRestaurantStatsEntity {
  final RestaurantEntity restaurant;

  const GetRestaurantStatsEntity({
    required this.restaurant,
  });
}