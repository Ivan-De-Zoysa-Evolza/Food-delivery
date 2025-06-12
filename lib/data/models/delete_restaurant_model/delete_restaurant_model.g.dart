// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteRestaurantModel _$DeleteRestaurantModelFromJson(
  Map<String, dynamic> json,
) => DeleteRestaurantModel(
  id: json['id'] as String?,
  name: json['name'] as String?,
  isActive: json['isActive'] as bool?,
  deleted: json['deleted'] as bool?,
  success: json['success'] as bool?,
  message: json['message'] as String?,
  deletedAt:
      json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$DeleteRestaurantModelToJson(
  DeleteRestaurantModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'isActive': instance.isActive,
  'deleted': instance.deleted,
  'success': instance.success,
  'message': instance.message,
  'deletedAt': instance.deletedAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
