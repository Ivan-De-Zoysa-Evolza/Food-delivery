import 'package:food_delivery/domain/entity/restaurant_entity/get_all_restaurants_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_restaurants_model.g.dart';

@JsonSerializable()
class GetAllRestaurantsModel extends GetAllRestaurantsEntity {
  const GetAllRestaurantsModel({
    super.id,
    super.name,
    super.description,
    super.address,
    super.phone,
    super.email,
    super.openingTime,
    super.closingTime,
    super.rating,
    super.ratingCount,
    super.avgPrepareTime,
    super.deliveryCost,
    super.freeDelivery,
    super.minOrderAmount,
    super.cuisine,
    super.image,
    super.isActive,
    super.isOpen,
    super.createdAt,
    super.updatedAt,
    super.page,
    super.limit,
    super.sort,
    super.search,
    super.category,
    super.totalCount,
    super.totalPages,
  });

  factory GetAllRestaurantsModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllRestaurantsModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllRestaurantsModelToJson(this);
}