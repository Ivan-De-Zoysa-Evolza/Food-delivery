import 'package:food_delivery/domain/entity/food/bulk_update_food_availability_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bulk_update_food_availability_model.g.dart';

@JsonSerializable()
class BulkUpdateFoodAvailabilityModel extends BulkUpdateFoodAvailabilityEntity {
  @JsonKey(name: 'food_ids')
  final List<String> foodIds;

  @JsonKey(name: 'available')
  final bool available;

  const BulkUpdateFoodAvailabilityModel({
    required this.foodIds,
    required this.available,
  }) : super(foodIds: foodIds, available: available);

  factory BulkUpdateFoodAvailabilityModel.fromJson(Map<String, dynamic> json) =>
      _$BulkUpdateFoodAvailabilityModelFromJson(json);

  Map<String, dynamic> toJson() => _$BulkUpdateFoodAvailabilityModelToJson(this);
}