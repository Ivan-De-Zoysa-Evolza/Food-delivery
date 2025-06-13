import 'package:food_delivery/domain/entity/food/food_entity.dart';

class DeleteFoodEntity {
  final FoodEntity food;

  const DeleteFoodEntity({
    required this.food,
  });
}