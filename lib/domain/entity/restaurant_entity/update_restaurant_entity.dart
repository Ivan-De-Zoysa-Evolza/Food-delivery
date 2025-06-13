import 'package:food_delivery/domain/entity/restaurant_entity/restaurant_entity.dart';

class UpdateRestaurantEntity {
  final RestaurantEntity restaurant;

  const UpdateRestaurantEntity({
    required this.restaurant,
  });
}