import 'package:food_delivery/domain/entity/food/get_food_by_id_entity.dart';
import 'package:food_delivery/domain/entity/food/food_entity.dart';
import 'package:food_delivery/data/models/food_model/food_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_food_by_id_model.g.dart';

@JsonSerializable()
class GetFoodByIdModel extends GetFoodByIdEntity {
  const GetFoodByIdModel({
    required super.foodId,
  });

  factory GetFoodByIdModel.fromJson(Map<String, dynamic> json) =>
      _$GetFoodByIdModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetFoodByIdModelToJson(this);

  // Helper method to build the API endpoint URL
  String buildEndpoint(String baseUrl) {
    return '$baseUrl/api/v1/foods/$foodId';
  }

  // Helper method to validate food ID
  bool isValidFoodId() {
    return foodId.isNotEmpty && foodId.trim().isNotEmpty;
  }

  // Helper method to check if this request matches a specific food
  bool matchesFood(FoodEntity food, String? foodEntityId) {
    return foodEntityId == foodId;
  }

  // Helper method to create a copy with different food ID
  GetFoodByIdModel copyWith({
    String? foodId,
  }) {
    return GetFoodByIdModel(
      foodId: foodId ?? this.foodId,
    );
  }
}