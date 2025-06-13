import 'package:food_delivery/data/models/food_model/food_model.dart';
import 'package:food_delivery/domain/entity/food/delete_food_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delete_food_model.g.dart';

@JsonSerializable()
class DeleteFoodModel extends DeleteFoodEntity {
  @JsonKey(name: 'data')
  final FoodModel foodModel;

  const DeleteFoodModel({
    required this.foodModel,
  }) : super(food: foodModel);

  factory DeleteFoodModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteFoodModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteFoodModelToJson(this);
}