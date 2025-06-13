import 'package:food_delivery/data/models/restaurant_model/restaurant_model.dart';
import 'package:food_delivery/domain/entity/restaurant_entity/get_all_restaurants_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_restaurants_model.g.dart';

@JsonSerializable()
class GetAllRestaurantsModel extends GetAllRestaurantsEntity {
  @JsonKey(name: 'data')
  final List<RestaurantModel> restaurantModels;

  const GetAllRestaurantsModel({
    required this.restaurantModels,
    required super.totalCount,
    required super.totalPages,
    required super.currentPage,
    required super.limit,
  }) : super(restaurants: restaurantModels);

  factory GetAllRestaurantsModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllRestaurantsModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllRestaurantsModelToJson(this);
}