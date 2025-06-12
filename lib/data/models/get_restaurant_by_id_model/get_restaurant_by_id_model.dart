import 'package:food_delivery/domain/entity/restaurant_entity/get_restaurant_by_id_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_restaurant_by_id_model.g.dart';

@JsonSerializable()
class GetRestaurantByIdModel extends GetRestaurantByIdEntity {
  const GetRestaurantByIdModel({
    super.id,
    super.name,
    super.description,
    super.address,
    super.phone,
    super.email,
    @JsonKey(name: 'opening_time') super.openingTime,
    @JsonKey(name: 'closing_time') super.closingTime,
    super.rating,
    @JsonKey(name: 'rating_count') super.ratingCount,
    @JsonKey(name: 'avg_prepare_time') super.avgPrepareTime,
    @JsonKey(name: 'delivery_cost') super.deliveryCost,
    @JsonKey(name: 'free_delivery') super.freeDelivery,
    @JsonKey(name: 'min_order_amount') super.minOrderAmount,
    super.cuisine,
    super.image,
    @JsonKey(name: 'is_active') super.isActive,
    @JsonKey(name: 'is_open') super.isOpen,
    @JsonKey(name: 'created_at') super.createdAt,
    @JsonKey(name: 'updated_at') super.updatedAt,
    @JsonKey(name: 'owner_id') super.ownerId,
    @JsonKey(name: 'menu_categories') super.menuCategories,
    @JsonKey(name: 'total_food_items') super.totalFoodItems,
    @JsonKey(name: 'average_rating') super.averageRating,
  });

  factory GetRestaurantByIdModel.fromJson(Map<String, dynamic> json) =>
      _$GetRestaurantByIdModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetRestaurantByIdModelToJson(this);
}