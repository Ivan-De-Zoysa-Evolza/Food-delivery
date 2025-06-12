import 'package:food_delivery/domain/entity/restaurant_entity/delete_restaurant_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delete_restaurant_model.g.dart';

@JsonSerializable()
class DeleteRestaurantModel extends DeleteRestaurantEntity {
  const DeleteRestaurantModel({
    super.id,
    super.name,
    @JsonKey(name: 'is_active') super.isActive,
    super.deleted,
    super.success,
    super.message,
    @JsonKey(name: 'deleted_at') super.deletedAt,
    @JsonKey(name: 'updated_at') super.updatedAt,
  });

  factory DeleteRestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteRestaurantModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteRestaurantModelToJson(this);
}