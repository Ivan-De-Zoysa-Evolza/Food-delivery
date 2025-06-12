import 'package:food_delivery/domain/entity/restaurant_entity/update_restaurant_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_restaurant_model.g.dart';

@JsonSerializable()
class UpdateRestaurantModel extends UpdateRestaurantEntity {
  const UpdateRestaurantModel({
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
    @JsonKey(name: 'updated_at') super.updatedAt,
    super.success,
    super.message,
  });

  factory UpdateRestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateRestaurantModelFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateRestaurantModelToJson(this);
}