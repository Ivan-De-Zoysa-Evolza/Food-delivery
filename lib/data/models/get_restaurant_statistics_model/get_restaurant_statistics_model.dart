import 'package:food_delivery/data/models/restaurant_model/restaurant_model.dart';
import 'package:food_delivery/domain/entity/restaurant_entity/get_restaurant_statistics_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_restaurant_statistics_model.g.dart';

@JsonSerializable()
class GetRestaurantStatsModel extends GetRestaurantStatsEntity {
  @JsonKey(name: 'data')
  final RestaurantModel restaurantModel;

  const GetRestaurantStatsModel({
    required this.restaurantModel,
  }) : super(restaurant: restaurantModel);

  factory GetRestaurantStatsModel.fromJson(Map<String, dynamic> json) =>
      _$GetRestaurantStatsModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetRestaurantStatsModelToJson(this);
}