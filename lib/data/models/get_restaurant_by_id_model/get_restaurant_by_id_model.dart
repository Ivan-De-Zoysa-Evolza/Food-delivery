import 'package:food_delivery/data/models/restaurant_model/restaurant_model.dart';
import 'package:food_delivery/domain/entity/restaurant_entity/get_restaurant_by_id_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_restaurant_by_id_model.g.dart';

@JsonSerializable()
class GetRestaurantByIdModel extends GetRestaurantByIdEntity {
  @JsonKey(name: 'data')
  final RestaurantModel restaurantModel;

  const GetRestaurantByIdModel({
    required this.restaurantModel,
  }) : super(restaurant: restaurantModel);

  factory GetRestaurantByIdModel.fromJson(Map<String, dynamic> json) =>
      _$GetRestaurantByIdModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetRestaurantByIdModelToJson(this);
}