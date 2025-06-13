import 'package:food_delivery/domain/entity/food/update_food_entity.dart';
import 'package:food_delivery/domain/entity/food/food_entity.dart';
import 'package:food_delivery/data/models/food_model/food_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_food_model.g.dart';

@JsonSerializable()
class UpdateFoodModel extends UpdateFoodEntity {
  const UpdateFoodModel({
    required super.foodId,
    super.name,
    super.description,
    super.base_price,
    super.rating,
    super.rating_count,
    super.prep_time,
    super.calories,
  });

  factory UpdateFoodModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateFoodModelFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateFoodModelToJson(this);

  // Helper method to build the API endpoint URL
  String buildEndpoint(String baseUrl) {
    return '$baseUrl/api/v1/foods/$foodId';
  }

  // Helper method to convert to JSON body (excluding foodId)
  Map<String, dynamic> toJsonBody() {
    final json = <String, dynamic>{};

    if (name != null) json['name'] = name;
    if (description != null) json['description'] = description;
    if (base_price != null) json['base_price'] = base_price;
    if (rating != null) json['rating'] = rating;
    if (rating_count != null) json['rating_count'] = rating_count;
    if (prep_time != null) json['prep_time'] = prep_time;
    if (calories != null) json['calories'] = calories;

    return json;
  }

  // Helper method to validate food ID
  bool isValidFoodId() {
    return foodId.isNotEmpty && foodId.trim().isNotEmpty;
  }

  // Helper method to check if there are any fields to update
  bool hasUpdates() {
    return name != null ||
        description != null ||
        base_price != null ||
        rating != null ||
        rating_count != null ||
        prep_time != null ||
        calories != null;
  }

  // Helper method to create UpdateFoodModel from existing FoodEntity
  static UpdateFoodModel fromFoodEntity(String foodId, FoodEntity food) {
    return UpdateFoodModel(
      foodId: foodId,
      name: food.name,
      description: food.description,
      base_price: food.base_price,
      rating: food.rating,
      rating_count: food.rating_count,
      prep_time: food.prep_time,
      calories: food.calories,
    );
  }

  // Helper method to apply updates to a FoodEntity
  FoodEntity applyToFoodEntity(FoodEntity originalFood) {
    return FoodEntity(
      restaurant_id: originalFood.restaurant_id,
      name: name ?? originalFood.name,
      description: description ?? originalFood.description,
      base_price: base_price ?? originalFood.base_price,
      sizes: originalFood.sizes,
      category: originalFood.category,
      ingredients: originalFood.ingredients,
      images: originalFood.images,
      is_vegetarian: originalFood.is_vegetarian,
      is_vegan: originalFood.is_vegan,
      spice: originalFood.spice,
      prep_time: prep_time ?? originalFood.prep_time,
      calories: calories ?? originalFood.calories,
      tags: originalFood.tags,
      rating: rating ?? originalFood.rating,
      rating_count: rating_count ?? originalFood.rating_count,
    );
  }

  // Helper method to create a copy with different parameters
  UpdateFoodModel copyWith({
    String? foodId,
    String? name,
    String? description,
    double? base_price,
    double? rating,
    int? rating_count,
    int? prep_time,
    int? calories,
  }) {
    return UpdateFoodModel(
      foodId: foodId ?? this.foodId,
      name: name ?? this.name,
      description: description ?? this.description,
      base_price: base_price ?? this.base_price,
      rating: rating ?? this.rating,
      rating_count: rating_count ?? this.rating_count,
      prep_time: prep_time ?? this.prep_time,
      calories: calories ?? this.calories,
    );
  }
}