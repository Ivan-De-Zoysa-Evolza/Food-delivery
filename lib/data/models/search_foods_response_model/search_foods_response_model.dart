import 'package:food_delivery/data/models/food_model/food_model.dart';
import 'package:food_delivery/domain/entity/food/search_foods_response_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_foods_response_model.g.dart';

@JsonSerializable()
class SearchFoodsResponseModel extends SearchFoodsResponseEntity {
  @JsonKey(name: 'data')
  final List<FoodModel> foodModels;

  const SearchFoodsResponseModel({
    required this.foodModels,
    required super.totalCount,
    required super.totalPages,
    required super.currentPage,
    required super.limit,
  }) : super(foods: foodModels);

  factory SearchFoodsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchFoodsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchFoodsResponseModelToJson(this);
}