import 'package:json_annotation/json_annotation.dart';
import 'package:food_delivery/domain/entity/food/size_entity.dart';

part 'size_model.g.dart';

@JsonSerializable()
class SizeModel extends SizeEntity {
  const SizeModel({
    super.name,
    super.price,
  });

  factory SizeModel.fromJson(Map<String, dynamic> json) =>
      _$SizeModelFromJson(json);

  Map<String, dynamic> toJson() => _$SizeModelToJson(this);
}