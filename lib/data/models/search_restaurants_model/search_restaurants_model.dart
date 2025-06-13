import 'package:food_delivery/data/models/restaurant_model/restaurant_model.dart';
import 'package:food_delivery/domain/entity/restaurant_entity/search_restaurants_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_restaurants_model.g.dart';

@JsonSerializable()
class SearchRestaurantsModel extends SearchRestaurantsEntity {
  @JsonKey(name: 'data')
  final List<RestaurantModel> restaurantModels;

  const SearchRestaurantsModel({
    required this.restaurantModels,
    required super.totalCount,
    required super.totalPages,
    required super.currentPage,
    required super.limit,
  }) : super(restaurants: restaurantModels);

  factory SearchRestaurantsModel.fromJson(Map<String, dynamic> json) =>
      _$SearchRestaurantsModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchRestaurantsModelToJson(this);
}