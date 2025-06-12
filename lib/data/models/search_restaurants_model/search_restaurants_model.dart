import 'package:food_delivery/domain/entity/restaurant_entity/search_restaurants_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_restaurants_model.g.dart';

@JsonSerializable()
class SearchRestaurantsModel extends SearchRestaurantsEntity {
  const SearchRestaurantsModel({
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
    super.page,
    super.limit,
    super.sort,
    super.search,
    @JsonKey(name: 'min_rating') super.minRating,
    @JsonKey(name: 'max_delivery_time') super.maxDeliveryTime,
    @JsonKey(name: 'free_delivery') super.freeDeliveryFilter,
    @JsonKey(name: 'is_open') super.isOpenFilter,
    @JsonKey(name: 'total_count') super.totalCount,
    @JsonKey(name: 'total_pages') super.totalPages,
  });

  factory SearchRestaurantsModel.fromJson(Map<String, dynamic> json) =>
      _$SearchRestaurantsModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchRestaurantsModelToJson(this);
}