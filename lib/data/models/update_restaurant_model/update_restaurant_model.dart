import 'package:food_delivery/data/models/restaurant_model/restaurant_model.dart';
import 'package:food_delivery/domain/entity/restaurant_entity/update_restaurant_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_restaurant_model.g.dart';

@JsonSerializable()
class UpdateRestaurantModel extends UpdateRestaurantEntity {
  @JsonKey(name: 'data')
  final RestaurantModel restaurantModel;

  const UpdateRestaurantModel({
    required this.restaurantModel,
  }) : super(restaurant: restaurantModel);

  factory UpdateRestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateRestaurantModelFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateRestaurantModelToJson(this);
}