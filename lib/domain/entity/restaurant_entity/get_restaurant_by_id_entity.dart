import 'package:food_delivery/domain/entity/restaurant_entity/restaurant_entity.dart';

class GetRestaurantByIdEntity {
  final RestaurantEntity restaurant;

  const GetRestaurantByIdEntity({
    required this.restaurant,
  });
}