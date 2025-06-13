import 'package:food_delivery/domain/entity/restaurant_entity/restaurant_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurant_model.g.dart';

@JsonSerializable()
class RestaurantModel extends RestaurantEntity {
  const RestaurantModel({
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
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantModelToJson(this);

  // Helper methods for UI compatibility
  bool get isFreeDelivery => freeDelivery ?? false;
  double get numericRating => rating ?? 0.0;
  String get ratingString => rating?.toString() ?? '0.0';
  String get deliveryFee => freeDelivery == true
      ? 'Free'
      : 'LKR ${deliveryCost?.toStringAsFixed(2) ?? '0.00'}';
  String get deliveryTime => '${avgPrepareTime ?? 0} min';
  String get category => cuisine?.join(' • ') ?? '';
  String get imagePath => image ?? '';
}