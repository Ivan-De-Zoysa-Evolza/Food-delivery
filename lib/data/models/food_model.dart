import 'package:food_delivery/domain/entity/food/food_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:food_delivery/data/models/size_model.dart';

part 'food_model.g.dart';

@JsonSerializable()
class FoodModel extends FoodEntity {
  @override
  final List<SizeModel>? sizes;

  const FoodModel({
    super.restaurant_id,
    super.name,
    super.description,
    super.base_price,
    this.sizes,
    super.category,
    super.ingredients,
    super.images,
    super.is_vegetarian,
    super.is_vegan,
    super.spice,
    super.prep_time,
    super.calories,
    super.tags,
    super.rating,
    super.rating_count,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) =>
      _$FoodModelFromJson(json);

  Map<String, dynamic> toJson() => _$FoodModelToJson(this);
}