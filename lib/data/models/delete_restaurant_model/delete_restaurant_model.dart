import 'package:food_delivery/data/models/restaurant_model/restaurant_model.dart';
import 'package:food_delivery/domain/entity/restaurant_entity/delete_restaurant_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delete_restaurant_model.g.dart';

@JsonSerializable()
class DeleteRestaurantModel extends DeleteRestaurantEntity {
  @JsonKey(name: 'data')
  final RestaurantModel restaurantModel;

  const DeleteRestaurantModel({
    required this.restaurantModel,
  }) : super(restaurant: restaurantModel);

  factory DeleteRestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteRestaurantModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteRestaurantModelToJson(this);
}