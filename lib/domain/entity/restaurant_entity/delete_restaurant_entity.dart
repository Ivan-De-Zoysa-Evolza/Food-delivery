import 'package:food_delivery/domain/entity/restaurant_entity/restaurant_entity.dart';

class DeleteRestaurantEntity {
  final RestaurantEntity restaurant;

  const DeleteRestaurantEntity({
    required this.restaurant,
  });
}